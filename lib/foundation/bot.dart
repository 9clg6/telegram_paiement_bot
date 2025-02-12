import 'package:firedart/firedart.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/commands.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';
import 'package:telegram_paiement_bot/domain/service/firebase.service.dart';
import 'package:telegram_paiement_bot/domain/service/product.service.dart';
import 'package:telegram_paiement_bot/foundation/env.dart';
import 'package:telegram_paiement_bot/foundation/injection/injector.dart';
import 'package:telegram_paiement_bot/foundation/interface/paiement.interface.dart';
import 'package:telegram_paiement_bot/foundation/middleware/custom.middleware.dart';
import 'package:televerse/televerse.dart';

/// Bot
class TelegramBot {
  /// The bot instance.
  ///
  Bot? bot;

  /// Constructor
  ///
  TelegramBot() {
    _init();
  }

  /// Initialize the bot with the token from the environment variables.
  ///
  void _init() {
    final String tokenString = Env.botToken;
    if (tokenString.isEmpty) {
      throw Exception('TOKEN not found');
    }
    bot = Bot(tokenString);
  }

  /// Start the bot.
  ///
  Future<void> start() async {
    if (bot == null) {
      throw Exception('Bot is not initialized');
    }
    print('🏭 Démarrage du bot...');

    _loadMiddleware();
    _loadErrorHandler();
    await _loadProducts();
    _loadCommands();

    await bot!.start();
  }

  /// Load the commands.
  ///
  void _loadCommands() {
    print('🏭 Chargement des commandes...');

    _registerCreateWalletInnerCommand();
    _registerOrderInnerCommand();
    // _registerFeedWalletInnerCommand();
    _registerSelectCurrencyInnerCommand();
    _registerSelectCurrencyCommand();
    _registerPayCommand();
    _registerProductCommand();
    _registerSelectProductCommand();
    _registerProvideInformationCommand();
    _registerStartCommand();
    _registerProductSelectionCommand();

    print('🏭 Commandes chargées');
  }

  void _registerStartCommand() {
    return bot!.command(
      Commands.start.id,
      (Context ctx) async {
        await ctx.reply("Bienvenue chez ${Env.shopName}");
        final FirebaseService firebaseService = injector.get<FirebaseService>();
        final int userId = (await ctx.getAuthor()).user.id;

        try {
          throw GrpcError.notFound();
          if (await firebaseService.checkIfUserRegistered(userId)) {
            print('🏭 L\'utilisateur est enregistré');

            await ctx.reply(
              "Choisissez une option.",
              replyMarkup: Keyboard()
                  .row()
                  .text(Commands.order.libelle!)
                  .text(Commands.backToMenu.libelle!),
            );
          }
        } on GrpcError catch (e) {
          if (e.codeName == 'NOT_FOUND') {
            print('🏭 L\'utilisateur n\'est pas enregistré');
            await firebaseService.registerUser(userId);

            await ctx.reply(
              "Vous semblez être un nouveau client, voici le fonctionnement :",
            );
            await ctx.reply(
              "📦 1. Vous sélectionnez l'article que vous souhaitez acheter",
            );
            await ctx.reply(
              "💽 2. Vous fournissez les informations nécessaire (numéro de suivi, lieu de départ, label etc.)",
            );
            await ctx.reply(
              "🪙 3. Vous sélectionnez la cryptomonnaie avec laquelle vous souhaitez faire vos achats",
            );
            await ctx.reply(
              "💳 4. Vous payez le montant indiqué via l'adresse UNIQUE qui vous sera indiquée",
              replyMarkup: Keyboard().row().text(
                    Commands.selectProduct.libelle!,
                  ),
            );
          }
        }
      },
    );
  }

  /// Register the provide information command.
  ///
  void _registerProvideInformationCommand() {
    final List<Product> products = injector.get<ProductService>().products;
    for (final Product product in products) {
      if (product.name == null) continue;
      bot!.text(product.name!, (ctx) async {
        await ctx.reply(
          "Vous devez fournir les informations nécessaire (numéro de suivi, lieu de départ, label etc.)",
        );
        await ctx.reply(
          "Veuillez envoyer les informations nécessaires dans le prochain message (un seul message)",
        );

        bot!.onMessage((ctx) async {
          final message = ctx.message;
          if (message == null) return;

          final text = message.text;
          if (text == null) return;
          await ctx.reply("Informations enregistrées.");
          if (message.photo != null && message.photo!.isNotEmpty) {
            await ctx.reply("Image enregistrée.");
          }

          await ctx.reply(
            " Choisissez votre cryptomonnaie pour le paiement:",
            replyMarkup: Keyboard().text(
              Commands.selectCurrency.libelle!,
            ),
          );
        });
      });
    }
  }

  /// Utility method to create a keyboard from products
  ///
  Keyboard _createProductKeyboard(List<Product> products) {
    final Keyboard keyboard = Keyboard();
    for (final Product product in products) {
      if (product.name == null) continue;
      keyboard.row().text(product.name!);
    }

    return keyboard.row()
      ..text(Commands.pay.libelle!)
      ..text(Commands.backToMenu.libelle!);
  }

  /// Register the pay command.
  ///
  void _registerPayCommand() {
    bot!.text(Commands.pay.libelle!, (ctx) async {
      await ctx.reply(
        "Création de la transaction...",
      );
      final ProductService productService = injector.get<ProductService>();
      final PaiementService paiementService = injector.get<PaiementService>();

      final String? payAddress = await paiementService.createPaiement(
        product: productService.selectedProduct!,
        username: (await ctx.getAuthor()).user.username,
      );

      await ctx.reply(
        "Adresse de paiement : $payAddress",
        replyMarkup: Keyboard().row().text(Commands.pay.libelle!),
      );
    });
  }

  /// Register the product selection command.
  ///
  void _registerProductSelectionCommand() {
    final List<Product> products = injector.get<ProductService>().products;
    _registerProductsRecursively(products);
  }

  /// Helper method to register products recursively
  ///
  void _registerProductsRecursively(List<Product> products) {
    for (final Product product in products) {
      if (product.name == null) continue;

      if (product.products != null && product.products!.isNotEmpty) {
        _registerProductsRecursively(product.products!);
      } else {
        bot!.text(product.name!, (ctx) async {
          injector.get<ProductService>().selectedProduct = product;

          await ctx.reply(
            "Vous avez sélectionné le produit ${product.name} pour un montant de ${product.price}€",
            replyMarkup:
                Keyboard().row().text(Commands.selectCurrency.libelle!),
          );
        });
      }
    }
  }

  /// Register the select product command.
  ///
  void _registerSelectProductCommand() {
    bot!.text(Commands.selectProduct.libelle!, (ctx) async {
      final List<Product> products = injector.get<ProductService>().products;

      await ctx.reply(
        "Sélectionnez un produit",
        replyMarkup: _createProductKeyboard(products),
      );
    });
  }

  /// Register the select currency command.
  ///
  void _registerSelectCurrencyCommand() {
    for (final currency in Currency.values) {
      final Commands command = switch (currency) {
        Currency.ltc => Commands.selectCurrencyLTC,
        Currency.xrp => Commands.selectCurrencyXRP,
        Currency.sol => Commands.selectCurrencySOL,
      };

      bot!.text(
        command.libelle!,
        (ctx) async {
          await ctx.reply(
            "Vous pouvez maintenant effectuer votre paiement",
            replyMarkup: Keyboard().row().text(Commands.pay.libelle!),
          );
        },
      );
    }
  }

  /// Register the select currency command.
  ///
  void _registerSelectCurrencyInnerCommand() {
    bot!.text(Commands.selectCurrency.libelle!, (ctx) async {
      await ctx.reply(
        "Sélectionnez la cryptomonnaie avec laquelle vous souhaitez faire vos achats",
        replyMarkup: Keyboard()
            .row()
            .text(Commands.selectCurrencyLTC.libelle!)
            .text(Commands.selectCurrencyXRP.libelle!)
            .text(Commands.selectCurrencySOL.libelle!)
            .text(Commands.backToMenu.libelle!),
      );
    });
  }

  // /// Register the feed wallet command.
  // ///
  // void _registerFeedWalletInnerCommand() {
  //   bot!.text(Commands.feedWallet.libelle!, (ctx) async {
  //     final WalletService walletService = injector.get<WalletService>();
  //     final MinimumAmountEntity? minimumAmount = await injector
  //         .get<NowPaiementsService>()
  //         .getMinimumAmount(walletService.selectedCurrency);

  //     await ctx.reply(
  //         "🪙 Cryptomonnaie sélectionnée : ${walletService.selectedCurrency}");
  //     await ctx.reply("----------------");
  //     await ctx.reply("❗️ MONTANT MINIMUM : $minimumAmount");
  //     await ctx.reply("----------------");
  //     await Future.delayed(const Duration(milliseconds: 500));
  //     await ctx.reply(
  //       "🚀 Adresse du portefeuille :",
  //       replyMarkup: ReplyKeyboardRemove(),
  //     );
  //   });
  // }

  /// Register the create wallet command.
  ///
  void _registerCreateWalletInnerCommand() {
    bot!.text(Commands.createWallet.libelle!, (ctx) async {
      final PaiementService nowPaiementsService =
          injector.get<PaiementService>();

      try {
        await nowPaiementsService.authenticate();
      } on Exception catch (e) {
        await ctx.reply(
          "Erreur lors de la création du portefeuille...",
          replyMarkup: Keyboard().row().text(Commands.createWallet.libelle!),
        );
        print(e);
        return;
      }

      await ctx.reply("Création du portefeuille...");

      //TODO Creation du portefeuille
      //TODO Envoie de l'adresse du portefeuille
      await ctx.reply("✅ Votre portefeuille a été créé avec succès !");
      await ctx.reply(
        "💰 Vous devez maintenant alimenter votre portefeuille",
        replyMarkup: Keyboard().row().text(Commands.feedWallet.libelle!),
      );
    });
  }

  /// Register the order command.
  ///
  void _registerOrderInnerCommand() {
    bot!.text(Commands.order.libelle!, (ctx) async {
      await ctx.reply(
        "Choisissez un produit",
        replyMarkup: Keyboard()
            .row()
            .text(Commands.order.libelle!)
            .text(Commands.backToMenu.libelle!),
      );
    });
  }

  /// Load the middleware.
  ///
  void _loadMiddleware() {
    bot!.use(CustomMiddleware());
  }

  /// Load the error handler.
  ///
  void _loadErrorHandler() {
    bot!.onError((err) {
      print('❌ ------ Erreur: $err');
    });
  }

  /// Load the products.
  ///
  Future<void> _loadProducts() async {
    await injector.get<ProductService>().loadProducts();
  }

  /// Register the product command.
  void _registerProductCommand() {
    final List<Product> products = injector.get<ProductService>().products;

    for (final Product product in products) {
      if (product.name == null) continue;
      bot!.text(product.name!, (ctx) async {
        if (product.products != null && product.products!.isNotEmpty) {
          await ctx.reply(
            "Veuillez sélectionner un produit",
            replyMarkup: _createProductKeyboard(product.products!),
          );
        } else {
          await ctx.reply("Vous avez sélectionné le produit ${product.name}");
        }
      });
    }
  }
}

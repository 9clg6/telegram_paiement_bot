import 'package:firedart/firedart.dart';
import 'package:telegram_paiement_bot/domain/entity/minimum_amount.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/commands.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';
import 'package:telegram_paiement_bot/domain/service/firebase.service.dart';
import 'package:telegram_paiement_bot/domain/service/nowpaiements.service.dart';
import 'package:telegram_paiement_bot/domain/service/wallet.service.dart';
import 'package:telegram_paiement_bot/foundation/env.dart';
import 'package:telegram_paiement_bot/foundation/injection/injector.dart';
import 'package:telegram_paiement_bot/foundation/interface/paiement.interface.dart';
import 'package:telegram_paiement_bot/foundation/middleware/custom.middleware.dart';
import 'package:televerse/telegram.dart';
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
    _loadCommands();

    await bot!.start();
  }

  /// Load the commands.
  ///
  void _loadCommands() {
    print('🏭 Chargement des commandes...');

    _registerCreateWalletInnerCommand();
    _registerOrderInnerCommand();
    _registerFeedWalletInnerCommand();
    _registerSelectCurrencyInnerCommand();
    _registerSelectCurrencyCommand();

    bot!.command(
      Commands.start.id,
      (Context ctx) async {
        await ctx.reply("Bienvenue chez ${Env.shopName}");
        final FirebaseService firebaseService = injector.get<FirebaseService>();
        final int userId = (await ctx.getAuthor()).user.id;

        try {
          ///throw GrpcError.notFound();
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
              "🪙 1. Vous devez sélectionner la crypto que vous souhaitez utiliser",
            );
            await ctx.reply(
              "💰 2. Puis créer votre portefeuille unique en cliquant sur le bouton 'Créer mon portefeuille'",
            );
            await ctx.reply(
              "💳 3. Et enfin alimenter votre portefeuille avec le montant minimum qui vous sera indiqué",
            );
            await ctx.reply(
              "🛒 4. Vous pourrez ensuite commander un produit en cliquant sur le bouton 'Commander'",
              replyMarkup: Keyboard().row().text(
                    Commands.selectCurrency.libelle!,
                  ),
            );
          }
        }
      },
    );

    print('🏭 Commandes chargées');
  }

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
          injector.get<WalletService>().selectCurrency(currency);

          await ctx.reply(
            "Vous pouvez maintenant créer votre portefeuille",
            replyMarkup: Keyboard().row().text(
                  Commands.createWallet.libelle!,
                ),
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

  /// Register the feed wallet command.
  ///
  void _registerFeedWalletInnerCommand() {
    bot!.text(Commands.feedWallet.libelle!, (ctx) async {
      final WalletService walletService = injector.get<WalletService>();
      final MinimumAmountEntity? minimumAmount = await injector
          .get<NowPaiementsService>()
          .getMinimumAmount(walletService.selectedCurrency);

      await ctx.reply(
          "🪙 Cryptomonnaie sélectionnée : ${walletService.selectedCurrency}");
      await ctx.reply("----------------");
      await ctx.reply("❗️ MONTANT MINIMUM : $minimumAmount");
      await ctx.reply("----------------");
      await Future.delayed(const Duration(milliseconds: 500));
      await ctx.reply(
        "🚀 Adresse du portefeuille :",
        replyMarkup: ReplyKeyboardRemove(),
      );
    });
  }

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
}

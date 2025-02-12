import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// Commands enum
enum Commands {
  /// Start command
  ///
  start(
    "start",
    null,
  ),

  /// Order command
  ///
  order(
    "commander",
    "🛒 Commander",
  ),

  /// Select product command
  ///
  selectProduct(
    "selectProduct",
    "🛒 Sélectionner un produit",
  ),

  /// Create wallet command
  ///
  createWallet(
    "createWallet",
    "🛒 Créer mon portefeuille",
  ),

  /// Select currency command
  ///
  selectCurrency(
    "selectCurrency",
    "🪙 Sélectionner ma cryptomonnaie",
  ),

  /// Pay command
  /// 
  pay(
    "pay",
    "💰 Payer",
  ),

  /// Select currency LTC command
  /// 
  selectCurrencyLTC(
    "selectCurrencyLTC",
    "Litecoin (LTC)",
    Currency.ltc,
  ),

  /// Select currency XRP command
  /// 
  selectCurrencyXRP(
    "selectCurrencyXRP",
    "Ripple (XRP)",
    Currency.xrp,
  ),

  /// Select currency SOL command
  /// 
  selectCurrencySOL(
    "selectCurrencySOL",
    "Solana (SOL)",
    Currency.sol,
  ),

  /// Feed wallet command
  /// 
  feedWallet(
    "feedWallet",
    "💰 Alimenter mon portefeuille",
  ),

  /// Back to menu command
  /// 
  backToMenu(
    "retour",
    "🤌 Retour au menu",
  );

  /// Constructor
  /// @param id the id
  /// @param libelle the libelle
  /// @param value the value
  /// 
  const Commands(
    this.id,
    this.libelle, [
    this.value,
  ]);

  /// The id
  final String id;

  /// The libelle
  final String? libelle;

  /// The value
  final dynamic value;
}

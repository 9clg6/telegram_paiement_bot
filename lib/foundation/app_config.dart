import 'package:telegram_paiement_bot/foundation/env.dart';

/// The app config.
class AppConfig {
  /// The paiement api base url.
  final String paiementApiBaseUrl;

  /// The paiement api key.
  final String paiementApiKey;

  /// Constructor of the AppConfig class.
  /// @param paiementApiBaseUrl the base url of the paiement api
  /// @param paiementApiKey the api key of the paiement api
  /// 
  AppConfig({
    required this.paiementApiBaseUrl,
    required this.paiementApiKey,
  });

  // coverage:ignore-start
  /// Create [AppConfig] from environment variables
  /// 
  factory AppConfig.fromEnvironment() {
    return AppConfig(
      paiementApiBaseUrl: 'https://api.nowpayments.io/v1/',
      paiementApiKey: Env.nowPaymentToken,
    );
  }
  // coverage:ignore-end
}

import 'package:telegram_paiement_bot/data/model/local/authentication.local.model.dart';

/// AuthenticationLocalDataSource is an interface that defines the methods that an authentication local datasource must implement.
abstract class AuthenticationLocalDataSource {
  /// Save auth token
  /// @param token The token.
  /// 
  Future<void> saveAuthToken(String token);

  /// Get auth token from local storage
  /// Will return null if auth token doesn't exist in storage
  /// @return The auth token.
  /// 
  Future<AuthenticationLocalModel?> getAuthToken();

  /// Delete auth token from local storage
  /// 
  Future<void> deleteAuthToken();
}

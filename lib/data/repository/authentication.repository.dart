import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';

/// The authentication repository.
abstract class AuthenticationRepository {
  /// Save the auth token.
  /// @param token The token.
  /// 
  Future<void> saveAuthToken(String token);

  /// Get the auth token.
  /// @return The token.
  /// 
  Future<Authentication?> getAuthToken();

  /// Delete the auth token.
  /// 
  Future<void> deleteAuthToken();
}

import 'package:telegram_paiement_bot/data/data_source/local/authentication.local.data_source.dart';
import 'package:telegram_paiement_bot/data/repository/authentication.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';

/// [AuthenticationRepositoryImpl]
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  /// The authentication local data source.
  final AuthenticationLocalDataSource _authenticationLocalDataSource;

  /// Constructor
  /// @param authenticationLocalDataSource The authentication local data source.
  /// 
  AuthenticationRepositoryImpl(this._authenticationLocalDataSource);

  /// Delete the auth token.
  /// 
  @override
  Future<void> deleteAuthToken() {
    return _authenticationLocalDataSource.deleteAuthToken();
  }

  /// Get the auth token.
  /// 
  @override
  Future<Authentication?> getAuthToken() async {
    final authentication = await _authenticationLocalDataSource.getAuthToken();
    if (authentication == null) return null;
    
    return Authentication.fromLocalModel(authentication);
  }

  /// Save the auth token.
  /// @param token The token.
  /// 
  @override
  Future<void> saveAuthToken(String token) {
    return _authenticationLocalDataSource.saveAuthToken(token);
  }
}

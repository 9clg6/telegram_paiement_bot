import 'package:telegram_paiement_bot/data/repository/authentication.repository.dart';

/// The save auth token use case.
/// 
class SaveAuthTokenUseCase {
  /// The auth token repository.
  final AuthenticationRepository _authenticationRepository;

  /// Constructor
  /// @param authenticationRepository The authentication repository.
  /// 
  SaveAuthTokenUseCase(this._authenticationRepository);

  /// Execute the use case.
  /// @param token The token.
  /// @return The authentication.
  /// 
  Future<void> execute(String token) async {
    await _authenticationRepository.saveAuthToken(token);
  }
}

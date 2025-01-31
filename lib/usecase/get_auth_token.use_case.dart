import 'package:telegram_paiement_bot/data/repository/authentication.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';

/// The get auth token use case.
class GetAuthTokenUseCase {
  /// The authentication repository.
  /// 
  final AuthenticationRepository _authenticationRepository;

  /// Constructor
  /// @param authenticationRepository The authentication repository.
  /// 
  GetAuthTokenUseCase(this._authenticationRepository);

  /// Execute the use case.
  /// @return The authentication.
  /// 
  Future<Authentication?> execute() async {
    return _authenticationRepository.getAuthToken();
  }
}
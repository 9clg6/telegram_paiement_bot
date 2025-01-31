import 'package:telegram_paiement_bot/data/repository/paiement.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';

/// AuthenticationUseCase is a use case that allows you to authenticate on a paiement service.
class AuthenticationUseCase {
  /// The repository of the paiement service.
  final PaiementRepository _paiementRepository;

  /// Constructor of the AuthenticationUseCase class.
  ///
  /// @param paiementRepository the repository of the paiement service
  AuthenticationUseCase(this._paiementRepository);

  /// Authenticate a user on the paiement service.
  ///
  /// @param mail the email of the owner of the paiement service
  /// @param password the password of the owner of the paiement service
  Future<Authentication?> execute(
    String mail,
    String password,
  ) async {
    return _paiementRepository.authenticate(
      mail,
      password,
    );
  }
}

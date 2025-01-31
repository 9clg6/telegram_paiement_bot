import 'package:telegram_paiement_bot/data/model/local/authentication.local.model.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication.remote_model.dart';

/// The authentication entity.
class Authentication {
  /// The token.
  final String token;

  /// Constructor
  /// @param token The token.
  ///
  Authentication({
    required this.token,
  });

  /// Create an [Authentication] from a [AuthenticationRemoteModel].
  /// @param remoteModel The remote model.
  /// @return The authentication.
  ///
  factory Authentication.fromRemoteModel(
          AuthenticationRemoteModel remoteModel) =>
      Authentication(token: remoteModel.token);

  /// Create an [Authentication] from a [AuthenticationLocalModel].
  /// @param authentication The authentication local model.
  /// @return The authentication.
  ///
  factory Authentication.fromLocalModel(
    AuthenticationLocalModel authentication,
  ) {
    return Authentication(token: authentication.token);
  }
}

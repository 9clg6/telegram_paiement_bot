import 'package:telegram_paiement_bot/data/model/remote/authentication.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication_body.remote.model.dart';
import 'package:telegram_paiement_bot/data/model/remote/minimum_amount.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/paiement.remote_model.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// PaiementDatasource is an interface that defines the methods that a paiement datasource must implement.
abstract class PaiementDataSource {
  /// Authenticate the user.
  /// @param authenticationBody The authentication body.
  /// @return The authentication remote model.
  ///
  Future<AuthenticationRemoteModel?> authenticate(
    AuthenticationBody authenticationBody,
  );

  /// Get the minimum amount by currency.
  /// @param currency The currency of the minimum amount.
  /// @return The minimum amount remote model.
  ///
  Future<MinimumAmountRemoteModel?> getMinimumAmount(String currency);

  /// Create a paiement.
  /// @param selectedCurrency the selected currency
  /// @return the paiement
  ///
  Future<PaiementRemoteModel?> createPaiement(
    Currency selectedCurrency,
    Product product,
  );
}

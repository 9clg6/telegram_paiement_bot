import 'package:telegram_paiement_bot/data/data_source/remote/paiement.data_source.dart';
import 'package:telegram_paiement_bot/data/endpoint/paiement.endpoint.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication_body.remote.model.dart';
import 'package:telegram_paiement_bot/data/model/remote/minimum_amount.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/paiement.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/paiement_body.remote_model.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// PaiementDataSourceImpl is an implementation of the PaiementDataSource interface.
class PaiementDataSourceImpl implements PaiementDataSource {
  /// The paiement endpoint.
  final PaiementEndpoint _paiementEndpoint;

  /// Constructor of the PaiementDataSourceImpl class.
  ///
  PaiementDataSourceImpl(this._paiementEndpoint);

  /// Authenticate the user.
  /// @param authenticationBody The authentication body.
  /// @return The authentication remote model.
  ///
  @override
  Future<AuthenticationRemoteModel?> authenticate(
    AuthenticationBody authenticationBody,
  ) {
    return _paiementEndpoint.authenticate(
      authenticationBody,
    );
  }

  /// Get the minimum amount by currency.
  /// @param currency The currency of the minimum amount.
  /// @return The minimum amount remote model.
  ///
  @override
  Future<MinimumAmountRemoteModel?> getMinimumAmount(String currency) {
    return _paiementEndpoint.getMinimumAmount(
      currency,
      currency,
    );
  }

  /// Create a paiement.
  /// @param selectedCurrency the selected currency
  /// @return the paiement
  ///
  @override
  Future<PaiementRemoteModel?> createPaiement(
    Currency selectedCurrency,
    Product product,
    String? username,
  ) {
    return _paiementEndpoint.createPaiement(
      CreatePaiementBody(
        priceAmount: product.price!,
        priceCurrency: selectedCurrency.value,
        payCurrency: selectedCurrency.value,
        orderDescription: '$username-${product.name}',
        isFixedRate: false,
        isFeePaidByUser: true,
      ),
    );
  }
}

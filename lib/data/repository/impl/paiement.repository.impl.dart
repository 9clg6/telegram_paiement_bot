import 'package:telegram_paiement_bot/data/data_source/remote/paiement.data_source.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication_body.remote.model.dart';
import 'package:telegram_paiement_bot/data/repository/paiement.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/minimum_amount.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/paiement.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// PaiementRepositoryImpl is an implementation of the PaiementRepository interface.
class PaiementRepositoryImpl implements PaiementRepository {
  /// The paiement datasource.
  final PaiementDataSource _paiementDatasource;

  /// Constructor of the PaiementRepositoryImpl class.
  /// @param paiementDatasource the paiement datasource
  ///
  PaiementRepositoryImpl(this._paiementDatasource);

  /// Authenticate the user.
  /// @param email The email of the user.
  /// @param password The password of the user.
  /// @return The authentication entity.
  ///
  @override
  Future<Authentication?> authenticate(String email, String password) async {
    final authenticationRemoteModel = await _paiementDatasource.authenticate(
      AuthenticationBody(
        email: email,
        password: password,
      ),
    );

    return authenticationRemoteModel != null
        ? Authentication.fromRemoteModel(authenticationRemoteModel)
        : null;
  }

  /// Get the minimum amount by currency.
  /// @param currency The currency of the minimum amount.
  /// @return The minimum amount entity.
  ///
  @override
  Future<MinimumAmountEntity?> getMinimumAmount(Currency currency) async {
    final minimumAmountRemoteModel =
        await _paiementDatasource.getMinimumAmount(currency.value);

    return minimumAmountRemoteModel != null
        ? MinimumAmountEntity.fromRemoteModel(minimumAmountRemoteModel)
        : null;
  }

  /// Create a paiement.
  /// @param selectedCurrency the selected currency
  /// @return the paiement
  ///
  @override
  Future<PaiementEntity?> createPaiement(
    Currency selectedCurrency,
    Product product,
  ) async {
    final paiementRemoteModel = await _paiementDatasource.createPaiement(
      selectedCurrency,
      product,
    );

    return paiementRemoteModel != null
        ? PaiementEntity.fromRemoteModel(paiementRemoteModel)
        : null;
  }
}

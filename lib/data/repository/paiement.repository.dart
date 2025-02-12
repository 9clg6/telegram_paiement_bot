import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/minimum_amount.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/paiement.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// PaiementRepository is an interface that allows you to authenticate and get the minimum amount.
abstract class PaiementRepository {
  /// Authenticate the user.
  /// @param email the email
  /// @param password the password
  /// @return the authentication
  ///
  Future<Authentication?> authenticate(
    String email,
    String password,
  );

  /// Get the minimum amount.
  /// @param currency the currency
  /// @return the minimum amount
  ///
  Future<MinimumAmountEntity?> getMinimumAmount(Currency currency);

  /// Create a paiement.
  /// @param selectedCurrency the selected currency
  /// @param product the product
  /// @return the paiement
  ///
  Future<PaiementEntity?> createPaiement(
    Currency selectedCurrency,
    Product product,
    String? username,
  );
}

import 'package:telegram_paiement_bot/domain/entity/minimum_amount.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// PaiementService is an interface that defines the methods that a paiement service must implement.
///
abstract class PaiementService {
  /// Authenticate the user
  /// @return the authentication token
  ///
  Future<void> authenticate();

  /// Get the minimum amount for a currency
  /// @param selectedCurrency the selected currency
  /// @return the minimum amount
  ///
  Future<MinimumAmountEntity?> getMinimumAmount(
    Currency selectedCurrency,
  );

  /// Create a paiement
  /// @param selectedCurrency the selected currency
  /// @return the paiement
  ///
  Future<String?> createPaiement({
    required Product product,
    required String? username,
  });

  /// Select the currency
  /// @param currency the currency
  ///
  void selectCurrency(Currency currency);
}

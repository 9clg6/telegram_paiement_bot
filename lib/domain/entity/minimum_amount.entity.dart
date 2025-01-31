import 'package:telegram_paiement_bot/data/model/remote/minimum_amount.remote_model.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// A class representing the minimum amount to be converted.
class MinimumAmountEntity  {
  /// The minimum amount to be converted.
  final double minimumAmount;

  /// The currency from which the minimum amount is converted.
  final Currency currencyFrom;

  /// The currency to which the minimum amount is converted.
  final Currency currencyTo;

  /// Create a new [MinimumAmountEntity].
  /// @param minimumAmount the minimum amount
  /// @param currencyFrom the currency from
  /// @param currencyTo the currency to
  /// 
  MinimumAmountEntity({
    required this.minimumAmount,
    required this.currencyFrom,
    required this.currencyTo,
  });
  
  /// Convert a [MinimumAmountRemoteModel] to a [MinimumAmountEntity].
  /// @param remoteModel the remote model
  /// @return the minimum amount entity
  /// 
  factory MinimumAmountEntity.fromRemoteModel(MinimumAmountRemoteModel remoteModel) {
    return MinimumAmountEntity(
      minimumAmount: remoteModel.minimumAmount,
      currencyFrom: Currency.values.firstWhere(
        (currency) => currency.name == remoteModel.currencyFrom,
        orElse: () => Currency.values.first,
      ),
      currencyTo: Currency.values.firstWhere(
        (currency) => currency.name == remoteModel.currencyTo,
        orElse: () => Currency.values.first,
      ),
    );
  }
}

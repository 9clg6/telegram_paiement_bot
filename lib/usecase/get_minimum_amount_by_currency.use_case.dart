import 'package:telegram_paiement_bot/data/repository/paiement.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/minimum_amount.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// GetMinimumAmountByCurrencyUseCase is a use case that allows you to get the minimum amount by currency.
class GetMinimumAmountByCurrencyUseCase {
  /// The paiement repository.
  final PaiementRepository _paiementRepository;

  /// Create a new [GetMinimumAmountByCurrencyUseCase].
  ///
  GetMinimumAmountByCurrencyUseCase(this._paiementRepository);

  /// Execute the use case.
  ///
  Future<MinimumAmountEntity?> execute(Currency currency) async {
    return await _paiementRepository.getMinimumAmount(currency);
  }
}

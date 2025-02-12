import 'package:telegram_paiement_bot/data/repository/paiement.repository.dart';
import 'package:telegram_paiement_bot/domain/entity/paiement.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';

/// Create a paiement use case.
class CreatePaiementUseCase {
  /// The paiement repository.
  final PaiementRepository paiementRepository;

  /// Constructor.
  /// @param paiementRepository the paiement repository.
  ///
  CreatePaiementUseCase(this.paiementRepository);

  /// Execute the use case.
  /// @param selectedCurrency the selected currency.
  /// @param product the product
  /// @return the paiement.
  ///
  Future<PaiementEntity?> execute(
    Currency selectedCurrency,
    Product product,
  ) async {
    return paiementRepository.createPaiement(
      selectedCurrency,
      product,
    );
  }
}

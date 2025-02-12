import 'package:telegram_paiement_bot/domain/entity/paiement.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';
import 'package:telegram_paiement_bot/foundation/interface/paiement.interface.dart';

/// WalletService is a service that allows you to create a wallet on NowPaiements.
class WalletService {
  /// The selected currency
  Currency? _selectedCurrency;

  /// Get the selected currency
  /// @return the selected currency
  ///
  Currency get selectedCurrency => _selectedCurrency!;

  /// The paiement service
  final PaiementService paiementService;

  /// Constructor
  /// @param paiementService the paiement service
  ///
  WalletService(this.paiementService) {
    print('💰 Wallet Service initialisé');
  }

  /// Select the currency
  /// @param currency the currency
  ///
  void selectCurrency(Currency currency) {
    _selectedCurrency = currency;
  }

  /// Create a paiement
  ///
  Future<String?> createPaiement(Product product) async {
    if (_selectedCurrency == null) {
      throw Exception("Monnaie non sélectionnée");
    }

    final PaiementEntity? paiement = await paiementService.createPaiement(
      selectedCurrency: _selectedCurrency!,
      product: product,
    );

    return paiement?.payAddress;
  }
}

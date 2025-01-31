
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

  /// Create a wallet
  /// @param currency the currency
  /// @return the wallet
  /// 
  Future<void> createWallet(Currency currency) async {
    await paiementService.authenticate();
  }

  /// Select the currency
  /// @param currency the currency
  /// 
  void selectCurrency(Currency currency) {
    _selectedCurrency = currency;
  }
}

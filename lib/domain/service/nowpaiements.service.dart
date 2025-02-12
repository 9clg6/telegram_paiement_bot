import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/minimum_amount.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/paiement.entity.dart';
import 'package:telegram_paiement_bot/domain/entity/product.entity.dart';
import 'package:telegram_paiement_bot/domain/enum/currency.dart';
import 'package:telegram_paiement_bot/foundation/env.dart';
import 'package:telegram_paiement_bot/foundation/interface/paiement.interface.dart';
import 'package:telegram_paiement_bot/usecase/authantication.use_case.dart';
import 'package:telegram_paiement_bot/usecase/create_paiement.use_case.dart';
import 'package:telegram_paiement_bot/usecase/get_minimum_amount_by_currency.use_case.dart';
import 'package:telegram_paiement_bot/usecase/save_auth_token.use_case.dart';

/// NowPaiementsService is a service that allows you to authenticate and create a wallet on NowPaiements.
///
class NowPaiementsService implements PaiementService {
  /// The authentication use case.
  final AuthenticationUseCase _authenticationUseCase;

  /// The save auth token use case.
  final SaveAuthTokenUseCase _saveAuthTokenUseCase;

  /// The minimum amount use case.
  final GetMinimumAmountByCurrencyUseCase _minimumAmountUseCase;

  /// The paiement use case.
  final CreatePaiementUseCase _createPaiementUseCase;

  /// Constructor
  /// @param authenticationUseCase The authentication use case.
  /// @param minimumAmountUseCase The minimum amount use case.
  /// @param saveAuthTokenUseCase The save auth token use case.
  /// @param createPaiementUseCase The create paiement use case.
  ///
  NowPaiementsService(
    this._authenticationUseCase,
    this._minimumAmountUseCase,
    this._saveAuthTokenUseCase,
    this._createPaiementUseCase,
  ) {
    print('💰 NowPaiements Service initialisé');
  }

  /// Authenticate the user.
  ///
  @override
  Future<void> authenticate() async {
    final Authentication? authentication = await _authenticationUseCase.execute(
      Env.nowPaymentsEmail,
      Env.nowPaymentsPassword,
    );

    if (authentication == null) {
      throw Exception("Erreur lors de l'authentification");
    }

    await _saveAuthTokenUseCase.execute(authentication.token);
  }

  /// Create a wallet.
  ///
  @override
  Future<void> createWallet() {
    // TODO: implement createWallet
    throw UnimplementedError();
  }

  /// Feed the wallet.
  ///
  @override
  Future<void> feedWallet() {
    // TODO: implement feedWallet
    throw UnimplementedError();
  }

  /// Get the minimum amount by currency.
  /// @param selectedCurrency the selected currency
  /// @return the minimum amount
  ///
  @override
  Future<MinimumAmountEntity?> getMinimumAmount(
    Currency selectedCurrency,
  ) async {
    return await _minimumAmountUseCase.execute(selectedCurrency);
  }

  @override
  Future<PaiementEntity?> createPaiement({
    required Currency selectedCurrency,
    required Product product,
  }) {
    return _createPaiementUseCase.execute(
      selectedCurrency,
      product,
    );
  }
}

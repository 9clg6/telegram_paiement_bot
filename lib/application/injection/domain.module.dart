import 'package:injectable/injectable.dart';
import 'package:telegram_paiement_bot/data/repository/authentication.repository.dart';
import 'package:telegram_paiement_bot/data/repository/paiement.repository.dart';
import 'package:telegram_paiement_bot/data/repository/product.repository.dart';
import 'package:telegram_paiement_bot/domain/service/nowpaiements.service.dart';
import 'package:telegram_paiement_bot/domain/service/product.service.dart';
import 'package:telegram_paiement_bot/foundation/interface/paiement.interface.dart';
import 'package:telegram_paiement_bot/usecase/authantication.use_case.dart';
import 'package:telegram_paiement_bot/usecase/create_paiement.use_case.dart';
import 'package:telegram_paiement_bot/usecase/get_auth_token.use_case.dart';
import 'package:telegram_paiement_bot/usecase/get_minimum_amount_by_currency.use_case.dart';
import 'package:telegram_paiement_bot/usecase/get_products.use_case.dart';
import 'package:telegram_paiement_bot/usecase/save_auth_token.use_case.dart';

/// The domain module.
///
@module
abstract class DomainModule {
  /// Allow to inject [AuthenticationUseCase]
  @injectable
  AuthenticationUseCase authenticationUseCase(
    PaiementRepository paiementRepository,
  ) =>
      AuthenticationUseCase(paiementRepository);

  /// Allow to inject [SaveAuthTokenUseCase]
  @injectable
  SaveAuthTokenUseCase saveAuthTokenUseCase(
    AuthenticationRepository authenticationRepository,
  ) =>
      SaveAuthTokenUseCase(authenticationRepository);

  /// Allow to inject [GetAuthTokenUseCase]
  @injectable
  GetAuthTokenUseCase getAuthTokenUseCase(
    AuthenticationRepository authenticationRepository,
  ) =>
      GetAuthTokenUseCase(authenticationRepository);

  /// Allow to inject [GetMinimumAmountByCurrencyUseCase]
  @injectable
  GetMinimumAmountByCurrencyUseCase getMinimumAmountByCurrencyUseCase(
    PaiementRepository paiementRepository,
  ) =>
      GetMinimumAmountByCurrencyUseCase(paiementRepository);

  /// Allow to inject [NowPaiementsService]
  @Singleton(as: PaiementService)
  NowPaiementsService paiementService(
    AuthenticationUseCase authenticationUseCase,
    GetMinimumAmountByCurrencyUseCase getMinimumAmountByCurrencyUseCase,
    SaveAuthTokenUseCase saveAuthTokenUseCase,
    CreatePaiementUseCase createPaiementUseCase,
  ) =>
      NowPaiementsService(
        authenticationUseCase,
        getMinimumAmountByCurrencyUseCase,
        saveAuthTokenUseCase,
        createPaiementUseCase,
      );

  /// Allow to inject [GetProductsUseCase]
  @injectable
  GetProductsUseCase getProductsUseCase(
    ProductRepository productRepository,
  ) =>
      GetProductsUseCase(productRepository);

  /// Allow to inject [ProductService]
  @singleton
  @preResolve
  Future<ProductService> productService(
          GetProductsUseCase getProductsUseCase) =>
      ProductService.inject(getProductsUseCase);

  /// Allow to inject [CreatePaiementUseCase]
  @injectable
  CreatePaiementUseCase createPaiementUseCase(
    PaiementRepository paiementRepository,
  ) =>
      CreatePaiementUseCase(paiementRepository);
}

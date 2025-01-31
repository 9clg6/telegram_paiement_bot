// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../application/injection/data.module.dart' as _i544;
import '../../application/injection/domain.module.dart' as _i519;
import '../../application/injection/foundation.module.dart' as _i1053;
import '../../data/data_source/local/authentication.local.data_source.dart'
    as _i250;
import '../../data/data_source/remote/paiement.data_source.dart' as _i782;
import '../../data/endpoint/paiement.endpoint.dart' as _i236;
import '../../data/repository/authentication.repository.dart' as _i361;
import '../../data/repository/paiement.repository.dart' as _i832;
import '../../domain/service/firebase.service.dart' as _i1041;
import '../../domain/service/wallet.service.dart' as _i231;
import '../../usecase/authantication.use_case.dart' as _i1013;
import '../../usecase/get_auth_token.use_case.dart' as _i938;
import '../../usecase/get_minimum_amount_by_currency.use_case.dart' as _i54;
import '../../usecase/save_auth_token.use_case.dart' as _i377;
import '../app_config.dart' as _i729;
import '../interface/paiement.interface.dart' as _i395;
import '../interface/storage.interface.dart' as _i416;
import '../io/client/dio_client.dart' as _i426;
import '../io/interceptor/header.interceptor.dart' as _i433;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    final foundationModule = _$FoundationModule();
    final domainModule = _$DomainModule();
    await gh.singletonAsync<_i416.StorageInterface<String>>(
      () => dataModule.storageService(),
      preResolve: true,
    );
    gh.singleton<_i1041.FirebaseService>(() => _i1041.FirebaseService());
    gh.singleton<_i426.DioClient>(
        () => foundationModule.dioClient(gh<_i729.AppConfig>()));
    gh.singleton<_i433.HeaderInterceptor>(
        () => foundationModule.headerInterceptor(
              gh<_i426.DioClient>(),
              gh<_i729.AppConfig>(),
            ));
    gh.factory<_i236.PaiementEndpoint>(
        () => dataModule.paiementEndpoint(gh<_i426.DioClient>()));
    gh.factory<_i250.AuthenticationLocalDataSource>(() => dataModule
        .authenticationLocalDataSource(gh<_i416.StorageInterface<String>>()));
    gh.factory<_i361.AuthenticationRepository>(() => dataModule
        .authenticationRepository(gh<_i250.AuthenticationLocalDataSource>()));
    gh.factory<_i782.PaiementDataSource>(
        () => dataModule.paiementDataSource(gh<_i236.PaiementEndpoint>()));
    gh.factory<_i377.SaveAuthTokenUseCase>(() => domainModule
        .saveAuthTokenUseCase(gh<_i361.AuthenticationRepository>()));
    gh.factory<_i938.GetAuthTokenUseCase>(() =>
        domainModule.getAuthTokenUseCase(gh<_i361.AuthenticationRepository>()));
    gh.factory<_i832.PaiementRepository>(
        () => dataModule.paiementRepository(gh<_i782.PaiementDataSource>()));
    gh.factory<_i1013.AuthenticationUseCase>(() =>
        domainModule.authenticationUseCase(gh<_i832.PaiementRepository>()));
    gh.factory<_i54.GetMinimumAmountByCurrencyUseCase>(() => domainModule
        .getMinimumAmountByCurrencyUseCase(gh<_i832.PaiementRepository>()));
    gh.singleton<_i395.PaiementService>(() => domainModule.paiementService(
          gh<_i1013.AuthenticationUseCase>(),
          gh<_i54.GetMinimumAmountByCurrencyUseCase>(),
          gh<_i377.SaveAuthTokenUseCase>(),
        ));
    gh.singleton<_i231.WalletService>(
        () => domainModule.walletService(gh<_i395.PaiementService>()));
    return this;
  }
}

class _$DataModule extends _i544.DataModule {}

class _$FoundationModule extends _i1053.FoundationModule {}

class _$DomainModule extends _i519.DomainModule {}

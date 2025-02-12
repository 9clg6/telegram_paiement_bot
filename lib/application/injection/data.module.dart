import 'package:injectable/injectable.dart';
import 'package:telegram_paiement_bot/data/data_source/local/authentication.local.data_source.dart';
import 'package:telegram_paiement_bot/data/data_source/local/impl/authentication.local.data_source.impl.dart';
import 'package:telegram_paiement_bot/data/data_source/local/impl/product.local.data_source.dart';
import 'package:telegram_paiement_bot/data/data_source/local/product.local.data_source.dart';
import 'package:telegram_paiement_bot/data/data_source/remote/impl/paiement.data_source.impl.dart';
import 'package:telegram_paiement_bot/data/data_source/remote/paiement.data_source.dart';
import 'package:telegram_paiement_bot/data/endpoint/paiement.endpoint.dart';
import 'package:telegram_paiement_bot/data/repository/authentication.repository.dart';
import 'package:telegram_paiement_bot/data/repository/impl/authentication.repository.impl.dart';
import 'package:telegram_paiement_bot/data/repository/impl/paiement.repository.impl.dart';
import 'package:telegram_paiement_bot/data/repository/impl/product.repository.impl.dart';
import 'package:telegram_paiement_bot/data/repository/paiement.repository.dart';
import 'package:telegram_paiement_bot/data/repository/product.repository.dart';
import 'package:telegram_paiement_bot/data/storage/storage.service.impl.dart';
import 'package:telegram_paiement_bot/foundation/interface/storage.interface.dart';
import 'package:telegram_paiement_bot/foundation/io/client/dio_client.dart';

/// The data module.
///
@module
abstract class DataModule {
  /// Allow to inject [StorageInterface<String>]
  ///
  @preResolve
  @singleton
  Future<StorageInterface<String>> storageService() =>
      StorageServiceImpl.inject();

  /// Allow to inject [PaiementEndpoint]
  ///
  @injectable
  PaiementEndpoint paiementEndpoint(
    DioClient dioClient,
  ) =>
      PaiementEndpoint(dioClient);

  /// Allow to inject [PaiementDataSource]
  ///
  @Injectable(as: PaiementDataSource)
  PaiementDataSourceImpl paiementDataSource(
    PaiementEndpoint paiementEndpoint,
  ) =>
      PaiementDataSourceImpl(paiementEndpoint);

  /// Allow to inject [PaiementRepository]
  ///
  @Injectable(as: PaiementRepository)
  PaiementRepositoryImpl paiementRepository(
    PaiementDataSource paiementDataSource,
  ) =>
      PaiementRepositoryImpl(paiementDataSource);

  /// Allow to inject [AuthenticationLocalDataSource]
  ///
  @Injectable(as: AuthenticationLocalDataSource)
  AuthenticationLocalDataSourceImpl authenticationLocalDataSource(
    StorageInterface<String> storageService,
  ) =>
      AuthenticationLocalDataSourceImpl(storageService);

  /// Allow to inject [AuthenticationRepository]
  ///
  @Injectable(as: AuthenticationRepository)
  AuthenticationRepositoryImpl authenticationRepository(
    AuthenticationLocalDataSource authenticationLocalDataSource,
  ) =>
      AuthenticationRepositoryImpl(authenticationLocalDataSource);

  /// Allow to inject [ProductLocalDataSource]
  @Injectable(as: ProductLocalDataSource)
  ProductLocalDataSourceImpl productLocalDataSource() =>
      ProductLocalDataSourceImpl();

  /// Allow to inject [ProductRepository]
  @Injectable(as: ProductRepository)
  ProductRepositoryImpl productRepository(
    ProductLocalDataSource productDataSource,
  ) =>
      ProductRepositoryImpl(productDataSource);
}

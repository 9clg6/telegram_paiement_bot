import 'package:injectable/injectable.dart';
import 'package:telegram_paiement_bot/foundation/app_config.dart';
import 'package:telegram_paiement_bot/foundation/io/client/dio_client.dart';
import 'package:telegram_paiement_bot/foundation/io/interceptor/header.interceptor.dart';

/// The foundation module.
///
@module
abstract class FoundationModule {
  /// Allow to inject [DioClient]
  @singleton
  DioClient dioClient(AppConfig appConfig) => DioClient.basic(appConfig);

  /// Allow to inject [HeaderInterceptor]
  @singleton
  HeaderInterceptor headerInterceptor(
    DioClient dioClient,
    AppConfig appConfig,
  ) =>
      HeaderInterceptor(
        dioClient,
        appConfig,
      );
}

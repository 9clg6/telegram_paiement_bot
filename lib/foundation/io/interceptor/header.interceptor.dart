import 'package:dio/dio.dart';
import 'package:telegram_paiement_bot/foundation/app_config.dart';
import 'package:telegram_paiement_bot/foundation/io/client/dio_client.dart';
import 'package:telegram_paiement_bot/foundation/io/extra_client.dart';

/// Header interceptor
class HeaderInterceptor {
  /// [DioClient]
  final DioClient _dioClient;

  /// The app config.
  final AppConfig _appConfig;

  /// Constructor
  ///
  HeaderInterceptor(
    this._dioClient,
    this._appConfig,
  ) {
    _registerInterceptor();
  }

  /// Register the interceptor.
  /// 
  void _registerInterceptor() {
    _dioClient.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (
          RequestOptions requestOptions,
          RequestInterceptorHandler handler,
        ) async {
          if (_appConfig.paiementApiBaseUrl.isNotEmpty) {
            requestOptions.headers.addAll(
              <String, dynamic>{'x-api-key': _appConfig.paiementApiKey},
            );
          }
          if (!requestOptions.extra
              .containsKey(ExtraClient.removeContentType)) {
            requestOptions.headers.addAll(
              <String, dynamic>{'Content-Type': 'application/json'},
            );
          }
          return handler.next(requestOptions);
        },
      ),
    );
  }
}

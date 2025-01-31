import 'package:dio/dio.dart';
import 'package:telegram_paiement_bot/domain/entity/authentication.entity.dart';
import 'package:telegram_paiement_bot/foundation/injection/injector.dart';
import 'package:telegram_paiement_bot/foundation/interface/paiement.interface.dart';
import 'package:telegram_paiement_bot/foundation/io/client/dio_client.dart';
import 'package:telegram_paiement_bot/foundation/io/extra_client.dart';
import 'package:telegram_paiement_bot/usecase/get_auth_token.use_case.dart';

/// [TokenInterceptor]
class TokenInterceptor {
  /// [DioClient]
  final DioClient _dioClient;

  /// [GetAuthTokenUseCase]
  final GetAuthTokenUseCase _getAuthTokenUseCase;

  /// Constructor
  ///
  TokenInterceptor(
    this._dioClient,
    this._getAuthTokenUseCase,
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
          if (!requestOptions.extra.containsKey(ExtraClient.removeAuthToken)) {
            final Authentication? localToken =
                await _getAuthTokenUseCase.execute();

            if (localToken != null) {
              requestOptions.headers.addAll(
                <String, dynamic>{
                  'Authorization': 'Bearer ${localToken.token}',
                },
              );
            }
          }
          return handler.next(requestOptions);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) async {
          if (error.response?.statusCode == 403) {
            if (error.response?.data is Map<String, dynamic>) {
              try {
                await injector.get<PaiementService>().authenticate();
                final RequestOptions requestOptions = error.requestOptions;

                // ignore: always_specify_types
                final Response response =
                    await _dioClient.fetch(requestOptions);

                return handler.resolve(response);
              } catch (refreshError) {
                return handler.next(error);
              }
            }
          }
          return handler.next(error);
        },
      ),
    );
  }
}

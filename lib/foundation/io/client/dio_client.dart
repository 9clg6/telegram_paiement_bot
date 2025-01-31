import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:telegram_paiement_bot/foundation/app_config.dart';

/// {@category Core}
/// {@subCategory Infrastructure}
///
/// Dio client class to make http requests
class DioClient extends DioForNative {
  /// Get default [BaseOptions]
  /// @param baseUrl the base url
  /// @return the base options
  /// 
  static BaseOptions _baseOptions(String baseUrl) => BaseOptions()
    ..followRedirects = true
    ..baseUrl = baseUrl
    ..connectTimeout = const Duration(seconds: 30)
    ..maxRedirects = 5
    ..contentType = Headers.formUrlEncodedContentType;

  /// Constructor
  /// @param baseUrl the base url
  /// @return the dio client
  /// 
  DioClient._(String baseUrl) : super(_baseOptions(baseUrl));

  /// basic factory
  /// @param appConfig the app config
  /// @return the dio client
  /// 
  factory DioClient.basic(AppConfig appConfig) {
    return DioClient._(appConfig.paiementApiBaseUrl);
  }

  /// test factory
  /// @param appConfig the app config
  /// @return the dio client
  /// 
  factory DioClient.test(AppConfig appConfig) {
    final DioClient dio = DioClient._(appConfig.paiementApiBaseUrl);
    return dio;
  }

  /// Make a new authenticated request with [options]
  /// @param options the request options
  /// @return the response
  /// 
  Future<Response<dynamic>> authenticatedRequestWithOptions(
    RequestOptions options,
  ) {
    return request<dynamic>(
      options.path,
      queryParameters: options.queryParameters,
      data: options.data,
    );
  }
}

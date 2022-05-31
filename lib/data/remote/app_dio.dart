import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class AppDio with DioMixin implements Dio {
  AppDio._({BaseOptions? options}) {
    options = BaseOptions(
      baseUrl: "https://api.cryptowat.ch",
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
    );

    this.options = options;
    // interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    //   options.headers.addAll(await userAgentClientHintsHeader());
    // }));

    interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}

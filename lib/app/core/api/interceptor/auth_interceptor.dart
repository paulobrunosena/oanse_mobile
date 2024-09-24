import 'package:dio/dio.dart';

import '../../global/env.dart';

class AuthInterceptor extends Interceptor {
  final Dio dioRefreshToken = Dio(
    BaseOptions(
      baseUrl: Env.apiUrl,
      connectTimeout: const Duration(seconds: 90),
      receiveTimeout: const Duration(seconds: 90),
      sendTimeout: const Duration(seconds: 90),
      receiveDataWhenStatusError: true,
    ),
  );
  AuthInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    /*final String token = await LocalStorageUtils.getValue(SessionStorageKeys.accesToken.key);
    final bool pathIsNotLogin = !options.path.contains('auth');
    if (token.isNotEmpty && pathIsNotLogin) {
      options.headers['Authorization'] = 'Bearer $token';
    }*/
    super.onRequest(options, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    /*if (err.response != null &&
        err.response?.statusCode == 401 &&
        !err.response!.realUri.path.contains('auth/login')) {
      if (await _refreshToken()) {
        final newToken = await LocalStorageUtils.getValue(
          SessionStorageKeys.accesToken.key,
        );
        final opts = err.requestOptions;
        opts.headers['Authorization'] =
            'Bearer $newToken'; // Adiciona o novo token ao cabeçalho
        final cloneReq = await dioRefreshToken.request(
          opts.path,
          options: Options(
            method: opts.method,
            headers: opts.headers,
          ),
          data: opts.data,
          queryParameters: opts.queryParameters,
        );
        return handler.resolve(cloneReq);
      } else {
        await GlobalContext.instance.loginExpire();
        handler.next(err);
      }
    } else {
      handler.next(err);
    }*/
    super.onError(err, handler);
  }
}

import 'package:core_authenticator/authenticator.dart';
import 'package:core_model/config.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
Dio dioClient(Ref ref) {
  final appConfig = ref.watch(appConfigProvider);
  final authenticator = ref.watch(authenticatorProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: appConfig.backendUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );
  final authInterceptor = AuthInterceptor(dio, authenticator);
  dio.interceptors
    ..add(authInterceptor)
    ..add(LogInterceptor(responseBody: true));

  return dio;
}

/// 認証用のInterceptor
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor(this.dio, this.authenticator);

  final Dio dio;
  final Authenticator authenticator;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Authorizationヘッダーが空のときのみ、自動で設定する
    // if (options.headers['Authorization'] ?? true) {
    // }
    final accessToken = await authenticator.idToken;
    options.headers['Authorization'] = 'Bearer $accessToken';

    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // 期限切れの場合は、強制更新してリトライ
    // 条件はステータスコードで判定(仮)
    if (err.response?.statusCode == 401) {
      final newAccessToken = await authenticator.idToken;
      err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
      return handler.resolve(await dio.fetch(err.requestOptions));
    }
    return handler.next(err);
  }
}

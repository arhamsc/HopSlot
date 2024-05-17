import 'package:app/utils/interceptors/dio_token_expired.interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'interceptor.providers.g.dart';

@riverpod
TokenExpiredInterceptor tokenExpiredInterceptor(
    TokenExpiredInterceptorRef ref, Dio dio) {
  return TokenExpiredInterceptor(
    ref,
    dio,
  );
}

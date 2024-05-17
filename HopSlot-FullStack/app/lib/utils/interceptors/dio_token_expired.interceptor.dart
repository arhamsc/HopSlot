import 'package:app/main/domain/helpers/tokens/tokens.model.dart';
import 'package:app/main/presentation/handlers/providers/handler.providers.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/exception_codes/app_exception_codes.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TokenExpiredInterceptor extends Interceptor {
  final Ref _ref;
  final Dio _dio;
  int remainingRetries = 3;

  TokenExpiredInterceptor(this._ref, this._dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401 &&
        err.response?.data["message"] == "Invalid refresh token.") {
      _ref.read(refreshTokenHandlerProvider).handleExpired();
      handler.reject(
        err.copyWith(
          error: AppException(
            message: "Your session has expired. Please login again.",
            code: AppExceptionCodes.tokenExpired,
          ),
        ),
      );
      return;
    }
    if (err.response?.statusCode == 401 &&
        err.response?.data["message"] == "Token expired") {
      if (remainingRetries == 0) {
        remainingRetries = 3;
        _ref.read(refreshTokenHandlerProvider).handleExpired();
        handler.reject(
          err.copyWith(
            error: AppException(
              message: "Your session has expired. Please login again.",
              code: AppExceptionCodes.tokenExpired,
            ),
          ),
        );
        return;
      }
      if (err.requestOptions.path == '/auth/refresh') {
        // If the refresh token is also expired
        _ref.read(refreshTokenHandlerProvider).handleExpired();
        handler.reject(
          err.copyWith(
            error: AppException(
              message: "Your session has expired. Please login again.",
              code: AppExceptionCodes.tokenExpired,
            ),
          ),
        );
      } else {
        _ref.read(refreshTokenHandlerProvider).handle().then(
              (value) => {
                _dio
                    .fetch(
                      err.requestOptions.copyWith(
                        headers: {
                          ...err.requestOptions.headers,
                          'Authorization':
                              'Bearer ${value.getOrElse((_) => Tokens.empty()).at}',
                        },
                      ),
                    )
                    .then(
                      (val) => handler.resolve(val),
                    ),
              },
            );
      }
      remainingRetries--;
    } else {
      super.onError(err, handler);
    }
  }
}

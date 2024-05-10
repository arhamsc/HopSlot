import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/exception_codes/auth_exception_codes.dart';
import 'package:app/utils/parse_dio_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

TaskEither<K, T> taskTryCatchWrapperRepo<K extends AppException?, T>(
    Future<T> Function() main,
    {K Function({
      required String message,
      required Enum code,
    })? exceptionType}) {
  return TaskEither.tryCatch(main, (error, stackTrace) {
    if (error is DioException) {
      final ex = parseDioErrors(error);
      return exceptionType != null
          ? exceptionType(message: ex.message, code: ex.code)
          : AppException(message: ex.message, code: ex.code) as K;
    }
    return exceptionType != null
        ? exceptionType(
            message: error.toString(), code: AuthExceptionCodes.unknown)
        : AppException(
            message: error.toString(), code: AuthExceptionCodes.unknown) as K;
  });
}

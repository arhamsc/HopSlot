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
      StackTrace? stackTrace,
    })? exceptionType}) {
  return TaskEither.tryCatch(main, (error, stackTrace) {
    if (error is DioException) {
      final ex = parseDioErrors(error);
      return exceptionType != null
          ? exceptionType(
              message: ex.message, code: ex.code, stackTrace: stackTrace)
          : AppException(
              message: ex.message, code: ex.code, stackTrace: stackTrace) as K;
    }
    return exceptionType != null
        ? exceptionType(
            message: error.toString(),
            code: AuthExceptionCodes.unknown,
            stackTrace: stackTrace)
        : AppException(
            message: error.toString(),
            code: AuthExceptionCodes.unknown,
            stackTrace: stackTrace) as K;
  });
}

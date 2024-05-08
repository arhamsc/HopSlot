import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/exception_codes/app_exception_codes.dart';
import 'package:dio/dio.dart';

AppException parseDioErrors(DioException exception) {
  if (exception.type == DioExceptionType.badResponse) {
    final resMessage = exception.response?.data['message'];
    if (resMessage is! String) {
      if (resMessage is List<dynamic>) {
        final extractedMessages = resMessage
            .map((error) {
              if (error['code'] == 'custom') {
                return error['message'];
              } else {
                final pathString = error['path'].join(', ');
                return "${error['code']}: $pathString - ${error['message']}";
              }
            })
            .toList()
            .join('and, ');
        return AppException(
          message: extractedMessages,
          code: exception.type,
        );
      }
    }
    return AppException(
      message: exception.response?.data['message'] ??
          exception.response?.data['error'] ??
          'Something went wrong',
      code: exception.type,
    );
  } else {
    return AppException(
      message: exception.message ?? exception.error.toString(),
      code: AppExceptionCodes.unknown,
    );
  }
}

import 'package:app/utils/exceptions/exception_codes/app_exception_codes.dart';

class AppException implements Exception {
  final String message;
  final Enum code;
  final StackTrace? stackTrace;

  AppException({
    required this.message,
    this.code = AppExceptionCodes.unknown,
    this.stackTrace,
  });

  @override
  String toString() => 'AppException: $message';
}

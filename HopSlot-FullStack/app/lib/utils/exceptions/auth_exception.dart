import 'package:app/utils/exceptions/app_exception.dart';

class AuthExceptions extends AppException {
  AuthExceptions({
    required super.message,
    required super.code,
  });
}

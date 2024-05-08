import 'package:app/shared/domain/models/user/user.model.dart';
import 'package:app/utils/exceptions/auth_exception.dart';
import 'package:app/utils/exceptions/exception_codes/auth_exception_codes.dart';
import 'package:app/utils/parse_dio_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepo {
  final Dio _dio;

  AuthRepo(this._dio);

  TaskEither<AuthExceptions, User> login(String identity, String password) {
    return TaskEither.tryCatch(() async {
      final request = await _dio.post('/auth/login', data: {
        'identity': identity,
        'password': password,
      });
      if (request.data['error'] != null) {
        throw AuthExceptions(
            message: request.data['message'] ??
                request.data['error'] ??
                'Something went wrong',
            code: request.data['statusCode']);
      }

      return User.fromJson({
        ...request.data['data']['user'],
        'tokens': request.data['data']['tokens'],
      });
    }, (error, stackTrace) {
      if (error is DioException) {
        final ex = parseDioErrors(error);
        return AuthExceptions(message: ex.message, code: ex.code);
      }
      return AuthExceptions(
          message: error.toString(), code: AuthExceptionCodes.unknown);
    });
  }

  TaskEither<AuthExceptions, User> patientSignUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String username,
    required int age,
  }) {
    return TaskEither.tryCatch(() async {
      final request = await _dio.post('/auth/patient/signup', data: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'username': username,
      });
      if (request.data['error'] != null) {
        throw AuthExceptions(
            message: request.data['error'] ??
                request.data['message'] ??
                'Something went wrong',
            code: request.data['statusCode']);
      }
      return User.fromJson({
        ...request.data['data']['user'],
        ...request.data['data']['tokens'],
      });
    }, (error, stackTrace) {
      if (error is DioException) {
        return AuthExceptions(
            message: error.message ?? error.error.toString(),
            code: AuthExceptionCodes.dioException);
      }
      return AuthExceptions(
          message: error.toString(), code: AuthExceptionCodes.unknown);
    });
  }
}

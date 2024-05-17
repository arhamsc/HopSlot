import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/helpers/api_response/api_response.model.dart';
import 'package:app/main/domain/helpers/tokens/tokens.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/auth_exception.dart';
import 'package:app/utils/exceptions/exception_codes/auth_exception_codes.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:app/utils/parse_dio_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepo {
  final Dio _dio;

  AuthRepo(this._dio);

  TaskEither<AuthExceptions, User> login(
    String identity,
    String password,
  ) {
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
      final user = User.fromJson({
        ...request.data['data']['user'],
        'tokens': request.data['data']['tokens'],
      });

      return user;
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
    String? fcmToken,
  }) {
    return TaskEither.tryCatch(() async {
      final request = await _dio.post('/auth/signup', data: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'username': username,
        'age': age,
        'role': 'PATIENT',
        'fcmToken': fcmToken,
      });
      if (request.data['error'] != null) {
        throw AuthExceptions(
            message: request.data['error'] ??
                request.data['message'] ??
                'Something went wrong',
            code: request.data['statusCode']);
      }
      final user = User.fromJson({
        ...request.data['data']['user'],
        'tokens': request.data['data']['tokens'],
      });

      return user;
    }, (error, stackTrace) {
      if (error is DioException) {
        final ex = parseDioErrors(error);
        return AuthExceptions(message: ex.message, code: ex.code);
      }
      return AuthExceptions(
          message: error.toString(), code: AuthExceptionCodes.unknown);
    });
  }

  TaskEither<AuthExceptions, void> logout() {
    return TaskEither.tryCatch(() async {
      final request = await _dio.post('/auth/logout');
      if (request.data['error'] != null) {
        throw AuthExceptions(
            message: request.data['error'] ??
                request.data['message'] ??
                'Something went wrong',
            code: request.data['statusCode']);
      }
    }, (error, stackTrace) {
      if (error is DioException) {
        final ex = parseDioErrors(error);
        return AuthExceptions(message: ex.message, code: ex.code);
      }
      return AuthExceptions(
          message: error.toString(), code: AuthExceptionCodes.unknown);
    });
  }

  TaskEither<AppException, ApiResponse> updateToken(String token) {
    return taskTryCatchWrapperRepo(() async {
      final request = await _dio.post('/auth/update-token', data: {
        'token': token,
      });

      return ApiResponse.fromJson(request.data, (json) => json);
    });
  }

  /// If returns true then its exists if not true then it doesnt exist
  TaskEither<AppException, ApiResponse<bool>> checkUsernameOrEmail({
    String? username,
    String? email,
  }) {
    return taskTryCatchWrapperRepo(() async {
      final request = await _dio.post('/auth/check-for-username-email',
          data: username != null
              ? {
                  'username': username,
                }
              : email != null
                  ? {
                      'email': email,
                    }
                  : {});

      final res = ApiResponse.fromJson(request.data, (json) => json as bool);

      return res;
    });
  }

  TaskEither<AppException, Tokens> refreshToken(String refreshToken) {
    return taskTryCatchWrapperRepo(() async {
      final request = await _dio.post(
        '/auth/refresh',
        options: Options(
          headers: {
            'Authorization': 'Bearer $refreshToken',
          },
        ),
      );

      final user = User.fromJson({
        ...request.data['data']['user'],
        'tokens': request.data['data']['tokens'],
      });

      return user.tokens;
    });
  }
}

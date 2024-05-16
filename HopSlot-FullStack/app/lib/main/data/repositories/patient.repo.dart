import 'package:app/main/domain/entities/patient/patient.model.dart';
import 'package:app/main/domain/helpers/api_response/api_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class PatientRepo {
  final Dio _dio;

  PatientRepo(this._dio);

  TaskEither<AppException, ApiResponse<Patient>> getPatient(String id) {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/patient/$id');
      return ApiResponse.fromJson(
          response.data, (json) => Patient.fromJson(json));
    });
  }
}

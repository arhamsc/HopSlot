import 'package:app/main/domain/models/doctor/doc_stats_model/doc_stats.model.dart';
import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/shared/domain/models/helpers/api_response/api_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class DocInfoRepo {
  final Dio _dio;

  DocInfoRepo(this._dio);

  TaskEither<AppException, ApiResponse<DocStats>> getDocStats() {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/doctor/my-stats');
      return ApiResponse.fromJson(
          response.data, (json) => DocStats.fromJson(json));
    });
  }

  TaskEither<AppException, ApiResponse<List<Appointment>>>
      getTodaysAppointments() {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/doctor/todays-appointments');
      return ApiResponse.fromJson(
          response.data,
          (json) => (json as List<dynamic>)
              .map((e) => Appointment.fromJson(e))
              .toList());
    });
  }

  TaskEither<AppException, ApiResponse<List<Appointment>>>
      getAppointmentsHisotry() {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/doctor/appointments-history');
      return ApiResponse.fromJson(
          response.data,
          (json) => (json as List<Map<String, dynamic>>)
              .map((e) => Appointment.fromJson(e))
              .toList());
    });
  }
}

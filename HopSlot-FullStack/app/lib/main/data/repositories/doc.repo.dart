import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/shared/domain/models/entities/doctor/doctor.model.dart';
import 'package:app/shared/domain/models/helpers/api_response/api_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class DocRepo {
  final Dio _dio;

  DocRepo(this._dio);

  TaskEither<AppException, ApiResponse<Doctor>> getDocInfo(String id) {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.get('/doctor/$id');
      return ApiResponse.fromJson(res.data, (json) => Doctor.fromJson(json));
    });
  }

  TaskEither<AppException, ApiResponse> iAmLate() {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.post('/re-scheduler/i-am-late');
      return ApiResponse.fromJson(res.data, (json) => json);
    });
  }

  TaskEither<AppException, ApiResponse<Appointment>> getClosestAppointment() {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.get('/doctor/closest-appointment');
      return ApiResponse.fromJson(
          res.data, (json) => Appointment.fromJson(json));
    });
  }

  TaskEither<AppException, ApiResponse<Map<String, dynamic>>>
      updateRoomLocation({
    required double lat,
    required double lng,
    required double alt,
  }) {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.patch("/doctor/room-location", data: {
        "cabinLat": lat,
        "cabinLng": lng,
        "cabinAlt": alt,
      });

      return ApiResponse.fromJson(res.data, (json) => json);
    });
  }
}

import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/main/domain/helpers/api_response/api_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class DocSlotRepo {
  final Dio _dio;

  DocSlotRepo(this._dio);

  TaskEither<AppException, ApiResponse<DoctorSlot>> createDoctorSlot({
    required DoctorSlot form,
  }) {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.post("/doctor-slots", data: {
        ...form.toJson(),
        "slotStartTime": "${form.slotStartTime.toIso8601String()}Z",
        "slotEndTime": "${form.slotEndTime.toIso8601String()}Z",
      });
      return ApiResponse.fromJson(
        res.data,
        (json) => DoctorSlot.fromJson(json),
      );
    });
  }

  TaskEither<AppException, ApiResponse<List<DoctorSlot>>> getMySlots() {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.get("/doctor-slots");
      return ApiResponse.fromJson(
        res.data,
        (json) => (json as List).map((e) => DoctorSlot.fromJson(e)).toList(),
      );
    });
  }

  TaskEither<AppException, ApiResponse<DoctorSlot>> getDoctorSlot({
    required String id,
  }) {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.get("/doctor-slots/$id");
      return ApiResponse.fromJson(
        res.data,
        (json) => DoctorSlot.fromJson(json),
      );
    });
  }

  TaskEither<AppException, ApiResponse<DoctorSlot>> updateDoctorSlot({
    required DoctorSlot form,
  }) {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.patch("/doctor-slots/${form.id}", data: {
        ...form.toJson(),
        "slotStartTime": "${form.slotStartTime.toIso8601String()}Z",
        "slotEndTime": "${form.slotEndTime.toIso8601String()}Z",
      });
      return ApiResponse.fromJson(
        res.data,
        (json) => DoctorSlot.fromJson(json),
      );
    });
  }

  TaskEither<AppException, ApiResponse> deleteDoctorSlot({
    required String id,
  }) {
    return taskTryCatchWrapperRepo(() async {
      final res = await _dio.delete("/doctor-slots/$id");
      return ApiResponse.fromJson(
        res.data,
        (json) => json,
      );
    });
  }
}

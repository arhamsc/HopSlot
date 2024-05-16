import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/main/domain/entities/symptom_evidence/symptom_evidence.model.dart';
import 'package:app/main/domain/helpers/api_response/api_response.model.dart';
import 'package:app/main/domain/helpers/look_up_response/look_up_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class AppointmentLookupRepo {
  final Dio _dio;

  AppointmentLookupRepo(this._dio);

  TaskEither<AppException, ApiResponse<List<LookUpResponse>>> getHospitals() {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/appointment/lookup/hospitals');
      final apiResponse = ApiResponse<List<LookUpResponse>>.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map((e) => LookUpResponse.fromJson(e))
            .toList(),
      );
      return apiResponse;
    });
  }

  TaskEither<AppException, ApiResponse<List<LookUpResponse>>> getDoctors(
      String hospId) {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/appointment/lookup/doctors/$hospId');
      final apiResponse = ApiResponse<List<LookUpResponse>>.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map((e) => LookUpResponse.fromJson(e))
            .toList(),
      );
      return apiResponse;
    });
  }

  TaskEither<AppException, ApiResponse<List<SymptomEvidence>>> getSymptoms(
      String query) {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/appointment/lookup/questions');
      final apiResponse = ApiResponse<List<SymptomEvidence>>.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map((e) => SymptomEvidence.fromJson(e))
            .toList(),
      );
      return apiResponse;
    });
  }

  TaskEither<AppException, ApiResponse<List<DoctorSlot>>> getDoctorsSlots({
    required String doctorId,
    required DateTime date,
  }) {
    return taskTryCatchWrapperRepo(() async {
      print(date.timeZoneOffset.toString());
      final response =
          await _dio.get('/appointment/lookup/slots', queryParameters: {
        'doctorId': doctorId,
        'date': "${date.toIso8601String()}Z",
      });
      final apiResponse = ApiResponse<List<DoctorSlot>>.fromJson(
        response.data,
        (json) =>
            (json as List<dynamic>).map((e) => DoctorSlot.fromJson(e)).toList(),
      );
      return apiResponse;
    });
  }
}

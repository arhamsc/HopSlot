import 'package:app/main/domain/forms/prescription_form/prescription.form.dart';
import 'package:app/main/domain/entities/prescription/prescription.model.dart';
import 'package:app/main/domain/helpers/api_response/api_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class PrescriptionRepo {
  final Dio _dio;

  PrescriptionRepo(this._dio);

  TaskEither<AppException, ApiResponse<Prescription>> issuePrescription(
      PrescriptionForm form) {
    return taskTryCatchWrapperRepo(() async {
      // print(i)
      final formData = FormData.fromMap({
        'doctorId': form.doctorId,
        'appointmentId': form.appointmentId,
        'patientId': form.patientId,
        'body': form.body,
        'docSign': form.docSign,
        'otherNotes': form.otherNotes,
        'report': form.report != null
            ? await MultipartFile.fromFile(
                form.report?.platformFiles.first.path ?? "",
                filename: form.report?.platformFiles.first.name ?? "report")
            : null,
      });

      final response = await _dio.post(
        '/prescription',
        data: formData,
      );

      return ApiResponse.fromJson(
        response.data,
        (json) => Prescription.fromJson(json),
      );
    });
  }

  TaskEither<AppException, ApiResponse<Prescription>> getPrescription(
      String id) {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/prescription/$id');

      return ApiResponse.fromJson(
        response.data,
        (json) => Prescription.fromJson(json),
      );
    });
  }

  TaskEither<AppException, ApiResponse<List<Prescription>>>
      getMyPrescriptions() {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get('/prescription');

      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map((e) => Prescription.fromJson(e))
            .toList(),
      );
    });
  }
}

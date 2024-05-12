import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/shared/domain/models/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/shared/domain/models/entities/appointment_item/appointment_item.model.dart';
import 'package:app/shared/domain/models/helpers/api_response/api_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class AppointmentsRepo {
  final Dio _dio;

  AppointmentsRepo(this._dio);

  TaskEither<AppException, List<Appointment>> getAppointments({
    bool? past,
    bool? upcoming,
  }) {
    return taskTryCatchWrapperRepo(
      () async {
        assert(
          !(past != null && upcoming != null),
          "past and upcoming query param must not be provided together.",
        );
        final response = await _dio.get("/appointment",
            queryParameters: past != null || upcoming != null
                ? {
                    'type': past != null && past
                        ? 'past'
                        : upcoming != null && upcoming
                            ? 'upcoming'
                            : '',
                  }
                : null);
        final appointments = (response.data["data"] as List)
            .map((e) => Appointment.fromJson(e))
            .toList();
        return appointments;
      },
    );
  }

  TaskEither<AppException, ApiResponse<Appointment>> bookAppointment({
    required Map<String, dynamic> bookingData,
  }) {
    return taskTryCatchWrapperRepo(
      () async {
        final response = await _dio.post(
          "/appointment",
          data: bookingData,
        );
        return ApiResponse.fromJson(
          response.data,
          (json) => Appointment.fromJson(json),
        );
      },
    );
  }

  TaskEither<AppException, ApiResponse<List<AppointmentItem>>>
      getAppointmentHistory() {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get("/appointment/all");
      return ApiResponse.fromJson(
        response.data,
        (json) => (json as List<dynamic>)
            .map((e) => AppointmentItem.fromJson(e))
            .toList(),
      );
    });
  }

  TaskEither<AppException, ApiResponse<AppointmentDetail>> getAppointmentDetail(
      String id) {
    return taskTryCatchWrapperRepo(() async {
      final response = await _dio.get("/appointment/$id");
      return ApiResponse.fromJson(
        response.data,
        (json) => AppointmentDetail.fromJson(json),
      );
    });
  }
}

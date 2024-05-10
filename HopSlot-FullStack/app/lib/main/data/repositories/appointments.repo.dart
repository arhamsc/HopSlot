import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
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
}

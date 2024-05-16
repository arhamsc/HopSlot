import 'package:app/main/data/repositories/appointments.repo.dart';
import 'package:app/main/domain/entities/appointment/appointment.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class CancelAppointmentUC {
  final AppointmentsRepo _appointmentsRepo;

  CancelAppointmentUC(this._appointmentsRepo);

  Future<Either<AppException, Appointment>> call({
    required String appointmentId,
  }) async {
    final response =
        await _appointmentsRepo.cancelAppointment(appointmentId).run();

    return response.fold((l) => left(l), (r) => right(r.data!));
  }
}

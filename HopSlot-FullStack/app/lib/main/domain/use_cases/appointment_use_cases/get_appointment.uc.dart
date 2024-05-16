import 'package:app/main/data/repositories/appointments.repo.dart';
import 'package:app/main/domain/entities/appointment/appointment.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetAppointmentsUseCase {
  final AppointmentsRepo _appointmentRepository;

  GetAppointmentsUseCase(this._appointmentRepository);

  Future<Either<AppException, List<Appointment>>> call() async {
    final result = await _appointmentRepository.getAppointments().run();
    return result.fold((l) => left(l), (r) => right(r));
  }

  Future<Either<AppException, List<Appointment>>> callPast() async {
    final result =
        await _appointmentRepository.getAppointments(past: true).run();
    return result.fold((l) => left(l), (r) => right(r));
  }

  Future<Either<AppException, List<Appointment>>> callUpcoming() async {
    final result =
        await _appointmentRepository.getAppointments(upcoming: true).run();
    return result.fold((l) => left(l), (r) => right(r));
  }
}

import 'package:app/main/data/repositories/appointments.repo.dart';
import 'package:app/shared/domain/models/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetAppointmentDetailUC {
  final AppointmentsRepo _appointmentRepository;

  GetAppointmentDetailUC(this._appointmentRepository);

  Future<Either<AppException, AppointmentDetail>> call(
      String appointmentId) async {
    final res =
        await _appointmentRepository.getAppointmentDetail(appointmentId).run();

    return res.fold((l) => left(l), (r) => right(r.data!));
  }
}

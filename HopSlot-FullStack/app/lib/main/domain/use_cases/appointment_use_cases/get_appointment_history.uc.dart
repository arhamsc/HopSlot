import 'package:app/main/data/repositories/appointments.repo.dart';
import 'package:app/shared/domain/models/entities/appointment_item/appointment_item.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetAppointmentHistoryUC {
  final AppointmentsRepo _appointmentRepository;

  GetAppointmentHistoryUC(this._appointmentRepository);

  Future<Either<AppException, List<AppointmentItem>>> call() async {
    final res = await _appointmentRepository.getAppointmentHistory().run();

    return res.fold((l) => left(l), (r) => right(r.data ?? []));
  }
}

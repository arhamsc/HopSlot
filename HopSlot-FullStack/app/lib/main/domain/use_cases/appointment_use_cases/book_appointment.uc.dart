import 'package:app/main/data/repositories/appointments.repo.dart';
import 'package:app/main/presentation/patient/forms/book_appointment_form/book_appointment.form.dart';
import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class BookAppointmentUC {
  final AppointmentsRepo _appointmentRepository;

  BookAppointmentUC(this._appointmentRepository);

  Future<Either<AppException, Appointment>> call(
      BookAppointmentForm form) async {
    final data = {
      'appointmentSlotId': form.slot?.id,
      'doctorId': form.doctor?.id,
      'hospitalId': form.hospital?.id,
      'date': "${form.date?.toIso8601String()}Z",
      'symptoms': form.symptoms
          .map((e) => {
                'name': e.name,
                'desc': "NA",
                "type": e.dataType,
                "values": e.values
              })
          .toList(),
    };
    final result =
        await _appointmentRepository.bookAppointment(bookingData: data).run();
    return result.fold((l) => left(l), (r) => right(r.data!));
  }
}

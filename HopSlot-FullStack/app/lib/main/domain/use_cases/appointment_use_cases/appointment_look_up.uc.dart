import 'package:app/main/data/repositories/appointment_lookup.repo.dart';
import 'package:app/shared/domain/models/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/shared/domain/models/entities/symptom_evidence/symptom_evidence.model.dart';
import 'package:app/shared/domain/models/helpers/look_up_response/look_up_response.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class AppointmentLookUpUC {
  final AppointmentLookupRepo _appointmentRepository;

  AppointmentLookUpUC(this._appointmentRepository);

  Future<Either<AppException, List<LookUpResponse>>> callHospitals() async {
    final res = await _appointmentRepository.getHospitals().run();
    return res.fold((l) => left(l), (r) => right(r.data ?? []));
  }

  Future<Either<AppException, List<LookUpResponse>>> callDoctors(
      String hospId) async {
    final res = await _appointmentRepository.getDoctors(hospId).run();
    return res.fold((l) => left(l), (r) => right(r.data ?? []));
  }

  Future<Either<AppException, List<SymptomEvidence>>> callSymptoms(
      String query) async {
    final res = await _appointmentRepository.getSymptoms(query).run();
    return res.fold((l) => left(l), (r) => right(r.data ?? []));
  }

  Future<Either<AppException, List<DoctorSlot>>> callDoctorsSlots({
    required String doctorId,
    required DateTime date,
  }) async {
    final res = await _appointmentRepository
        .getDoctorsSlots(doctorId: doctorId, date: date)
        .run();
    return res.fold((l) => left(l), (r) => right(r.data ?? []));
  }
}

import 'package:app/main/data/repositories/patient.repo.dart';
import 'package:app/main/domain/entities/patient/patient.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetPatientUC {
  final PatientRepo _patientRepository;

  GetPatientUC(this._patientRepository);

  Future<Either<AppException, Patient>> call(String patientId) async {
    final result = await _patientRepository.getPatient(patientId).run();

    return result.fold(
      (l) => left(l),
      (r) => r.data != null
          ? right(r.data!)
          : left(AppException(message: "No data found")),
    );
  }
}

import 'package:app/main/data/repositories/prescription.repo.dart';
import 'package:app/main/domain/forms/prescription_form/prescription.form.dart';
import 'package:app/shared/domain/models/entities/prescription/prescription.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class IssuePrescriptionUC {
  final PrescriptionRepo _prescriptionRepository;

  IssuePrescriptionUC(this._prescriptionRepository);

  Future<Either<AppException, Prescription>> call(
      PrescriptionForm prescription) async {
    final result =
        await _prescriptionRepository.issuePrescription(prescription).run();

    return result.fold(
      (l) => left(l),
      (r) => r.data == null
          ? left(AppException(message: "Data not found"))
          : right(r.data!),
    );
  }
}

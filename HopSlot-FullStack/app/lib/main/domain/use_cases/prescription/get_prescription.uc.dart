import 'package:app/main/data/repositories/prescription.repo.dart';
import 'package:app/shared/domain/models/entities/prescription/prescription.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetPrescriptionUC {
  final PrescriptionRepo _prescriptionRepository;

  GetPrescriptionUC(this._prescriptionRepository);

  Future<Either<AppException, Prescription>> call(String id) async {
    final result = await _prescriptionRepository.getPrescription(id).run();

    return result.fold(
      (l) => left(l),
      (r) => r.data == null
          ? left(AppException(message: "Data not found"))
          : right(r.data!),
    );
  }

  Future<Either<AppException, List<Prescription>>> callMy() async {
    final result = await _prescriptionRepository.getMyPrescriptions().run();

    return result.fold(
      (l) => left(l),
      (r) => r.data == null
          ? left(AppException(message: "Data not found"))
          : right(r.data!),
    );
  }
}

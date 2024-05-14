import 'package:app/main/data/repositories/doc_slot.repo.dart';
import 'package:app/shared/domain/models/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class CreateDocSlotUC {
  final DocSlotRepo _docRepo;

  CreateDocSlotUC(this._docRepo);

  Future<Either<AppException, DoctorSlot>> call({
    required DoctorSlot doctorSlot,
  }) async {
    final response = await _docRepo.createDoctorSlot(form: doctorSlot).run();

    return response.fold((l) => left(l), (r) {
      if (r.data == null) {
        return left(
          AppException(
            message: "Created slot but could not get created data",
            stackTrace: StackTrace.current,
          ),
        );
      }
      return right(r.data!);
    });
  }
}

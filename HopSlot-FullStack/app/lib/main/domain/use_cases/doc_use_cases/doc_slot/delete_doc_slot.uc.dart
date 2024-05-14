import 'package:app/main/data/repositories/doc_slot.repo.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class DeleteDocSlotUC {
  final DocSlotRepo _docRepo;

  DeleteDocSlotUC(this._docRepo);

  Future<Either<AppException, String>> call(String id) async {
    final response = await _docRepo.deleteDoctorSlot(id: id).run();

    return response.fold((l) => left(l), (r) {
      return right(r.message);
    });
  }
}

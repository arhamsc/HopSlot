import 'package:app/main/data/repositories/doc_slot.repo.dart';
import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetDocSlotUC {
  final DocSlotRepo _docRepo;

  GetDocSlotUC(this._docRepo);

  Future<Either<AppException, DoctorSlot>> call(String id) async {
    final response = await _docRepo.getDoctorSlot(id: id).run();

    return response.fold((l) => left(l), (r) {
      if (r.data == null) {
        return left(
          AppException(
            message: "No data found",
            stackTrace: StackTrace.current,
          ),
        );
      }
      return right(r.data!);
    });
  }

  Future<Either<AppException, List<DoctorSlot>>> callMySlots() async {
    final response = await _docRepo.getMySlots().run();

    return response.fold((l) => left(l), (r) {
      if (r.data == null) {
        return left(
          AppException(
            message: "No data found",
            stackTrace: StackTrace.current,
          ),
        );
      }
      return right(r.data!);
    });
  }
}

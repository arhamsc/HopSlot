import 'package:app/main/data/repositories/doc.repo.dart';
import 'package:app/main/domain/entities/doctor/doctor.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class GetDocDetailsUseCase {
  final DocRepo _docRepository;

  GetDocDetailsUseCase(this._docRepository);

  Future<Either<AppException, Doctor>> call(String docId) async {
    final res = await _docRepository.getDocInfo(docId).run();
    return res.fold((l) => left(l), (r) => right(r.data!));
  }
}

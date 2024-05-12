import 'package:app/main/data/repositories/doc.repo.dart';
import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class IAmLateUC {
  final DocRepo _docRepository;

  IAmLateUC(this._docRepository);

  Future<Either<AppException, String>> call() async {
    final doc = await _docRepository.iAmLate().run();
    return doc.fold((l) => left(l), (r) => right(r.message));
  }

  Future<Either<AppException, Appointment?>> callClosestAppointment() async {
    final doc = await _docRepository.getClosestAppointment().run();
    return doc.fold((l) => left(l), (r) => right(r.data));
  }
}

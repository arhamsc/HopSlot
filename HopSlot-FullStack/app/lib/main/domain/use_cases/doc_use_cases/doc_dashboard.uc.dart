import 'package:app/main/data/repositories/doc_info.repo.dart';
import 'package:app/main/domain/models/doctor/doc_stats_model/doc_stats.model.dart';
import 'package:app/main/domain/entities/appointment/appointment.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class DocDashboardUC {
  final DocInfoRepo _docRepository;

  DocDashboardUC(this._docRepository);

  Future<Either<AppException, DocStats>> callStats() async {
    final result = await _docRepository.getDocStats().run();
    return result.fold((l) => left(l), (r) => right(r.data!));
  }

  Future<Either<AppException, List<Appointment>>>
      callTodaysAppointments() async {
    final result = await _docRepository.getTodaysAppointments().run();
    // print(result.getOrElse((l) => throw l));
    return result.fold((l) => left(l), (r) => right(r.data!));
  }

  Future<Either<AppException, List<Appointment>>>
      callAppointmentsHistory() async {
    final result = await _docRepository.getAppointmentsHisotry().run();
    return result.fold((l) => left(l), (r) => right(r.data!));
  }
}

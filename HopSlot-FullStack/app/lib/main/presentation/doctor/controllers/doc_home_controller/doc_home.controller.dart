import 'package:app/main/domain/models/doctor/doc_stats_model/doc_stats.model.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/doctor/controllers/doc_home_controller/state/doc_home.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'doc_home.controller.g.dart';

@riverpod
class DocHomeController extends _$DocHomeController {
  @override
  FutureOr<DocHomeState> build() async {
    final stats = await ref.read(docDashboardUCProvider).callStats();
    final todaysApps =
        await ref.read(docDashboardUCProvider).callTodaysAppointments();

    return DocHomeState(
      docStats: stats.fold(
          (l) => const DocStats(
              totalAppointments: 0, totalPatients: 0, totalPrescriptions: 0),
          (r) => r),
      todaysAppointments: todaysApps.fold((l) => [], (r) => r),
    );
  }
}

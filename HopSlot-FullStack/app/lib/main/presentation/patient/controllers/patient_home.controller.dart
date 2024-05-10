import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/patient/controllers/states/patient_home.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient_home.controller.g.dart';

@riverpod
class PatientHomeController extends _$PatientHomeController {
  @override
  FutureOr<PatientHomeState> build() async {
    return const PatientHomeState(
      upcomingAppointments: [],
      pastAppointments: [],
    );
  }

  Future<void> fetchAppointments() async {
    final pastApps = await ref.read(getAppointmentsUCProvider).callPast();
    final upcomingApps =
        await ref.read(getAppointmentsUCProvider).callUpcoming();
    final re = pastApps.map2(
        upcomingApps,
        (past, upcoming) => {
              'pastApps': past,
              'upcomingApps': upcoming,
            });

    final oldState = state.requireValue;

    state = re.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(
        oldState.copyWith(
          pastAppointments: r['pastApps'] ?? oldState.pastAppointments,
          upcomingAppointments:
              r['upcomingApps'] ?? oldState.upcomingAppointments,
        ),
      ),
    );
  }
}

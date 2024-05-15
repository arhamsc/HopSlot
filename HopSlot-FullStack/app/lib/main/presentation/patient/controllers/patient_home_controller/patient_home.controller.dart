import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/patient/controllers/patient_home_controller/state/patient_home.state.dart';
import 'package:app/shared/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient_home.controller.g.dart';

@riverpod
class PatientHomeController extends _$PatientHomeController {
  @override
  FutureOr<PatientHomeState> build() async {
    final pastApps = await ref.read(getAppointmentsUCProvider).callPast();
    final upcomingApps =
        await ref.read(getAppointmentsUCProvider).callUpcoming();
    final combinedMap = pastApps.map2(
        upcomingApps,
        (past, upcoming) => {
              'pastApps': past,
              'upcomingApps': upcoming,
            });
    final value = combinedMap.fold((l) => throw l, (r) => r);
    return PatientHomeState(
      upcomingAppointments: value['upcomingApps'] ?? [],
      pastAppointments: value['pastApps'] ?? [],
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

  Future<void> onAppointmentClick(String id, String activeType) async {
    state = const AsyncLoading();
    final appointment = await ref.read(getAppointmentDetailUCProvider).call(id);

    state = appointment.fold(
      (l) => AsyncError(l, l.stackTrace ?? StackTrace.empty),
      (r) => AsyncValue.data(state.requireValue.copyWith(
        selectedAppointment: r,
        activeType: activeType,
      )),
    );
  }

  Future<void> resetSelectedAppointmentDetail() async {
    state = const AsyncLoading();

    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(selectedAppointment: null));
  }

  Future<void> cancelAppointment(String id) async {
    state = const AsyncLoading();

    final appointment =
        await ref.read(cancelAppointmentUCProvider).call(appointmentId: id);

    final oldState = state.requireValue;

    state = appointment.fold(
      (l) => AsyncError(l, l.stackTrace ?? StackTrace.empty),
      (r) => AsyncValue.data(oldState.copyWith(
        selectedAppointment: oldState.selectedAppointment?.copyWith(
          status: EAppointmentStatus.cancelled,
        ),
      )),
    );

    await fetchAppointments();
  }
}

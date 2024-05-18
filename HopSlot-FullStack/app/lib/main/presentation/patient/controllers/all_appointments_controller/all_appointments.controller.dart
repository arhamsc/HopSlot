import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/patient/controllers/all_appointments_controller/state/all_appointments.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_appointments.controller.g.dart';

@riverpod
class AllAppointmentsController extends _$AllAppointmentsController {
  @override
  FutureOr<AllAppointmentState> build() async {
    final appointmentItems =
        await ref.read(getAppointmentHistoryUCProvider).call();
    return AllAppointmentState(
      appointmentItems: appointmentItems.fold((l) => [], (r) => r),
    );
  }

  Future<void> fetchSelectedAppointmentDetail(String id) async {
    state = const AsyncLoading();

    final response = await ref.read(getAppointmentDetailUCProvider).call(id);

    final oldState = state.requireValue;
    state = response.fold(
      (l) => AsyncError(l, l.stackTrace ?? StackTrace.empty),
      (r) => AsyncValue.data(oldState.copyWith(appointmentDetail: r)),
    );
  }

  Future<void> resetSelectedAppointmentDetail() async {
    state = const AsyncLoading();

    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(appointmentDetail: null));
  }
}

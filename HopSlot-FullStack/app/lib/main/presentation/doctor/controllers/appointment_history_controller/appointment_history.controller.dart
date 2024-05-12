import 'dart:ffi';

import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/doctor/controllers/appointment_history_controller/state/appointment_history_controller.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appointment_history.controller.g.dart';

@riverpod
class AppointmentHistoryController extends _$AppointmentHistoryController {
  @override
  FutureOr<AppointmentHistoryControllerState> build() async {
    final appointmentItems =
        await ref.read(getAppointmentHistoryUCProvider).call();
    return AppointmentHistoryControllerState(
        appointmentItems: appointmentItems.fold((l) => [], (r) => r));
  }

  Future<void> fetchSelectedAppointmentDetail(String id) async {
    state = const AsyncLoading();

    final response = await ref.read(getAppointmentDetailUCProvider).call(id);

    final oldState = state.requireValue;
    state = response.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncValue.data(oldState.copyWith(appointmentDetail: r)),
    );
  }

  Future<void> resetSelectedAppointmentDetail() async {
    state = const AsyncLoading();

    final oldState = state.requireValue;
    state = AsyncValue.data(oldState.copyWith(appointmentDetail: null));
  }
}

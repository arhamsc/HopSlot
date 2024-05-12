import 'package:app/shared/domain/models/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/shared/domain/models/entities/appointment_item/appointment_item.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_history_controller.state.g.dart';

part 'appointment_history_controller.state.freezed.dart';

@freezed
class AppointmentHistoryControllerState
    with _$AppointmentHistoryControllerState {
  const factory AppointmentHistoryControllerState({
    required List<AppointmentItem> appointmentItems,
    AppointmentDetail? appointmentDetail,
  }) = _AppointmentHistoryControllerState;

  factory AppointmentHistoryControllerState.fromJson(
          Map<String, dynamic> json) =>
      _$AppointmentHistoryControllerStateFromJson(json);
}

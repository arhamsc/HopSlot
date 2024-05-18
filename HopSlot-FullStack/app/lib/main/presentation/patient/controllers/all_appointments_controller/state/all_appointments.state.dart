import 'package:app/main/domain/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/main/domain/entities/appointment_item/appointment_item.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_appointments.state.g.dart';

part 'all_appointments.state.freezed.dart';

@freezed
class AllAppointmentState with _$AllAppointmentState {
  const factory AllAppointmentState({
    required List<AppointmentItem> appointmentItems,
    AppointmentDetail? appointmentDetail,
  }) = _AllAppointmentState;

  factory AllAppointmentState.fromJson(Map<String, dynamic> json) =>
      _$AllAppointmentStateFromJson(json);
}

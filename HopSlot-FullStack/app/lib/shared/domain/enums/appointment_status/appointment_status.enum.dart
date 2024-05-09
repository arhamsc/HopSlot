import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_status.enum.freezed.dart';
part 'appointment_status.enum.g.dart';

/*
enum AppointmentStatus {
  PENDING
  CONFIRMED
  CANCELLED
  COMPLETED
}
 */

@freezed
class EAppointmentStatus with _$EAppointmentStatus {
  const factory EAppointmentStatus.pending() = AppointmentPending;

  const factory EAppointmentStatus.confirmed() = AppointmentConfirmed;

  const factory EAppointmentStatus.cancelled() = AppointmentCancelled;

  const factory EAppointmentStatus.completed() = AppointmentCompleted;

  factory EAppointmentStatus.fromJson(Map<String, dynamic> json) =>
      _$EAppointmentStatusFromJson(json);
}

/*
{
            "id": "31616a3b-21ef-4cf8-a58e-e4eba966f14f",
            "patient": {
                "id": "52fd1acc-5d0b-4a67-bac8-87f6cc42ce4c",
                "firstName": "Rayees",
                "lastName": "Hussain"
            },
            "doctor": {
                "id": "1be17445-0584-48df-a729-7757490486c5",
                "firstName": "Ursula",
                "lastName": "Reilly"
            },
            "appointmentStart": "2024-05-13T23:00:36.000Z"
        },
 */

import 'package:app/main/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:app/main/domain/helpers/essential_user/essential_user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_item.model.g.dart';

part 'appointment_item.model.freezed.dart';

@freezed
class AppointmentItem with _$AppointmentItem {
  const factory AppointmentItem({
    required String id,
    required EssentialUser patient,
    required EssentialUser doctor,
    required DateTime appointmentStart,
    required EAppointmentStatus status,
  }) = _AppointmentItem;

  factory AppointmentItem.fromJson(Map<String, dynamic> json) =>
      _$AppointmentItemFromJson(json);
}

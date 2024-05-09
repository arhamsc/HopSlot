/*
model Patient {
  userId String @id /// @z.string().uuid().optional()
  user   User   @relation(fields: [userId], references: [id])
  age    Int

  lastAppointment Appointment? @relation(fields: [appointmentId], references: [id])
  appointmentId   String? /// @z.string().uuid()

  createdAt    DateTime       @default(now()) /// @z.date().optional()
  updatedAt    DateTime       @updatedAt /// @z.date().optional()
  Prescription Prescription[]

  @@map("patients")
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.model.freezed.dart';
part 'patient.model.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    required String userId,
    required int age,
    @JsonKey(name: 'appointmentId') String? lastAppointmentId,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

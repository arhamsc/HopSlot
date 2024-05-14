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
import 'package:hive/hive.dart';

part 'patient.model.freezed.dart';

part 'patient.model.g.dart';

@freezed
@HiveType(typeId: 3)
class Patient with _$Patient {
  const factory Patient({
    @HiveField(0) required String userId,
    @HiveField(1) required int age,
    @HiveField(2) @JsonKey(name: 'appointmentId') String? lastAppointmentId,
  }) = _Patient;

  factory Patient.empty() => const Patient(
        userId: '',
        age: 0,
        lastAppointmentId: '',
      );

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

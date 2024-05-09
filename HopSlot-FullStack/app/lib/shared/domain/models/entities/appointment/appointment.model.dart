/*
model Appointment {
  id String @id @default(uuid()) /// @z.string().uuid()

  hospitalId String /// @z.string().uuid()
  hospital   Hospital @relation(fields: [hospitalId], references: [id])

  doctorId String /// @z.string().uuid()
  doctor   Doctor @relation(fields: [doctorId], references: [userId], onDelete: Cascade)

  patientId String /// @z.string().uuid()
  patient   User   @relation(fields: [patientId], references: [id])

  appointmentSlot   DoctorSlot @relation(fields: [appointmentSlotId], references: [id])
  appointmentSlotId String /// @z.string().uuid()

  status AppointmentStatus @default(PENDING) /// @z.nativeEnum(AppointmentStatus)

  appointmentStart      DateTime? /// @z.string().datetime()
  appointmentStartDelay Int?
  severity              Int?
  symptoms              Symptom[]

  additionalDelay Int @default(0)

  createdAt    DateTime       @default(now()) /// @z.date().optional()
  updatedAt    DateTime       @updatedAt /// @z.date().optional()
  Patient      Patient[]
  Prescription Prescription[]

  @@map("appointments")
}
 */

import 'package:app/shared/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:app/shared/domain/models/entities/symptom/symptom.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.model.freezed.dart';
part 'appointment.model.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String id,
    required String hospitalId,
    required String doctorId,
    required String patientId,
    required String appointmentSlotId,
    required EAppointmentStatus status,
    required int additionalDelay,
    DateTime? appointmentStart,
    int? appointmentStartDelay,
    int? severity,
    @Default([]) List<Symptom> symptoms,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

/*
model Prescription {
  id String @id @default(uuid()) /// @z.string().uuid().optional()

  appointmentId String /// @z.string().uuid()
  appointment   Appointment @relation(fields: [appointmentId], references: [id], onDelete: Cascade)

  patientId String /// @z.string().uuid()
  patient   Patient @relation(fields: [patientId], references: [userId])

  doctorId String /// @z.string().uuid()
  doctor   Doctor @relation(fields: [doctorId], references: [userId])

  issueDate  DateTime
  body       String /// @z.string().min(10)
  otherNotes String?
  docSign    String

  createdAt DateTime @default(now()) /// @z.date().optional()
  updatedAt DateTime @updatedAt /// @z.date().optional()
  report    Report[]

  @@map("prescriptions")
}
 */

import 'package:app/main/domain/entities/report/report.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription.model.freezed.dart';

part 'prescription.model.g.dart';

@freezed
class Prescription with _$Prescription {
  const factory Prescription({
    required String id,
    required String appointmentId,
    required String patientId,
    required String doctorId,
    required DateTime issueDate,
    required String body,
    String? otherNotes,
    required String docSign,
    @JsonKey(name: 'report') @Default([]) List<Report> reports,
  }) = _Prescription;

  factory Prescription.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFromJson(json);
}

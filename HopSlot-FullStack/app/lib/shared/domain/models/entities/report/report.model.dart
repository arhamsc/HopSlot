/*
model Report {
  id String @id @default(uuid()) /// @z.string().uuid().optional()

  doctorId String /// @z.string().uuid()
  doctor   Doctor @relation(fields: [doctorId], references: [userId])

  patientId String /// @z.string().uuid()
  patient   User   @relation(fields: [patientId], references: [id])

  issueDate DateTime
  signedBy  String

  reportPublicId  String
  reportSecureUrl String

  prescriptionId String /// @z.string().uuid()
  prescription   Prescription @relation(fields: [prescriptionId], references: [id])

  createdAt DateTime @default(now()) /// @z.date().optional()
  updatedAt DateTime @updatedAt /// @z.date().optional()

  @@map("reports")
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.model.freezed.dart';
part 'report.model.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required String id,
    required String doctorId,
    required String patientId,
    required DateTime issueDate,
    required String signedBy,
    required String reportPublicId,
    required String reportSecureUrl,
    required String prescriptionId,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

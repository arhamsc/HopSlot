/**
 * model Symptom {
    id String @id @default(uuid()) /// @z.string().uuid()

    name   String /// @z.string().min(1).max(100)
    desc   String /// @z.string().min(5)
    type   String /// @z.string().min(1).max(1)
    values String[] @default([])

    createdAt DateTime @default(now()) /// @z.date().optional()
    updatedAt DateTime @updatedAt /// @z.date().optional()

    Appointment   Appointment? @relation(fields: [appointmentId], references: [id])
    appointmentId String?

    @@map("symptoms")
    }
 */
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom.model.freezed.dart';

part 'symptom.model.g.dart';

@freezed
class Symptom with _$Symptom {
  const factory Symptom({
    required String id,
    required String name,
    required String desc,
    required String type,
    @Default([]) List<String> values,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
}

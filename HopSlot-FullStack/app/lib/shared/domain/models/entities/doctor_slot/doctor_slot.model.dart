/**
 * model DoctorSlot {
    id String @id @default(uuid()) /// @z.string().uuid()

    doctorId String /// @z.string().uuid()
    doctor   Doctor @relation(fields: [doctorId], references: [userId])

    slotStartTime      DateTime @db.Time /// @z.string().datetime()
    slotEndTime        DateTime @db.Time /// @z.string().datetime()
    durationOfPerVisit Int // in minutes, split entire slot into sub slots
    forDay             String[] @default([]) //["mon", "tue", "wed", "thu", "fri", "sat", "sun"]

    status Status @default(PENDING) /// @z.nativeEnum(Status)

    createdAt   DateTime      @default(now()) /// @z.date().optional()
    updatedAt   DateTime      @updatedAt /// @z.date().optional()
    Appointment Appointment[]

    @@map("doctor_slots")
    }
 */
library;

import 'package:app/shared/domain/enums/status/status.enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_slot.model.freezed.dart';
part 'doctor_slot.model.g.dart';

@freezed
class DoctorSlot with _$DoctorSlot {
  const factory DoctorSlot({
    required String id,
    required String doctorId,
    required DateTime slotStartTime,
    required DateTime slotEndTime,
    required int durationOfPerVisit,
    required List<String> forDay,
    required Status status,
  }) = _DoctorSlot;

  factory DoctorSlot.fromJson(Map<String, dynamic> json) =>
      _$DoctorSlotFromJson(json);
}

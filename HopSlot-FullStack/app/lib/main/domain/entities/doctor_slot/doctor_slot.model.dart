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

import 'package:app/main/domain/enums/status/status.enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'doctor_slot.model.freezed.dart';

part 'doctor_slot.model.g.dart';

part 'doctor_slot.model.gform.dart';

@freezed
@Rf()
class DoctorSlot with _$DoctorSlot {
  const factory DoctorSlot({
    @Default("") String id,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required String doctorId,
    required DateTime slotStartTime,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required DateTime slotEndTime,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required int durationOfPerVisit,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required List<String> forDay,
    @RfControl(
      validators: [
        RequiredValidator(),
      ],
    )
    required Status status,
  }) = _DoctorSlot;

  factory DoctorSlot.empty() => DoctorSlot(
        id: "",
        doctorId: "",
        slotStartTime: DateTime.now(),
        slotEndTime: DateTime.now(),
        durationOfPerVisit: 0,
        forDay: [],
        status: Status.pending,
      );

  factory DoctorSlot.fromJson(Map<String, dynamic> json) =>
      _$DoctorSlotFromJson(json);
}

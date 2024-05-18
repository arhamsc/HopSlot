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

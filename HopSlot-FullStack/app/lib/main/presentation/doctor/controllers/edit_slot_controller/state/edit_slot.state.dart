import 'package:app/shared/domain/models/entities/doctor_slot/doctor_slot.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_slot.state.g.dart';

part 'edit_slot.state.freezed.dart';

@freezed
class EditSlotState with _$EditSlotState {
  const factory EditSlotState({
    DoctorSlot? doctorSlot,
    required bool isEdit,
  }) = _EditSlotState;

  factory EditSlotState.fromJson(Map<String, dynamic> json) =>
      _$EditSlotStateFromJson(json);
}

import 'package:app/shared/domain/models/entities/doctor_slot/doctor_slot.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_slots.state.g.dart';

part 'my_slots.state.freezed.dart';

@freezed
class MySlotsState with _$MySlotsState {
  const factory MySlotsState({
    required List<DoctorSlot> mySlots,
  }) = _MySlotsState;

  factory MySlotsState.fromJson(Map<String, dynamic> json) =>
      _$MySlotsStateFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'edit_slot.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditSlotStateImpl _$$EditSlotStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EditSlotStateImpl',
      json,
      ($checkedConvert) {
        final val = _$EditSlotStateImpl(
          doctorSlot: $checkedConvert(
              'doctorSlot',
              (v) => v == null
                  ? null
                  : DoctorSlot.fromJson(v as Map<String, dynamic>)),
          isEdit: $checkedConvert('isEdit', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EditSlotStateImplToJson(_$EditSlotStateImpl instance) =>
    <String, dynamic>{
      'doctorSlot': instance.doctorSlot?.toJson(),
      'isEdit': instance.isEdit,
    };

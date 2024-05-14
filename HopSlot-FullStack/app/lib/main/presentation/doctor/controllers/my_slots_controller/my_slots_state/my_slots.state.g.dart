// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'my_slots.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MySlotsStateImpl _$$MySlotsStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MySlotsStateImpl',
      json,
      ($checkedConvert) {
        final val = _$MySlotsStateImpl(
          mySlots: $checkedConvert(
              'mySlots',
              (v) => (v as List<dynamic>)
                  .map((e) => DoctorSlot.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MySlotsStateImplToJson(_$MySlotsStateImpl instance) =>
    <String, dynamic>{
      'mySlots': instance.mySlots.map((e) => e.toJson()).toList(),
    };

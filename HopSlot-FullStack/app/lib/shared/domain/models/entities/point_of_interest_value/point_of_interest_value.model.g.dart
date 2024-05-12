// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'point_of_interest_value.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointOfInterestValueImpl _$$PointOfInterestValueImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PointOfInterestValueImpl',
      json,
      ($checkedConvert) {
        final val = _$PointOfInterestValueImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
          forType: $checkedConvert('forType', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PointOfInterestValueImplToJson(
        _$PointOfInterestValueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'forType': instance.forType,
    };

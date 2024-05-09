// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'symptom.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomImpl _$$SymptomImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SymptomImpl',
      json,
      ($checkedConvert) {
        final val = _$SymptomImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          desc: $checkedConvert('desc', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          values: $checkedConvert(
              'values',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SymptomImplToJson(_$SymptomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'desc': instance.desc,
      'type': instance.type,
      'values': instance.values,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'look_up_response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LookUpResponseImpl _$$LookUpResponseImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LookUpResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$LookUpResponseImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LookUpResponseImplToJson(
        _$LookUpResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

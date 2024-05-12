// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'essential_user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EssentialUserImpl _$$EssentialUserImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EssentialUserImpl',
      json,
      ($checkedConvert) {
        final val = _$EssentialUserImpl(
          id: $checkedConvert('id', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$EssentialUserImplToJson(_$EssentialUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

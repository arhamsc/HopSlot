// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'hospital_essential.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HospitalEssentialImpl _$$HospitalEssentialImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$HospitalEssentialImpl',
      json,
      ($checkedConvert) {
        final val = _$HospitalEssentialImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          address: $checkedConvert('address', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HospitalEssentialImplToJson(
        _$HospitalEssentialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
    };

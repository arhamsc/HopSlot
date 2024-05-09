// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'doctor.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$DoctorImpl',
      json,
      ($checkedConvert) {
        final val = _$DoctorImpl(
          hospitalId: $checkedConvert('hospitalId', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          cabinNumber:
              $checkedConvert('cabinNumber', (v) => (v as num).toInt()),
          cabinFloor: $checkedConvert('cabinFloor', (v) => (v as num).toInt()),
          cabinLat: $checkedConvert('cabinLat', (v) => (v as num).toDouble()),
          cabinLng: $checkedConvert('cabinLng', (v) => (v as num).toDouble()),
          cabinAlt: $checkedConvert('cabinAlt', (v) => (v as num).toDouble()),
          noOfPatientsConsulted: $checkedConvert(
              'noOfPatientsConsulted', (v) => (v as num).toInt()),
          lastClockIn: $checkedConvert('lastClockIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'hospitalId': instance.hospitalId,
      'userId': instance.userId,
      'cabinNumber': instance.cabinNumber,
      'cabinFloor': instance.cabinFloor,
      'cabinLat': instance.cabinLat,
      'cabinLng': instance.cabinLng,
      'cabinAlt': instance.cabinAlt,
      'noOfPatientsConsulted': instance.noOfPatientsConsulted,
      'lastClockIn': instance.lastClockIn?.toIso8601String(),
    };

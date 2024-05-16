// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'appointment_item.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentItemImpl _$$AppointmentItemImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AppointmentItemImpl',
      json,
      ($checkedConvert) {
        final val = _$AppointmentItemImpl(
          id: $checkedConvert('id', (v) => v as String),
          patient: $checkedConvert('patient',
              (v) => EssentialUser.fromJson(v as Map<String, dynamic>)),
          doctor: $checkedConvert('doctor',
              (v) => EssentialUser.fromJson(v as Map<String, dynamic>)),
          appointmentStart: $checkedConvert(
              'appointmentStart', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AppointmentItemImplToJson(
        _$AppointmentItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patient': instance.patient.toJson(),
      'doctor': instance.doctor.toJson(),
      'appointmentStart': instance.appointmentStart.toIso8601String(),
    };

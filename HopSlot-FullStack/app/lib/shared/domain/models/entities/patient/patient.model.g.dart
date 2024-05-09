// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'patient.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PatientImpl',
      json,
      ($checkedConvert) {
        final val = _$PatientImpl(
          userId: $checkedConvert('userId', (v) => v as String),
          age: $checkedConvert('age', (v) => (v as num).toInt()),
          lastAppointmentId:
              $checkedConvert('appointmentId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'lastAppointmentId': 'appointmentId'},
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'age': instance.age,
      'appointmentId': instance.lastAppointmentId,
    };

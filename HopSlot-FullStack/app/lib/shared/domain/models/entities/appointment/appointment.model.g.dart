// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'appointment.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AppointmentImpl',
      json,
      ($checkedConvert) {
        final val = _$AppointmentImpl(
          id: $checkedConvert('id', (v) => v as String),
          hospitalId: $checkedConvert('hospitalId', (v) => v as String),
          doctorId: $checkedConvert('doctorId', (v) => v as String),
          patientId: $checkedConvert('patientId', (v) => v as String),
          appointmentSlotId:
              $checkedConvert('appointmentSlotId', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$EAppointmentStatusEnumMap, v)),
          additionalDelay:
              $checkedConvert('additionalDelay', (v) => (v as num).toInt()),
          appointmentStart: $checkedConvert('appointmentStart',
              (v) => v == null ? null : DateTime.parse(v as String)),
          appointmentStartDelay: $checkedConvert(
              'appointmentStartDelay', (v) => (v as num?)?.toInt()),
          severity: $checkedConvert('severity', (v) => (v as num?)?.toInt()),
          symptoms: $checkedConvert(
              'symptoms',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Symptom.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          patient: $checkedConvert(
              'patient',
              (v) => v == null
                  ? null
                  : EssentialUser.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hospitalId': instance.hospitalId,
      'doctorId': instance.doctorId,
      'patientId': instance.patientId,
      'appointmentSlotId': instance.appointmentSlotId,
      'status': _$EAppointmentStatusEnumMap[instance.status]!,
      'additionalDelay': instance.additionalDelay,
      'appointmentStart': instance.appointmentStart?.toIso8601String(),
      'appointmentStartDelay': instance.appointmentStartDelay,
      'severity': instance.severity,
      'symptoms': instance.symptoms.map((e) => e.toJson()).toList(),
      'patient': instance.patient?.toJson(),
    };

const _$EAppointmentStatusEnumMap = {
  EAppointmentStatus.pending: 'PENDING',
  EAppointmentStatus.confirmed: 'CONFIRMED',
  EAppointmentStatus.cancelled: 'CANCELLED',
  EAppointmentStatus.completed: 'COMPLETED',
};

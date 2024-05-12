// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'appointment_detail.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentDetailImpl _$$AppointmentDetailImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AppointmentDetailImpl',
      json,
      ($checkedConvert) {
        final val = _$AppointmentDetailImpl(
          id: $checkedConvert('id', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecode(_$EAppointmentStatusEnumMap, v)),
          additionalDelay:
              $checkedConvert('additionalDelay', (v) => (v as num).toInt()),
          hospital: $checkedConvert('hospital',
              (v) => HospitalEssential.fromJson(v as Map<String, dynamic>)),
          appointmentStart: $checkedConvert(
              'appointmentStart', (v) => DateTime.parse(v as String)),
          appointmentStartDelay: $checkedConvert(
              'appointmentStartDelay', (v) => (v as num).toInt()),
          patient: $checkedConvert('patient',
              (v) => EssentialUser.fromJson(v as Map<String, dynamic>)),
          doctor: $checkedConvert('doctor',
              (v) => EssentialUser.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AppointmentDetailImplToJson(
        _$AppointmentDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$EAppointmentStatusEnumMap[instance.status]!,
      'additionalDelay': instance.additionalDelay,
      'hospital': instance.hospital.toJson(),
      'appointmentStart': instance.appointmentStart.toIso8601String(),
      'appointmentStartDelay': instance.appointmentStartDelay,
      'patient': instance.patient.toJson(),
      'doctor': instance.doctor.toJson(),
    };

const _$EAppointmentStatusEnumMap = {
  EAppointmentStatus.pending: 'PENDING',
  EAppointmentStatus.confirmed: 'CONFIRMED',
  EAppointmentStatus.cancelled: 'CANCELLED',
  EAppointmentStatus.completed: 'COMPLETED',
};

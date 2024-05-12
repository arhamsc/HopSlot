// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'patient_home.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientHomeStateImpl _$$PatientHomeStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PatientHomeStateImpl',
      json,
      ($checkedConvert) {
        final val = _$PatientHomeStateImpl(
          upcomingAppointments: $checkedConvert(
              'upcomingAppointments',
              (v) => (v as List<dynamic>)
                  .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
                  .toList()),
          pastAppointments: $checkedConvert(
              'pastAppointments',
              (v) => (v as List<dynamic>)
                  .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PatientHomeStateImplToJson(
        _$PatientHomeStateImpl instance) =>
    <String, dynamic>{
      'upcomingAppointments':
          instance.upcomingAppointments.map((e) => e.toJson()).toList(),
      'pastAppointments':
          instance.pastAppointments.map((e) => e.toJson()).toList(),
    };

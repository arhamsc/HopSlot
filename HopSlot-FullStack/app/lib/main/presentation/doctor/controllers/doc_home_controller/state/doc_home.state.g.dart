// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'doc_home.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocHomeStateImpl _$$DocHomeStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DocHomeStateImpl',
      json,
      ($checkedConvert) {
        final val = _$DocHomeStateImpl(
          todaysAppointments: $checkedConvert(
              'todaysAppointments',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          Appointment.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          docStats: $checkedConvert(
              'docStats', (v) => DocStats.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DocHomeStateImplToJson(_$DocHomeStateImpl instance) =>
    <String, dynamic>{
      'todaysAppointments':
          instance.todaysAppointments.map((e) => e.toJson()).toList(),
      'docStats': instance.docStats.toJson(),
    };

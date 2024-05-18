// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'all_appointments.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllAppointmentStateImpl _$$AllAppointmentStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AllAppointmentStateImpl',
      json,
      ($checkedConvert) {
        final val = _$AllAppointmentStateImpl(
          appointmentItems: $checkedConvert(
              'appointmentItems',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      AppointmentItem.fromJson(e as Map<String, dynamic>))
                  .toList()),
          appointmentDetail: $checkedConvert(
              'appointmentDetail',
              (v) => v == null
                  ? null
                  : AppointmentDetail.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AllAppointmentStateImplToJson(
        _$AllAppointmentStateImpl instance) =>
    <String, dynamic>{
      'appointmentItems':
          instance.appointmentItems.map((e) => e.toJson()).toList(),
      'appointmentDetail': instance.appointmentDetail?.toJson(),
    };

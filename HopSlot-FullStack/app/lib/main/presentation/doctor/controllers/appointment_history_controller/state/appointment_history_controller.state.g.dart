// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'appointment_history_controller.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentHistoryControllerStateImpl
    _$$AppointmentHistoryControllerStateImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$AppointmentHistoryControllerStateImpl',
          json,
          ($checkedConvert) {
            final val = _$AppointmentHistoryControllerStateImpl(
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

Map<String, dynamic> _$$AppointmentHistoryControllerStateImplToJson(
        _$AppointmentHistoryControllerStateImpl instance) =>
    <String, dynamic>{
      'appointmentItems':
          instance.appointmentItems.map((e) => e.toJson()).toList(),
      'appointmentDetail': instance.appointmentDetail?.toJson(),
    };

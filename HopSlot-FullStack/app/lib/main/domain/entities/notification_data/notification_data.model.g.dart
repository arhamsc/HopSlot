// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'notification_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$NotificationDataImpl',
      json,
      ($checkedConvert) {
        final val = _$NotificationDataImpl(
          fromId: $checkedConvert('fromId', (v) => v as String),
          fromRole: $checkedConvert(
              'fromRole', (v) => $enumDecode(_$ERoleEnumMap, v)),
          code: $checkedConvert('code', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String),
          appointmentId: $checkedConvert('appointmentId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'fromId': instance.fromId,
      'fromRole': _$ERoleEnumMap[instance.fromRole]!,
      'code': instance.code,
      'message': instance.message,
      'appointmentId': instance.appointmentId,
    };

const _$ERoleEnumMap = {
  ERole.hospAdmin: 'HOSP_ADMIN',
  ERole.patient: 'PATIENT',
  ERole.doctor: 'DOCTOR',
  ERole.admin: 'ADMIN',
};

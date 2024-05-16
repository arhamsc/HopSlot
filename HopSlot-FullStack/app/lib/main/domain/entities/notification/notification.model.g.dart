// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'notification.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$NotificationImpl',
      json,
      ($checkedConvert) {
        final val = _$NotificationImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          title: $checkedConvert('title', (v) => v as String),
          body: $checkedConvert('body', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : NotificationData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data?.toJson(),
    };

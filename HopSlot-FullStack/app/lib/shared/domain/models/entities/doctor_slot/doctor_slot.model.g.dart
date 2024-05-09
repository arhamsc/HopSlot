// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'doctor_slot.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorSlotImpl _$$DoctorSlotImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DoctorSlotImpl',
      json,
      ($checkedConvert) {
        final val = _$DoctorSlotImpl(
          id: $checkedConvert('id', (v) => v as String),
          doctorId: $checkedConvert('doctorId', (v) => v as String),
          slotStartTime: $checkedConvert(
              'slotStartTime', (v) => DateTime.parse(v as String)),
          slotEndTime: $checkedConvert(
              'slotEndTime', (v) => DateTime.parse(v as String)),
          durationOfPerVisit:
              $checkedConvert('durationOfPerVisit', (v) => (v as num).toInt()),
          forDay: $checkedConvert('forDay',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          status: $checkedConvert(
              'status', (v) => Status.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DoctorSlotImplToJson(_$DoctorSlotImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctorId': instance.doctorId,
      'slotStartTime': instance.slotStartTime.toIso8601String(),
      'slotEndTime': instance.slotEndTime.toIso8601String(),
      'durationOfPerVisit': instance.durationOfPerVisit,
      'forDay': instance.forDay,
      'status': instance.status.toJson(),
    };

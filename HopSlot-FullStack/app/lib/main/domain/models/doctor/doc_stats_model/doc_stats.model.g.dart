// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'doc_stats.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocStatsImpl _$$DocStatsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DocStatsImpl',
      json,
      ($checkedConvert) {
        final val = _$DocStatsImpl(
          totalAppointments:
              $checkedConvert('totalAppointments', (v) => (v as num).toInt()),
          totalPatients:
              $checkedConvert('totalPatients', (v) => (v as num).toInt()),
          totalPrescriptions:
              $checkedConvert('totalPrescriptions', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DocStatsImplToJson(_$DocStatsImpl instance) =>
    <String, dynamic>{
      'totalAppointments': instance.totalAppointments,
      'totalPatients': instance.totalPatients,
      'totalPrescriptions': instance.totalPrescriptions,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'report.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$ReportImpl',
      json,
      ($checkedConvert) {
        final val = _$ReportImpl(
          id: $checkedConvert('id', (v) => v as String),
          doctorId: $checkedConvert('doctorId', (v) => v as String),
          patientId: $checkedConvert('patientId', (v) => v as String),
          issueDate:
              $checkedConvert('issueDate', (v) => DateTime.parse(v as String)),
          signedBy: $checkedConvert('signedBy', (v) => v as String),
          reportPublicId: $checkedConvert('reportPublicId', (v) => v as String),
          reportSecureUrl:
              $checkedConvert('reportSecureUrl', (v) => v as String),
          prescriptionId: $checkedConvert('prescriptionId', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctorId': instance.doctorId,
      'patientId': instance.patientId,
      'issueDate': instance.issueDate.toIso8601String(),
      'signedBy': instance.signedBy,
      'reportPublicId': instance.reportPublicId,
      'reportSecureUrl': instance.reportSecureUrl,
      'prescriptionId': instance.prescriptionId,
    };

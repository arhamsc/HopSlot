// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'prescription.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionImpl _$$PrescriptionImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PrescriptionImpl',
      json,
      ($checkedConvert) {
        final val = _$PrescriptionImpl(
          id: $checkedConvert('id', (v) => v as String),
          appointmentId: $checkedConvert('appointmentId', (v) => v as String),
          patientId: $checkedConvert('patientId', (v) => v as String),
          doctorId: $checkedConvert('doctorId', (v) => v as String),
          issueDate:
              $checkedConvert('issueDate', (v) => DateTime.parse(v as String)),
          body: $checkedConvert('body', (v) => v as String),
          otherNotes: $checkedConvert('otherNotes', (v) => v as String?),
          docSign: $checkedConvert('docSign', (v) => v as String),
          reports: $checkedConvert(
              'report',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => Report.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
      fieldKeyMap: const {'reports': 'report'},
    );

Map<String, dynamic> _$$PrescriptionImplToJson(_$PrescriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'appointmentId': instance.appointmentId,
      'patientId': instance.patientId,
      'doctorId': instance.doctorId,
      'issueDate': instance.issueDate.toIso8601String(),
      'body': instance.body,
      'otherNotes': instance.otherNotes,
      'docSign': instance.docSign,
      'report': instance.reports.map((e) => e.toJson()).toList(),
    };

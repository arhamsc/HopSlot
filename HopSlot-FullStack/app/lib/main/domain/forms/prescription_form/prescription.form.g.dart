// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'prescription.form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrescriptionFormImpl _$$PrescriptionFormImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PrescriptionFormImpl',
      json,
      ($checkedConvert) {
        final val = _$PrescriptionFormImpl(
          doctorId: $checkedConvert('doctorId', (v) => v as String?),
          appointmentId: $checkedConvert('appointmentId', (v) => v as String?),
          patientId: $checkedConvert('patientId', (v) => v as String?),
          body: $checkedConvert('body', (v) => v as String?),
          docSign: $checkedConvert('docSign', (v) => v as String?),
          otherNotes: $checkedConvert('otherNotes', (v) => v as String?),
          report: $checkedConvert(
              'report',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>,
                  MultiFile<String>>(v, const MultiFileTransformer().fromJson)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PrescriptionFormImplToJson(
        _$PrescriptionFormImpl instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'appointmentId': instance.appointmentId,
      'patientId': instance.patientId,
      'body': instance.body,
      'docSign': instance.docSign,
      'otherNotes': instance.otherNotes,
      'report': _$JsonConverterToJson<Map<String, dynamic>, MultiFile<String>>(
          instance.report, const MultiFileTransformer().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

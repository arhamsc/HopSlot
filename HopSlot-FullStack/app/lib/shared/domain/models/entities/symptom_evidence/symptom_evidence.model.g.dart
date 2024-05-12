// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'symptom_evidence.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SymptomEvidenceImpl _$$SymptomEvidenceImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SymptomEvidenceImpl',
      json,
      ($checkedConvert) {
        final val = _$SymptomEvidenceImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          dataType: $checkedConvert('dataType', (v) => v as String),
          codeQuestion: $checkedConvert('codeQuestion', (v) => v as String),
          defaultValue: $checkedConvert(
              'defaultValue',
              (v) => v == null
                  ? null
                  : PointOfInterestValue.fromJson(v as Map<String, dynamic>)),
          isActecedent: $checkedConvert('isActecedent', (v) => v as bool),
          question: $checkedConvert('question', (v) => v as String),
          possibleValues: $checkedConvert(
              'possibleValues',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      PointOfInterestValue.fromJson(e as Map<String, dynamic>))
                  .toList()),
          values: $checkedConvert(
              'values',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SymptomEvidenceImplToJson(
        _$SymptomEvidenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dataType': instance.dataType,
      'codeQuestion': instance.codeQuestion,
      'defaultValue': instance.defaultValue?.toJson(),
      'isActecedent': instance.isActecedent,
      'question': instance.question,
      'possibleValues': instance.possibleValues.map((e) => e.toJson()).toList(),
      'values': instance.values,
    };

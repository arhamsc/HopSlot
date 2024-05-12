import 'package:app/shared/domain/models/entities/point_of_interest_value/point_of_interest_value.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'symptom_evidence.model.freezed.dart';

part 'symptom_evidence.model.g.dart';

@freezed
@RfGroup()
class SymptomEvidence with _$SymptomEvidence {
  const factory SymptomEvidence({
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required String id,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required String name,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required String dataType,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required String codeQuestion,
    required PointOfInterestValue? defaultValue,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required bool isActecedent,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required String question,
    required List<PointOfInterestValue> possibleValues,

    /// Form Helper
    @RfControl() @Default([]) List<String> values,
  }) = _SymptomEvidence;

  factory SymptomEvidence.fromJson(Map<String, dynamic> json) =>
      _$SymptomEvidenceFromJson(json);
}

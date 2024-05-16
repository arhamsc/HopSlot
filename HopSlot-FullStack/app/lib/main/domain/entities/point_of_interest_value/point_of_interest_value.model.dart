import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'point_of_interest_value.model.freezed.dart';

part 'point_of_interest_value.model.g.dart';

@freezed
@RfGroup()
class PointOfInterestValue with _$PointOfInterestValue {
  const factory PointOfInterestValue({
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
    required String value,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    required String forType,
  }) = _PointOfInterestValue;

  factory PointOfInterestValue.fromJson(Map<String, dynamic> json) =>
      _$PointOfInterestValueFromJson(json);
}

library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'symptom.model.freezed.dart';

part 'symptom.model.g.dart';

@freezed
class Symptom with _$Symptom {
  const factory Symptom({
    required String id,
    required String name,
    required String desc,
    required String type,
    @Default([]) List<String> values,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
}

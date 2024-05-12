import 'package:freezed_annotation/freezed_annotation.dart';

part 'look_up_response.model.freezed.dart';
part 'look_up_response.model.g.dart';

@freezed
class LookUpResponse with _$LookUpResponse {
  const factory LookUpResponse({
    required String id,
    required String name,
  }) = _LookUpResponse;

  factory LookUpResponse.fromJson(Map<String, dynamic> json) =>
      _$LookUpResponseFromJson(json);
}

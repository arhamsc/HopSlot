import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.model.freezed.dart';
part 'api_response.model.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();

  const factory ApiResponse({
    required String message,

    ///This is the entity data
    T? data,

    ///Below two exists only when error
    @Default(null) String? error,

    ///Sent in case of error only.
    @Default(200) int? statusCode,
  }) = _ApiResponse;

//Should be a function body only and not expression (direct returns)
  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic json) fromJsonT) {
    return _$ApiResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T value) toJsonT) {
    return _$ApiResponseToJson<T>(this, toJsonT);
  }
}

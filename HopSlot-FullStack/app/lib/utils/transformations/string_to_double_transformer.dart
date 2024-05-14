import 'package:freezed_annotation/freezed_annotation.dart';

class StringToDoubleTransformer extends JsonConverter<double, String> {
  const StringToDoubleTransformer();

  @override
  double fromJson(String json) {
    return double.parse(json);
  }

  @override
  String toJson(double object) {
    return object.toString();
  }
}

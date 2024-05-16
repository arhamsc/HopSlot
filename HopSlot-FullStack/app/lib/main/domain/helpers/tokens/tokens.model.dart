import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'tokens.model.freezed.dart';
part 'tokens.model.g.dart';

@freezed
@HiveType(typeId: 1)
class Tokens with _$Tokens {
  const factory Tokens({
    @HiveField(0) required String at,
    @HiveField(1) required String rt,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  factory Tokens.empty() => const Tokens(
        at: '',
        rt: '',
      );
}

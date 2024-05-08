import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.model.freezed.dart';
part 'tokens.model.g.dart';

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    required String at,
    required String rt,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

  factory Tokens.empty() => const Tokens(
        at: '',
        rt: '',
      );
}

import 'package:app/shared/domain/models/tokens/tokens.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String username,
    required String firstName,
    required String lastName,
    required String role,
    String? fcmToken,
    required Tokens tokens,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.empty() => User(
        id: '',
        email: '',
        username: '',
        firstName: '',
        lastName: '',
        role: '',
        tokens: Tokens.empty(),
      );
}

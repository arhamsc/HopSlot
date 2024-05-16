import 'package:app/main/domain/helpers/tokens/tokens.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.model.freezed.dart';

part 'user.model.g.dart';

@freezed
@HiveType(typeId: 0)
class User with _$User {
  const factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String email,
    @HiveField(2) required String username,
    @HiveField(3) required String firstName,
    @HiveField(4) required String lastName,
    @HiveField(5) required String role,
    @HiveField(6) String? fcmToken,
    @HiveField(7) required Tokens tokens,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.empty() => User(
        id: '',
        email: '',
        username: '',
        firstName: '',
        lastName: '',
        role: '',
        fcmToken: null,
        tokens: Tokens.empty(),
      );
}

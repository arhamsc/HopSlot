import 'package:freezed_annotation/freezed_annotation.dart';

part 'essential_user.model.g.dart';

part 'essential_user.model.freezed.dart';

@freezed
class EssentialUser with _$EssentialUser {
  const factory EssentialUser({
    required String id,
    required String firstName,
    required String lastName,
  }) = _EssentialUser;

  factory EssentialUser.fromJson(Map<String, dynamic> json) =>
      _$EssentialUserFromJson(json);
}

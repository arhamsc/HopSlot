import 'package:app/shared/domain/models/user/user.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  Box<User> box = Hive.box<User>('currentUser');

  @override
  User build() {
    if (box.containsKey('loggedInUser')) {
      final user = box.get('loggedInUser');
      bool isExpired = JwtDecoder.isExpired(user?.tokens.at ?? "");
      if (isExpired) {
        box.delete('loggedInUser');
        return User.empty();
      }
      return user ?? User.empty();
    }
    return User.empty();
  }

  void update(User user) {
    bool isExpired = JwtDecoder.isExpired(user.tokens.at);
    if (isExpired) {
      box.delete('loggedInUser');
      state = User.empty();
      return;
    }
    state = user;
    box.put('loggedInUser', user);
  }

  void setNull() {
    box.delete('loggedInUser');
    state = User.empty();
  }
}

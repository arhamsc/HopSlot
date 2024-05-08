import 'package:app/shared/domain/models/user/user.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user.provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  @override
  User build() {
    return User.empty();
  }

  void update(User user) {
    state = user;
  }
}

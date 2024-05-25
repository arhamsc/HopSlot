import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fcm_token.listener.g.dart';

@Riverpod(keepAlive: true)
class FCMTokenListener extends _$FCMTokenListener {
  @override
  void build() {
    listenToProvider();
  }

  void listenToProvider() {
    ref.listen(userNotifierProvider, (previous, next) async {
      if (next == User.empty()) {
        return;
      }

      if (next.fcmToken == null || (next.fcmToken?.isEmpty ?? false)) {
        final token = await FirebaseMessaging.instance.getToken();
        final res = await ref.read(updateTokenUCProvider).call(token ?? "");
        if (res.isRight()) {
          ref
              .read(userNotifierProvider.notifier)
              .update(next.copyWith(fcmToken: token));
        }
      }
    });
  }
}

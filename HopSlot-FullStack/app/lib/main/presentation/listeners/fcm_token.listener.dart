import 'package:app/main/domain/abstracts/provider_listener.abstract.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FCMTokenListener extends ProviderListener {
  FCMTokenListener(super.ref);

  @override
  void listenToProvider() {
    ref.listen(userNotifierProvider, (previous, next) async {
      if (next == User.empty()) {
        return;
      }

      if (next.tokens.at.isEmpty) {
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

import 'package:app/core/logger/talker.dart';
import 'package:app/main/domain/use_cases/auth_ucs/update_token.uc.dart';
import 'package:app/shared/domain/models/entities/user/user.model.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FBMessagingService {
  final FirebaseMessaging _firebaseMessaging;
  final UpdateTokenUC _updateTokenUC;
  final Ref _ref;

  FBMessagingService(this._firebaseMessaging, this._updateTokenUC, this._ref) {
    _setupOnTokenChanged();
  }

  Future<void> requestPermission() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  _setupOnTokenChanged() {
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      _ref.read(talkerProvider).talker.debug("Token refreshed: $token");
      final user = _ref.read(userNotifierProvider);

      if (user == User.empty()) {
        return;
      }

      await _updateTokenUC.call(token);
    });
  }
}

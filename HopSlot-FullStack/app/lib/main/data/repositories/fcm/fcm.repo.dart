import 'dart:async';

import 'package:app/utils/exceptions/app_exception.dart';
import 'package:app/utils/exceptions/task_try_catch_error.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fpdart/fpdart.dart';

typedef OnBgMessage = void Function(Future<void> Function(RemoteMessage));

class FCMRepo {
  final FirebaseMessaging _firebaseMessaging;
  final Stream<RemoteMessage> _onMessageOpenedApp, _onMessage;
  final OnBgMessage _onBackgroundMessage;
  final Stream<String> _onTokenRefresh;

  FCMRepo({
    required FirebaseMessaging firebaseMessaging,
    required Stream<RemoteMessage> onMessageOpenedApp,
    required Stream<RemoteMessage> onMessage,
    required OnBgMessage onBackgroundMessage,
    required Stream<String> onTokenRefresh,
  })  : _firebaseMessaging = firebaseMessaging,
        _onMessageOpenedApp = onMessageOpenedApp,
        _onMessage = onMessage,
        _onBackgroundMessage = onBackgroundMessage,
        _onTokenRefresh = onTokenRefresh;

  TaskEither<AppException, bool?> requestPermission() {
    return taskTryCatchWrapperRepo(() async {
      final status = await _firebaseMessaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      if (status.authorizationStatus != AuthorizationStatus.authorized) {
        throw AppException(
          message: 'Permission denied',
          stackTrace: StackTrace.current,
        );
      }
      return true;
    });
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  StreamSubscription<String> setupOnTokenChanged(
      void Function(String)? onData) {
    return _onTokenRefresh.listen(onData);
  }

  void setupGetOnInit(
      FutureOr<dynamic> Function(RemoteMessage? message) handler) {
    _firebaseMessaging.getInitialMessage().then(handler);
  }

  StreamSubscription<RemoteMessage> setupOnMessageOpened(
      FutureOr<dynamic> Function(RemoteMessage? message) handler) {
    return _onMessageOpenedApp.listen(handler);
  }

  StreamSubscription<RemoteMessage> setupOnMessageReceived(
      FutureOr<dynamic> Function(RemoteMessage? message) handler) {
    return _onMessage.listen(handler);
  }

  void setupOnMessageBackground(
      Future<void> Function(RemoteMessage message) handler) {
    _onBackgroundMessage(handler);
  }
}

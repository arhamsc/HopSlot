import 'package:app/core/pragma_func.dart';
import 'package:app/main/data/repositories/fcm/fcm.repo.dart';
import 'package:app/main/data/repositories/fcm/flutter_local_noti.repo.dart';
import 'package:app/main/domain/entities/notification/notification.model.dart';
import 'package:app/main/domain/entities/notification_data/notification_data.model.dart';
import 'package:app/main/domain/use_cases/auth_ucs/update_token.uc.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:talker_flutter/talker_flutter.dart';

class FBMessagingService {
  final FCMRepo _fcm;
  final FlutterLocalNotificationRepo _fln;
  final UpdateTokenUC _updateTokenUC;
  final Talker _talker;
  final User _user;

  FBMessagingService({
    required FCMRepo fcm,
    required FlutterLocalNotificationRepo fln,
    required UpdateTokenUC updateTokenUC,
    required Talker talker,
    required User user,
  })  : _fcm = fcm,
        _fln = fln,
        _updateTokenUC = updateTokenUC,
        _talker = talker,
        _user = user {
    // _setupOnTokenChanged();
    initializePlugins().then((_) async {
      await _setupListeners();
    });
  }

  void onSelectNotificationIoS(
      int id, String? title, String? body, String? payload) {
    _talker.debug("onSelectNotificationIoS: $id, $title, $body, $payload");
  }

  void onSelectNotificationFLN(NotificationResponse notification) {
    _talker.debug(
        "onSelectNotificationIoSFLN: ${notification.payload}, ${notification.input}");
  }

  Future<void> initializePlugins() async {
    await _fcm.requestPermission().run();
    await _fln.createPlatformChannelAndroid();
    await _fln.initPlugin(
      onSelectNotificationIoS: onSelectNotificationIoS,
      onLocalNotificationForeground: onSelectNotificationFLN,
      onLocalNotificationBackground: onDidReceiveBGNotiFLN,
    );
  }

  Future<String?> getToken() async {
    return await _fcm.getToken();
  }

  _setupListeners() async {
    _fcm.setupOnTokenChanged((token) async {
      _talker.debug("Token refreshed: $token");
      if (_user == User.empty()) {
        return;
      }
      await _updateTokenUC.call(token);
    });

    _fcm.setupGetOnInit((message) async {
      if (message == null) {
        return;
      }
      _talker.debug("On Init Message: $message");
      final notification = Notification(
        body: message.notification?.body ?? '',
        title: message.notification?.title ?? '',
        id: message.messageId.hashCode ?? 0,
        data: message.data.isNotEmpty
            ? NotificationData.fromJson(message.data ?? {})
            : null,
      );
      await _fln.cancelAll();
      _fln.showNotification(notification: notification);
    });

    _fcm.setupOnMessageOpened((message) {
      _talker.debug("On Message Opened: $message");
      final notification = Notification(
        body: message?.notification?.body ?? '',
        title: message?.notification?.title ?? '',
        id: message?.messageId.hashCode ?? 0,
        data: NotificationData.fromJson(message?.data ?? {}),
      );
      _fln.showNotification(notification: notification);
    });

    _fcm.setupOnMessageReceived((message) {
      _talker.debug("On Message Received: $message, data: ${message?.data}");
      final notification = Notification(
        body: message?.notification?.body ?? '',
        title: message?.notification?.title ?? '',
        id: message?.messageId.hashCode ?? 0,
        data: message?.data != null && (message?.data.isNotEmpty ?? false)
            ? NotificationData.fromJson(message?.data ?? {})
            : null,
      );
      _fln.showNotification(notification: notification);
    });

    _fcm.setupOnMessageBackground(onFCMBackground);
  }
}

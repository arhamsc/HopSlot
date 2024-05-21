import 'package:app/core/logger/talker.dart';
import 'package:app/core/pragma_func.dart';
import 'package:app/main/data/providers/repo_providers/repo.providers.dart';
import 'package:app/main/domain/entities/notification/notification.model.dart';
import 'package:app/main/domain/entities/notification_data/notification_data.model.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification.service.g.dart';

@Riverpod(keepAlive: true)
class FBMessagingService extends _$FBMessagingService {
  final fln = FlutterLocalNotificationsPlugin();

  @override
  Future<void> build() async {
    await initializePlugins();
    await _setupListeners();
  }

  void onSelectNotificationIoS(
      int id, String? title, String? body, String? payload) {
    ref
        .read(talkerProvider)
        .talker
        .debug("onSelectNotificationIoS: $id, $title, $body, $payload");
  }

  void onSelectNotificationFLN(NotificationResponse notification) {
    ref.read(talkerProvider).talker.debug(
        "onSelectNotificationIoSFLN: ${notification.payload}, ${notification.input}");
  }

  Future<void> initializePlugins() async {
    await ref.read(fcmRepoProvider).requestPermission().run();
    await ref
        .read(flutterLocalNotificationRepoProvider(fln))
        .createPlatformChannelAndroid();
    await ref.read(flutterLocalNotificationRepoProvider(fln)).initPlugin(
          onSelectNotificationIoS: onSelectNotificationIoS,
          onLocalNotificationForeground: onSelectNotificationFLN,
          onLocalNotificationBackground: onDidReceiveBGNotiFLN,
        );
  }

  Future<String?> getToken() async {
    return await ref.read(fcmRepoProvider).getToken();
  }

  _setupListeners() async {
    ref.read(fcmRepoProvider).setupOnTokenChanged((token) async {
      ref.read(talkerProvider).talker.debug("Token refreshed: $token");
      if (ref.read(userNotifierProvider) == User.empty()) {
        return;
      }
      await ref.read(updateTokenUCProvider).call(token);
    });

    ref.read(fcmRepoProvider).setupGetOnInit((message) async {
      if (message == null) {
        return;
      }
      ref.read(talkerProvider).talker.debug("On Init Message: $message");
      final notification = Notification(
        body: message.notification?.body ?? '',
        title: message.notification?.title ?? '',
        id: message.messageId.hashCode,
        data: message.data.isNotEmpty
            ? NotificationData.fromJson(message.data)
            : null,
      );
      await ref.read(flutterLocalNotificationRepoProvider(fln)).cancelAll();
      ref
          .read(flutterLocalNotificationRepoProvider(fln))
          .showNotification(notification: notification);
    });

    ref.read(fcmRepoProvider).setupOnMessageOpened((message) {
      ref.read(talkerProvider).talker.debug("On Message Opened: $message");
      final notification = Notification(
        body: message?.notification?.body ?? '',
        title: message?.notification?.title ?? '',
        id: message?.messageId.hashCode ?? 0,
        data: NotificationData.fromJson(message?.data ?? {}),
      );
      ref
          .read(flutterLocalNotificationRepoProvider(fln))
          .showNotification(notification: notification);
    });

    ref.read(fcmRepoProvider).setupOnMessageReceived((message) {
      ref
          .read(talkerProvider)
          .talker
          .debug("On Message Received: $message, data: ${message?.data}");
      final notification = Notification(
        body: message?.notification?.body ?? '',
        title: message?.notification?.title ?? '',
        id: message?.messageId.hashCode ?? 0,
        data: message?.data != null && (message?.data.isNotEmpty ?? false)
            ? NotificationData.fromJson(message?.data ?? {})
            : null,
      );
      ref
          .read(flutterLocalNotificationRepoProvider(fln))
          .showNotification(notification: notification);
    });

    ref.read(fcmRepoProvider).setupOnMessageBackground(onFCMBackground);
  }
}

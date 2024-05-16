import "package:app/main/domain/entities/notification/notification.model.dart";
import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:talker_flutter/talker_flutter.dart";

typedef OnSelectIoSFunction = void Function(
  int id,
  String? title,
  String? body,
  String? payload,
);

typedef OnLocalNotification = void Function(NotificationResponse);

class FlutterLocalNotificationRepo {
  final FlutterLocalNotificationsPlugin _plugin;
  final Talker _talker;

  FlutterLocalNotificationRepo(this._plugin, this._talker);

  AndroidNotificationDetails getAndroidSettings({String? subtext}) {
    return AndroidNotificationDetails(
      dotenv.get("HOPSLOT_APPOINTMENT_CHANNEL_ID"),
      "Hopslot Appointments Channel",
      channelDescription: "Hopslot Appointments Channel for notifications",
      enableVibration: true,
      playSound: true,
      importance: Importance.high,
      icon: "@mipmap/ic_launcher",
      subText: subtext,
    );
  }

  DarwinNotificationDetails getDarwinSettings({
    String? subtext,
  }) {
    return DarwinNotificationDetails(
      presentSound: true,
      presentBanner: true,
      subtitle: subtext,
    );
  }

  InitializationSettings _getInitSettings({
    required OnSelectIoSFunction onSelectNotificationIoS,
  }) {
    const androidSettings = AndroidInitializationSettings(
      "@mipmap/ic_launcher",
    );

    final iOSSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: onSelectNotificationIoS,
    );
    return InitializationSettings(
      android: androidSettings,
      iOS: iOSSettings,
    );
  }

  /// Make sure to call this method before showing any notifications or settings
  Future<bool?> initPlugin({
    required OnSelectIoSFunction onSelectNotificationIoS,
    required OnLocalNotification onLocalNotificationForeground,
    required OnLocalNotification onLocalNotificationBackground,
  }) async {
    final settings =
        _getInitSettings(onSelectNotificationIoS: onSelectNotificationIoS);
    return await _plugin.initialize(
      settings,
      onDidReceiveBackgroundNotificationResponse: onLocalNotificationBackground,
      onDidReceiveNotificationResponse: onLocalNotificationForeground,
    );
  }

  /// Make sure to call this method before showing any notifications
  Future<void> createPlatformChannelAndroid() async {
    final androidSettings = getAndroidSettings();

    final androidChannel = AndroidNotificationChannel(
      androidSettings.channelId,
      androidSettings.channelName,
      description: androidSettings.channelDescription,
      importance: androidSettings.importance,
      playSound: androidSettings.playSound,
      enableVibration: androidSettings.enableVibration,
      sound: androidSettings.sound,
    );

    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidChannel);
  }

  Future<void> showNotification({
    required Notification notification,
    String? subtext,
  }) async {
    try {
      final notificationDetails = NotificationDetails(
        android: getAndroidSettings(subtext: subtext),
        iOS: getDarwinSettings(subtext: subtext),
      );
      await _plugin.show(
        notification.id,
        notification.title,
        notification.body,
        notificationDetails,
        payload: notification.data?.toJson().toString(),
      );
    } catch (e) {
      _talker.error(
        "Error showing notification: ${notification.id}",
        e,
        StackTrace.current,
      );
    }
  }

  Future<void> cancelAll() async {
    await _plugin.cancelAll();
  }
}

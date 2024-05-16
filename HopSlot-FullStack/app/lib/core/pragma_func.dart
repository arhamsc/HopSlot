import 'dart:convert';

import 'package:app/main/domain/entities/notification_data/notification_data.model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

@pragma("vm:entry-point")
Future<void> onDidReceiveBGNotiFLN(NotificationResponse notification) async {
  print("__-------_FROM FLN--------");
  final payload = jsonDecode(notification.payload ?? "{}");
  final data = NotificationData.fromJson(payload);
  await dotenv.load();
  print("---------------------");
  print(
    "onDidReceiveBGNotiFLN: $notification, ${notification.payload}, --- $data",
  );
  print("------------LOGIC------------------");
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Define the Android notification details
  AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    dotenv.get("HOPSLOT_APPOINTMENT_CHANNEL_ID"),
    "Hopslot Appointments Channel",
    channelDescription: "Hopslot Appointments Channel for notifications",
    enableVibration: true,
    playSound: true,
    importance: Importance.high,
    priority: Priority.high,
    icon: "@mipmap/ic_launcher",
  );

  // Define the iOS notification details
  DarwinNotificationDetails iOSPlatformChannelSpecifics =
      const DarwinNotificationDetails(
    presentSound: true,
    presentBanner: true,
  );

  // Combine the notification details for both platforms
  NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );

  // Show the notification
  await flutterLocalNotificationsPlugin.show(
    1,
    "Message from HopSlot",
    data.message,
    platformChannelSpecifics,
  );
}

@pragma("vm:entry-point")
Future<void> onFCMBackground(RemoteMessage message) async {
  print("-------FROM FCM--------");
  final notificationData = NotificationData.fromJson(message.data);
  await dotenv.load();
  print("---------------------");
  print(
    "onDidReceiveBGNotiFLN: $notificationData, ${message.notification},",
  );
  print("------------LOGIC------------------");

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // Define the Android notification details
  AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    dotenv.get("HOPSLOT_APPOINTMENT_CHANNEL_ID"),
    "Hopslot Appointments Channel",
    channelDescription: "Hopslot Appointments Channel for notifications",
    enableVibration: true,
    playSound: false,
    importance: Importance.high,
    priority: Priority.high,
    icon: "@mipmap/ic_launcher",
  );

  // Define the iOS notification details
  DarwinNotificationDetails iOSPlatformChannelSpecifics =
      const DarwinNotificationDetails(
    presentSound: true,
    presentBanner: true,
  );

  // Combine the notification details for both platforms
  NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );

  flutterLocalNotificationsPlugin.cancelAll();

  // Show the notification
  await flutterLocalNotificationsPlugin.show(
    message.hashCode,
    message.notification?.title ?? "Message from HopSlot",
    message.notification?.body ?? notificationData.message,
    platformChannelSpecifics,
    payload: jsonEncode(notificationData.toJson()),
  );
}

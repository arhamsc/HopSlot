import 'package:app/main/domain/entities/notification_data/notification_data.model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.model.g.dart';

part 'notification.model.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required int id,
    required String title,
    required String body,
    NotificationData? data,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);

  factory Notification.empty() => Notification(
        id: 0,
        title: '',
        body: '',
        data: NotificationData.empty(),
      );

  factory Notification.fromRemoteMessage(RemoteMessage? message) {
    if (message == null) {
      return Notification.empty();
    }
    return Notification(
      id: message.messageId.hashCode,
      title: message.notification?.title ?? '',
      body: message.notification?.body ?? '',
      data: NotificationData.fromJson(message.data),
    );
  }
}

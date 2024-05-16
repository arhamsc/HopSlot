import 'package:app/main/domain/enums/role/role.enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_data.model.g.dart';

part 'notification_data.model.freezed.dart';

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    required String fromId,
    required ERole fromRole,
    required String code,
    required String message,
    String? appointmentId,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);

  factory NotificationData.empty() => const NotificationData(
        fromId: '',
        fromRole: ERole.patient,
        code: '',
        message: '',
        appointmentId: '',
      );
}

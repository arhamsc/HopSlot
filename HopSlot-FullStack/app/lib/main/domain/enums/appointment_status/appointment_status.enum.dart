import 'package:freezed_annotation/freezed_annotation.dart';

enum EAppointmentStatus {
  @JsonValue("PENDING")
  pending,
  @JsonValue("CONFIRMED")
  confirmed,
  @JsonValue("CANCELLED")
  cancelled,
  @JsonValue("COMPLETED")
  completed,
}

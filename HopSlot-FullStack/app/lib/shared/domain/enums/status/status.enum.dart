/*
enum Status {
  PENDING
  ACTIVE
  INACTIVE
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.enum.freezed.dart';
part 'status.enum.g.dart';

@freezed
class Status with _$Status {
  const factory Status.pending() = StatusPending;

  const factory Status.active() = StatusActive;

  const factory Status.inactive() = StatusInactive;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

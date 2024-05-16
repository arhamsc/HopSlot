/*
enum Status {
  PENDING
  ACTIVE
  INACTIVE
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
enum Status {
  @JsonValue("PENDING")
  pending,
  @JsonValue("ACTIVE")
  active,
  @JsonValue("INACTIVE")
  inactive,
}

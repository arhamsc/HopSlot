/*
enum Role {
  HOSP_ADMIN
  PATIENT
  DOCTOR
  ADMIN
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

enum ERole {
  @JsonValue("HOSP_ADMIN")
  hospAdmin,
  @JsonValue("PATIENT")
  patient,
  @JsonValue("DOCTOR")
  doctor,
  @JsonValue("ADMIN")
  admin,
}

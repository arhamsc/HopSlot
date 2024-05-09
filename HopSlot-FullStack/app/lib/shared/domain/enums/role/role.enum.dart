/*
enum Role {
  HOSP_ADMIN
  PATIENT
  DOCTOR
  ADMIN
}
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.enum.freezed.dart';
part 'role.enum.g.dart';

@freezed
class ERole with _$ERole {
  const factory ERole.hospAdmin() = RoleHospAdmin;

  const factory ERole.patient() = RolePatient;

  const factory ERole.doctor() = RoleDoctor;

  const factory ERole.admin() = RoleAdmin;

  factory ERole.fromJson(Map<String, dynamic> json) => _$ERoleFromJson(json);
}

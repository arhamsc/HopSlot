// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role.enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ERole _$ERoleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'hospAdmin':
      return RoleHospAdmin.fromJson(json);
    case 'patient':
      return RolePatient.fromJson(json);
    case 'doctor':
      return RoleDoctor.fromJson(json);
    case 'admin':
      return RoleAdmin.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ERole',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ERole {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hospAdmin,
    required TResult Function() patient,
    required TResult Function() doctor,
    required TResult Function() admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hospAdmin,
    TResult? Function()? patient,
    TResult? Function()? doctor,
    TResult? Function()? admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hospAdmin,
    TResult Function()? patient,
    TResult Function()? doctor,
    TResult Function()? admin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleHospAdmin value) hospAdmin,
    required TResult Function(RolePatient value) patient,
    required TResult Function(RoleDoctor value) doctor,
    required TResult Function(RoleAdmin value) admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleHospAdmin value)? hospAdmin,
    TResult? Function(RolePatient value)? patient,
    TResult? Function(RoleDoctor value)? doctor,
    TResult? Function(RoleAdmin value)? admin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleHospAdmin value)? hospAdmin,
    TResult Function(RolePatient value)? patient,
    TResult Function(RoleDoctor value)? doctor,
    TResult Function(RoleAdmin value)? admin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ERoleCopyWith<$Res> {
  factory $ERoleCopyWith(ERole value, $Res Function(ERole) then) =
      _$ERoleCopyWithImpl<$Res, ERole>;
}

/// @nodoc
class _$ERoleCopyWithImpl<$Res, $Val extends ERole>
    implements $ERoleCopyWith<$Res> {
  _$ERoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoleHospAdminImplCopyWith<$Res> {
  factory _$$RoleHospAdminImplCopyWith(
          _$RoleHospAdminImpl value, $Res Function(_$RoleHospAdminImpl) then) =
      __$$RoleHospAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoleHospAdminImplCopyWithImpl<$Res>
    extends _$ERoleCopyWithImpl<$Res, _$RoleHospAdminImpl>
    implements _$$RoleHospAdminImplCopyWith<$Res> {
  __$$RoleHospAdminImplCopyWithImpl(
      _$RoleHospAdminImpl _value, $Res Function(_$RoleHospAdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RoleHospAdminImpl implements RoleHospAdmin {
  const _$RoleHospAdminImpl({final String? $type})
      : $type = $type ?? 'hospAdmin';

  factory _$RoleHospAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleHospAdminImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ERole.hospAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoleHospAdminImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hospAdmin,
    required TResult Function() patient,
    required TResult Function() doctor,
    required TResult Function() admin,
  }) {
    return hospAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hospAdmin,
    TResult? Function()? patient,
    TResult? Function()? doctor,
    TResult? Function()? admin,
  }) {
    return hospAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hospAdmin,
    TResult Function()? patient,
    TResult Function()? doctor,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (hospAdmin != null) {
      return hospAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleHospAdmin value) hospAdmin,
    required TResult Function(RolePatient value) patient,
    required TResult Function(RoleDoctor value) doctor,
    required TResult Function(RoleAdmin value) admin,
  }) {
    return hospAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleHospAdmin value)? hospAdmin,
    TResult? Function(RolePatient value)? patient,
    TResult? Function(RoleDoctor value)? doctor,
    TResult? Function(RoleAdmin value)? admin,
  }) {
    return hospAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleHospAdmin value)? hospAdmin,
    TResult Function(RolePatient value)? patient,
    TResult Function(RoleDoctor value)? doctor,
    TResult Function(RoleAdmin value)? admin,
    required TResult orElse(),
  }) {
    if (hospAdmin != null) {
      return hospAdmin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleHospAdminImplToJson(
      this,
    );
  }
}

abstract class RoleHospAdmin implements ERole {
  const factory RoleHospAdmin() = _$RoleHospAdminImpl;

  factory RoleHospAdmin.fromJson(Map<String, dynamic> json) =
      _$RoleHospAdminImpl.fromJson;
}

/// @nodoc
abstract class _$$RolePatientImplCopyWith<$Res> {
  factory _$$RolePatientImplCopyWith(
          _$RolePatientImpl value, $Res Function(_$RolePatientImpl) then) =
      __$$RolePatientImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RolePatientImplCopyWithImpl<$Res>
    extends _$ERoleCopyWithImpl<$Res, _$RolePatientImpl>
    implements _$$RolePatientImplCopyWith<$Res> {
  __$$RolePatientImplCopyWithImpl(
      _$RolePatientImpl _value, $Res Function(_$RolePatientImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RolePatientImpl implements RolePatient {
  const _$RolePatientImpl({final String? $type}) : $type = $type ?? 'patient';

  factory _$RolePatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$RolePatientImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ERole.patient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RolePatientImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hospAdmin,
    required TResult Function() patient,
    required TResult Function() doctor,
    required TResult Function() admin,
  }) {
    return patient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hospAdmin,
    TResult? Function()? patient,
    TResult? Function()? doctor,
    TResult? Function()? admin,
  }) {
    return patient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hospAdmin,
    TResult Function()? patient,
    TResult Function()? doctor,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleHospAdmin value) hospAdmin,
    required TResult Function(RolePatient value) patient,
    required TResult Function(RoleDoctor value) doctor,
    required TResult Function(RoleAdmin value) admin,
  }) {
    return patient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleHospAdmin value)? hospAdmin,
    TResult? Function(RolePatient value)? patient,
    TResult? Function(RoleDoctor value)? doctor,
    TResult? Function(RoleAdmin value)? admin,
  }) {
    return patient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleHospAdmin value)? hospAdmin,
    TResult Function(RolePatient value)? patient,
    TResult Function(RoleDoctor value)? doctor,
    TResult Function(RoleAdmin value)? admin,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RolePatientImplToJson(
      this,
    );
  }
}

abstract class RolePatient implements ERole {
  const factory RolePatient() = _$RolePatientImpl;

  factory RolePatient.fromJson(Map<String, dynamic> json) =
      _$RolePatientImpl.fromJson;
}

/// @nodoc
abstract class _$$RoleDoctorImplCopyWith<$Res> {
  factory _$$RoleDoctorImplCopyWith(
          _$RoleDoctorImpl value, $Res Function(_$RoleDoctorImpl) then) =
      __$$RoleDoctorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoleDoctorImplCopyWithImpl<$Res>
    extends _$ERoleCopyWithImpl<$Res, _$RoleDoctorImpl>
    implements _$$RoleDoctorImplCopyWith<$Res> {
  __$$RoleDoctorImplCopyWithImpl(
      _$RoleDoctorImpl _value, $Res Function(_$RoleDoctorImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RoleDoctorImpl implements RoleDoctor {
  const _$RoleDoctorImpl({final String? $type}) : $type = $type ?? 'doctor';

  factory _$RoleDoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleDoctorImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ERole.doctor()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoleDoctorImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hospAdmin,
    required TResult Function() patient,
    required TResult Function() doctor,
    required TResult Function() admin,
  }) {
    return doctor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hospAdmin,
    TResult? Function()? patient,
    TResult? Function()? doctor,
    TResult? Function()? admin,
  }) {
    return doctor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hospAdmin,
    TResult Function()? patient,
    TResult Function()? doctor,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (doctor != null) {
      return doctor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleHospAdmin value) hospAdmin,
    required TResult Function(RolePatient value) patient,
    required TResult Function(RoleDoctor value) doctor,
    required TResult Function(RoleAdmin value) admin,
  }) {
    return doctor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleHospAdmin value)? hospAdmin,
    TResult? Function(RolePatient value)? patient,
    TResult? Function(RoleDoctor value)? doctor,
    TResult? Function(RoleAdmin value)? admin,
  }) {
    return doctor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleHospAdmin value)? hospAdmin,
    TResult Function(RolePatient value)? patient,
    TResult Function(RoleDoctor value)? doctor,
    TResult Function(RoleAdmin value)? admin,
    required TResult orElse(),
  }) {
    if (doctor != null) {
      return doctor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleDoctorImplToJson(
      this,
    );
  }
}

abstract class RoleDoctor implements ERole {
  const factory RoleDoctor() = _$RoleDoctorImpl;

  factory RoleDoctor.fromJson(Map<String, dynamic> json) =
      _$RoleDoctorImpl.fromJson;
}

/// @nodoc
abstract class _$$RoleAdminImplCopyWith<$Res> {
  factory _$$RoleAdminImplCopyWith(
          _$RoleAdminImpl value, $Res Function(_$RoleAdminImpl) then) =
      __$$RoleAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoleAdminImplCopyWithImpl<$Res>
    extends _$ERoleCopyWithImpl<$Res, _$RoleAdminImpl>
    implements _$$RoleAdminImplCopyWith<$Res> {
  __$$RoleAdminImplCopyWithImpl(
      _$RoleAdminImpl _value, $Res Function(_$RoleAdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RoleAdminImpl implements RoleAdmin {
  const _$RoleAdminImpl({final String? $type}) : $type = $type ?? 'admin';

  factory _$RoleAdminImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleAdminImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ERole.admin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoleAdminImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hospAdmin,
    required TResult Function() patient,
    required TResult Function() doctor,
    required TResult Function() admin,
  }) {
    return admin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? hospAdmin,
    TResult? Function()? patient,
    TResult? Function()? doctor,
    TResult? Function()? admin,
  }) {
    return admin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hospAdmin,
    TResult Function()? patient,
    TResult Function()? doctor,
    TResult Function()? admin,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoleHospAdmin value) hospAdmin,
    required TResult Function(RolePatient value) patient,
    required TResult Function(RoleDoctor value) doctor,
    required TResult Function(RoleAdmin value) admin,
  }) {
    return admin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoleHospAdmin value)? hospAdmin,
    TResult? Function(RolePatient value)? patient,
    TResult? Function(RoleDoctor value)? doctor,
    TResult? Function(RoleAdmin value)? admin,
  }) {
    return admin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoleHospAdmin value)? hospAdmin,
    TResult Function(RolePatient value)? patient,
    TResult Function(RoleDoctor value)? doctor,
    TResult Function(RoleAdmin value)? admin,
    required TResult orElse(),
  }) {
    if (admin != null) {
      return admin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleAdminImplToJson(
      this,
    );
  }
}

abstract class RoleAdmin implements ERole {
  const factory RoleAdmin() = _$RoleAdminImpl;

  factory RoleAdmin.fromJson(Map<String, dynamic> json) =
      _$RoleAdminImpl.fromJson;
}

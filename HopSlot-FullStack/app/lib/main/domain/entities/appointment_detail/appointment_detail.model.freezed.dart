// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_detail.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentDetail _$AppointmentDetailFromJson(Map<String, dynamic> json) {
  return _AppointmentDetail.fromJson(json);
}

/// @nodoc
mixin _$AppointmentDetail {
  String get id => throw _privateConstructorUsedError;
  EAppointmentStatus get status => throw _privateConstructorUsedError;
  int get additionalDelay => throw _privateConstructorUsedError;
  HospitalEssential get hospital => throw _privateConstructorUsedError;
  DateTime get appointmentStart => throw _privateConstructorUsedError;
  int? get appointmentStartDelay => throw _privateConstructorUsedError;
  EssentialUser get patient => throw _privateConstructorUsedError;
  EssentialUser get doctor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDetailCopyWith<AppointmentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailCopyWith<$Res> {
  factory $AppointmentDetailCopyWith(
          AppointmentDetail value, $Res Function(AppointmentDetail) then) =
      _$AppointmentDetailCopyWithImpl<$Res, AppointmentDetail>;
  @useResult
  $Res call(
      {String id,
      EAppointmentStatus status,
      int additionalDelay,
      HospitalEssential hospital,
      DateTime appointmentStart,
      int? appointmentStartDelay,
      EssentialUser patient,
      EssentialUser doctor});

  $HospitalEssentialCopyWith<$Res> get hospital;
  $EssentialUserCopyWith<$Res> get patient;
  $EssentialUserCopyWith<$Res> get doctor;
}

/// @nodoc
class _$AppointmentDetailCopyWithImpl<$Res, $Val extends AppointmentDetail>
    implements $AppointmentDetailCopyWith<$Res> {
  _$AppointmentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? additionalDelay = null,
    Object? hospital = null,
    Object? appointmentStart = null,
    Object? appointmentStartDelay = freezed,
    Object? patient = null,
    Object? doctor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EAppointmentStatus,
      additionalDelay: null == additionalDelay
          ? _value.additionalDelay
          : additionalDelay // ignore: cast_nullable_to_non_nullable
              as int,
      hospital: null == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as HospitalEssential,
      appointmentStart: null == appointmentStart
          ? _value.appointmentStart
          : appointmentStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointmentStartDelay: freezed == appointmentStartDelay
          ? _value.appointmentStartDelay
          : appointmentStartDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HospitalEssentialCopyWith<$Res> get hospital {
    return $HospitalEssentialCopyWith<$Res>(_value.hospital, (value) {
      return _then(_value.copyWith(hospital: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EssentialUserCopyWith<$Res> get patient {
    return $EssentialUserCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EssentialUserCopyWith<$Res> get doctor {
    return $EssentialUserCopyWith<$Res>(_value.doctor, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentDetailImplCopyWith<$Res>
    implements $AppointmentDetailCopyWith<$Res> {
  factory _$$AppointmentDetailImplCopyWith(_$AppointmentDetailImpl value,
          $Res Function(_$AppointmentDetailImpl) then) =
      __$$AppointmentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      EAppointmentStatus status,
      int additionalDelay,
      HospitalEssential hospital,
      DateTime appointmentStart,
      int? appointmentStartDelay,
      EssentialUser patient,
      EssentialUser doctor});

  @override
  $HospitalEssentialCopyWith<$Res> get hospital;
  @override
  $EssentialUserCopyWith<$Res> get patient;
  @override
  $EssentialUserCopyWith<$Res> get doctor;
}

/// @nodoc
class __$$AppointmentDetailImplCopyWithImpl<$Res>
    extends _$AppointmentDetailCopyWithImpl<$Res, _$AppointmentDetailImpl>
    implements _$$AppointmentDetailImplCopyWith<$Res> {
  __$$AppointmentDetailImplCopyWithImpl(_$AppointmentDetailImpl _value,
      $Res Function(_$AppointmentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? additionalDelay = null,
    Object? hospital = null,
    Object? appointmentStart = null,
    Object? appointmentStartDelay = freezed,
    Object? patient = null,
    Object? doctor = null,
  }) {
    return _then(_$AppointmentDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EAppointmentStatus,
      additionalDelay: null == additionalDelay
          ? _value.additionalDelay
          : additionalDelay // ignore: cast_nullable_to_non_nullable
              as int,
      hospital: null == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as HospitalEssential,
      appointmentStart: null == appointmentStart
          ? _value.appointmentStart
          : appointmentStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      appointmentStartDelay: freezed == appointmentStartDelay
          ? _value.appointmentStartDelay
          : appointmentStartDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentDetailImpl implements _AppointmentDetail {
  const _$AppointmentDetailImpl(
      {required this.id,
      required this.status,
      required this.additionalDelay,
      required this.hospital,
      required this.appointmentStart,
      required this.appointmentStartDelay,
      required this.patient,
      required this.doctor});

  factory _$AppointmentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentDetailImplFromJson(json);

  @override
  final String id;
  @override
  final EAppointmentStatus status;
  @override
  final int additionalDelay;
  @override
  final HospitalEssential hospital;
  @override
  final DateTime appointmentStart;
  @override
  final int? appointmentStartDelay;
  @override
  final EssentialUser patient;
  @override
  final EssentialUser doctor;

  @override
  String toString() {
    return 'AppointmentDetail(id: $id, status: $status, additionalDelay: $additionalDelay, hospital: $hospital, appointmentStart: $appointmentStart, appointmentStartDelay: $appointmentStartDelay, patient: $patient, doctor: $doctor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.additionalDelay, additionalDelay) ||
                other.additionalDelay == additionalDelay) &&
            (identical(other.hospital, hospital) ||
                other.hospital == hospital) &&
            (identical(other.appointmentStart, appointmentStart) ||
                other.appointmentStart == appointmentStart) &&
            (identical(other.appointmentStartDelay, appointmentStartDelay) ||
                other.appointmentStartDelay == appointmentStartDelay) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.doctor, doctor) || other.doctor == doctor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, additionalDelay,
      hospital, appointmentStart, appointmentStartDelay, patient, doctor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentDetailImplCopyWith<_$AppointmentDetailImpl> get copyWith =>
      __$$AppointmentDetailImplCopyWithImpl<_$AppointmentDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentDetailImplToJson(
      this,
    );
  }
}

abstract class _AppointmentDetail implements AppointmentDetail {
  const factory _AppointmentDetail(
      {required final String id,
      required final EAppointmentStatus status,
      required final int additionalDelay,
      required final HospitalEssential hospital,
      required final DateTime appointmentStart,
      required final int? appointmentStartDelay,
      required final EssentialUser patient,
      required final EssentialUser doctor}) = _$AppointmentDetailImpl;

  factory _AppointmentDetail.fromJson(Map<String, dynamic> json) =
      _$AppointmentDetailImpl.fromJson;

  @override
  String get id;
  @override
  EAppointmentStatus get status;
  @override
  int get additionalDelay;
  @override
  HospitalEssential get hospital;
  @override
  DateTime get appointmentStart;
  @override
  int? get appointmentStartDelay;
  @override
  EssentialUser get patient;
  @override
  EssentialUser get doctor;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentDetailImplCopyWith<_$AppointmentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

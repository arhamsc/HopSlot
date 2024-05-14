// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_controller.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileState _$ProfileStateFromJson(Map<String, dynamic> json) {
  return _ProfileState.fromJson(json);
}

/// @nodoc
mixin _$ProfileState {
  ActionResult get actionResult => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Doctor? get doctor => throw _privateConstructorUsedError;
  Patient? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {ActionResult actionResult, User user, Doctor? doctor, Patient? patient});

  $ActionResultCopyWith<$Res> get actionResult;
  $UserCopyWith<$Res> get user;
  $DoctorCopyWith<$Res>? get doctor;
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionResult = null,
    Object? user = null,
    Object? doctor = freezed,
    Object? patient = freezed,
  }) {
    return _then(_value.copyWith(
      actionResult: null == actionResult
          ? _value.actionResult
          : actionResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionResultCopyWith<$Res> get actionResult {
    return $ActionResultCopyWith<$Res>(_value.actionResult, (value) {
      return _then(_value.copyWith(actionResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActionResult actionResult, User user, Doctor? doctor, Patient? patient});

  @override
  $ActionResultCopyWith<$Res> get actionResult;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $DoctorCopyWith<$Res>? get doctor;
  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionResult = null,
    Object? user = null,
    Object? doctor = freezed,
    Object? patient = freezed,
  }) {
    return _then(_$ProfileStateImpl(
      actionResult: null == actionResult
          ? _value.actionResult
          : actionResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor?,
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.actionResult = const ActionResult.idle(),
      required this.user,
      this.doctor,
      this.patient});

  factory _$ProfileStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileStateImplFromJson(json);

  @override
  @JsonKey()
  final ActionResult actionResult;
  @override
  final User user;
  @override
  final Doctor? doctor;
  @override
  final Patient? patient;

  @override
  String toString() {
    return 'ProfileState(actionResult: $actionResult, user: $user, doctor: $doctor, patient: $patient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.actionResult, actionResult) ||
                other.actionResult == actionResult) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, actionResult, user, doctor, patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileStateImplToJson(
      this,
    );
  }
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final ActionResult actionResult,
      required final User user,
      final Doctor? doctor,
      final Patient? patient}) = _$ProfileStateImpl;

  factory _ProfileState.fromJson(Map<String, dynamic> json) =
      _$ProfileStateImpl.fromJson;

  @override
  ActionResult get actionResult;
  @override
  User get user;
  @override
  Doctor? get doctor;
  @override
  Patient? get patient;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

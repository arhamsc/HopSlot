// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_item.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentItem _$AppointmentItemFromJson(Map<String, dynamic> json) {
  return _AppointmentItem.fromJson(json);
}

/// @nodoc
mixin _$AppointmentItem {
  String get id => throw _privateConstructorUsedError;
  EssentialUser get patient => throw _privateConstructorUsedError;
  EssentialUser get doctor => throw _privateConstructorUsedError;
  DateTime get appointmentStart => throw _privateConstructorUsedError;
  EAppointmentStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentItemCopyWith<AppointmentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentItemCopyWith<$Res> {
  factory $AppointmentItemCopyWith(
          AppointmentItem value, $Res Function(AppointmentItem) then) =
      _$AppointmentItemCopyWithImpl<$Res, AppointmentItem>;
  @useResult
  $Res call(
      {String id,
      EssentialUser patient,
      EssentialUser doctor,
      DateTime appointmentStart,
      EAppointmentStatus status});

  $EssentialUserCopyWith<$Res> get patient;
  $EssentialUserCopyWith<$Res> get doctor;
}

/// @nodoc
class _$AppointmentItemCopyWithImpl<$Res, $Val extends AppointmentItem>
    implements $AppointmentItemCopyWith<$Res> {
  _$AppointmentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patient = null,
    Object? doctor = null,
    Object? appointmentStart = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
      appointmentStart: null == appointmentStart
          ? _value.appointmentStart
          : appointmentStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EAppointmentStatus,
    ) as $Val);
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
abstract class _$$AppointmentItemImplCopyWith<$Res>
    implements $AppointmentItemCopyWith<$Res> {
  factory _$$AppointmentItemImplCopyWith(_$AppointmentItemImpl value,
          $Res Function(_$AppointmentItemImpl) then) =
      __$$AppointmentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      EssentialUser patient,
      EssentialUser doctor,
      DateTime appointmentStart,
      EAppointmentStatus status});

  @override
  $EssentialUserCopyWith<$Res> get patient;
  @override
  $EssentialUserCopyWith<$Res> get doctor;
}

/// @nodoc
class __$$AppointmentItemImplCopyWithImpl<$Res>
    extends _$AppointmentItemCopyWithImpl<$Res, _$AppointmentItemImpl>
    implements _$$AppointmentItemImplCopyWith<$Res> {
  __$$AppointmentItemImplCopyWithImpl(
      _$AppointmentItemImpl _value, $Res Function(_$AppointmentItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patient = null,
    Object? doctor = null,
    Object? appointmentStart = null,
    Object? status = null,
  }) {
    return _then(_$AppointmentItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as EssentialUser,
      appointmentStart: null == appointmentStart
          ? _value.appointmentStart
          : appointmentStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EAppointmentStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentItemImpl implements _AppointmentItem {
  const _$AppointmentItemImpl(
      {required this.id,
      required this.patient,
      required this.doctor,
      required this.appointmentStart,
      required this.status});

  factory _$AppointmentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentItemImplFromJson(json);

  @override
  final String id;
  @override
  final EssentialUser patient;
  @override
  final EssentialUser doctor;
  @override
  final DateTime appointmentStart;
  @override
  final EAppointmentStatus status;

  @override
  String toString() {
    return 'AppointmentItem(id: $id, patient: $patient, doctor: $doctor, appointmentStart: $appointmentStart, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.appointmentStart, appointmentStart) ||
                other.appointmentStart == appointmentStart) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, patient, doctor, appointmentStart, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentItemImplCopyWith<_$AppointmentItemImpl> get copyWith =>
      __$$AppointmentItemImplCopyWithImpl<_$AppointmentItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentItemImplToJson(
      this,
    );
  }
}

abstract class _AppointmentItem implements AppointmentItem {
  const factory _AppointmentItem(
      {required final String id,
      required final EssentialUser patient,
      required final EssentialUser doctor,
      required final DateTime appointmentStart,
      required final EAppointmentStatus status}) = _$AppointmentItemImpl;

  factory _AppointmentItem.fromJson(Map<String, dynamic> json) =
      _$AppointmentItemImpl.fromJson;

  @override
  String get id;
  @override
  EssentialUser get patient;
  @override
  EssentialUser get doctor;
  @override
  DateTime get appointmentStart;
  @override
  EAppointmentStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentItemImplCopyWith<_$AppointmentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

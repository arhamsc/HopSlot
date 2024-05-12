// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Doctor _$DoctorFromJson(Map<String, dynamic> json) {
  return _Doctor.fromJson(json);
}

/// @nodoc
mixin _$Doctor {
  @HiveField(0)
  String get hospitalId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get userId => throw _privateConstructorUsedError;
  @HiveField(2)
  int get cabinNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  int get cabinFloor => throw _privateConstructorUsedError;
  @HiveField(4)
  double get cabinLat => throw _privateConstructorUsedError;
  @HiveField(5)
  double get cabinLng => throw _privateConstructorUsedError;
  @HiveField(6)
  double get cabinAlt => throw _privateConstructorUsedError;
  @HiveField(7)
  int get noOfPatientsConsulted => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get lastClockIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorCopyWith<Doctor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorCopyWith<$Res> {
  factory $DoctorCopyWith(Doctor value, $Res Function(Doctor) then) =
      _$DoctorCopyWithImpl<$Res, Doctor>;
  @useResult
  $Res call(
      {@HiveField(0) String hospitalId,
      @HiveField(1) String userId,
      @HiveField(2) int cabinNumber,
      @HiveField(3) int cabinFloor,
      @HiveField(4) double cabinLat,
      @HiveField(5) double cabinLng,
      @HiveField(6) double cabinAlt,
      @HiveField(7) int noOfPatientsConsulted,
      @HiveField(8) DateTime? lastClockIn});
}

/// @nodoc
class _$DoctorCopyWithImpl<$Res, $Val extends Doctor>
    implements $DoctorCopyWith<$Res> {
  _$DoctorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalId = null,
    Object? userId = null,
    Object? cabinNumber = null,
    Object? cabinFloor = null,
    Object? cabinLat = null,
    Object? cabinLng = null,
    Object? cabinAlt = null,
    Object? noOfPatientsConsulted = null,
    Object? lastClockIn = freezed,
  }) {
    return _then(_value.copyWith(
      hospitalId: null == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      cabinNumber: null == cabinNumber
          ? _value.cabinNumber
          : cabinNumber // ignore: cast_nullable_to_non_nullable
              as int,
      cabinFloor: null == cabinFloor
          ? _value.cabinFloor
          : cabinFloor // ignore: cast_nullable_to_non_nullable
              as int,
      cabinLat: null == cabinLat
          ? _value.cabinLat
          : cabinLat // ignore: cast_nullable_to_non_nullable
              as double,
      cabinLng: null == cabinLng
          ? _value.cabinLng
          : cabinLng // ignore: cast_nullable_to_non_nullable
              as double,
      cabinAlt: null == cabinAlt
          ? _value.cabinAlt
          : cabinAlt // ignore: cast_nullable_to_non_nullable
              as double,
      noOfPatientsConsulted: null == noOfPatientsConsulted
          ? _value.noOfPatientsConsulted
          : noOfPatientsConsulted // ignore: cast_nullable_to_non_nullable
              as int,
      lastClockIn: freezed == lastClockIn
          ? _value.lastClockIn
          : lastClockIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorImplCopyWith<$Res> implements $DoctorCopyWith<$Res> {
  factory _$$DoctorImplCopyWith(
          _$DoctorImpl value, $Res Function(_$DoctorImpl) then) =
      __$$DoctorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String hospitalId,
      @HiveField(1) String userId,
      @HiveField(2) int cabinNumber,
      @HiveField(3) int cabinFloor,
      @HiveField(4) double cabinLat,
      @HiveField(5) double cabinLng,
      @HiveField(6) double cabinAlt,
      @HiveField(7) int noOfPatientsConsulted,
      @HiveField(8) DateTime? lastClockIn});
}

/// @nodoc
class __$$DoctorImplCopyWithImpl<$Res>
    extends _$DoctorCopyWithImpl<$Res, _$DoctorImpl>
    implements _$$DoctorImplCopyWith<$Res> {
  __$$DoctorImplCopyWithImpl(
      _$DoctorImpl _value, $Res Function(_$DoctorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalId = null,
    Object? userId = null,
    Object? cabinNumber = null,
    Object? cabinFloor = null,
    Object? cabinLat = null,
    Object? cabinLng = null,
    Object? cabinAlt = null,
    Object? noOfPatientsConsulted = null,
    Object? lastClockIn = freezed,
  }) {
    return _then(_$DoctorImpl(
      hospitalId: null == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      cabinNumber: null == cabinNumber
          ? _value.cabinNumber
          : cabinNumber // ignore: cast_nullable_to_non_nullable
              as int,
      cabinFloor: null == cabinFloor
          ? _value.cabinFloor
          : cabinFloor // ignore: cast_nullable_to_non_nullable
              as int,
      cabinLat: null == cabinLat
          ? _value.cabinLat
          : cabinLat // ignore: cast_nullable_to_non_nullable
              as double,
      cabinLng: null == cabinLng
          ? _value.cabinLng
          : cabinLng // ignore: cast_nullable_to_non_nullable
              as double,
      cabinAlt: null == cabinAlt
          ? _value.cabinAlt
          : cabinAlt // ignore: cast_nullable_to_non_nullable
              as double,
      noOfPatientsConsulted: null == noOfPatientsConsulted
          ? _value.noOfPatientsConsulted
          : noOfPatientsConsulted // ignore: cast_nullable_to_non_nullable
              as int,
      lastClockIn: freezed == lastClockIn
          ? _value.lastClockIn
          : lastClockIn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorImpl implements _Doctor {
  const _$DoctorImpl(
      {@HiveField(0) required this.hospitalId,
      @HiveField(1) required this.userId,
      @HiveField(2) required this.cabinNumber,
      @HiveField(3) required this.cabinFloor,
      @HiveField(4) required this.cabinLat,
      @HiveField(5) required this.cabinLng,
      @HiveField(6) required this.cabinAlt,
      @HiveField(7) required this.noOfPatientsConsulted,
      @HiveField(8) this.lastClockIn});

  factory _$DoctorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorImplFromJson(json);

  @override
  @HiveField(0)
  final String hospitalId;
  @override
  @HiveField(1)
  final String userId;
  @override
  @HiveField(2)
  final int cabinNumber;
  @override
  @HiveField(3)
  final int cabinFloor;
  @override
  @HiveField(4)
  final double cabinLat;
  @override
  @HiveField(5)
  final double cabinLng;
  @override
  @HiveField(6)
  final double cabinAlt;
  @override
  @HiveField(7)
  final int noOfPatientsConsulted;
  @override
  @HiveField(8)
  final DateTime? lastClockIn;

  @override
  String toString() {
    return 'Doctor(hospitalId: $hospitalId, userId: $userId, cabinNumber: $cabinNumber, cabinFloor: $cabinFloor, cabinLat: $cabinLat, cabinLng: $cabinLng, cabinAlt: $cabinAlt, noOfPatientsConsulted: $noOfPatientsConsulted, lastClockIn: $lastClockIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorImpl &&
            (identical(other.hospitalId, hospitalId) ||
                other.hospitalId == hospitalId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cabinNumber, cabinNumber) ||
                other.cabinNumber == cabinNumber) &&
            (identical(other.cabinFloor, cabinFloor) ||
                other.cabinFloor == cabinFloor) &&
            (identical(other.cabinLat, cabinLat) ||
                other.cabinLat == cabinLat) &&
            (identical(other.cabinLng, cabinLng) ||
                other.cabinLng == cabinLng) &&
            (identical(other.cabinAlt, cabinAlt) ||
                other.cabinAlt == cabinAlt) &&
            (identical(other.noOfPatientsConsulted, noOfPatientsConsulted) ||
                other.noOfPatientsConsulted == noOfPatientsConsulted) &&
            (identical(other.lastClockIn, lastClockIn) ||
                other.lastClockIn == lastClockIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hospitalId,
      userId,
      cabinNumber,
      cabinFloor,
      cabinLat,
      cabinLng,
      cabinAlt,
      noOfPatientsConsulted,
      lastClockIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      __$$DoctorImplCopyWithImpl<_$DoctorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorImplToJson(
      this,
    );
  }
}

abstract class _Doctor implements Doctor {
  const factory _Doctor(
      {@HiveField(0) required final String hospitalId,
      @HiveField(1) required final String userId,
      @HiveField(2) required final int cabinNumber,
      @HiveField(3) required final int cabinFloor,
      @HiveField(4) required final double cabinLat,
      @HiveField(5) required final double cabinLng,
      @HiveField(6) required final double cabinAlt,
      @HiveField(7) required final int noOfPatientsConsulted,
      @HiveField(8) final DateTime? lastClockIn}) = _$DoctorImpl;

  factory _Doctor.fromJson(Map<String, dynamic> json) = _$DoctorImpl.fromJson;

  @override
  @HiveField(0)
  String get hospitalId;
  @override
  @HiveField(1)
  String get userId;
  @override
  @HiveField(2)
  int get cabinNumber;
  @override
  @HiveField(3)
  int get cabinFloor;
  @override
  @HiveField(4)
  double get cabinLat;
  @override
  @HiveField(5)
  double get cabinLng;
  @override
  @HiveField(6)
  double get cabinAlt;
  @override
  @HiveField(7)
  int get noOfPatientsConsulted;
  @override
  @HiveField(8)
  DateTime? get lastClockIn;
  @override
  @JsonKey(ignore: true)
  _$$DoctorImplCopyWith<_$DoctorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

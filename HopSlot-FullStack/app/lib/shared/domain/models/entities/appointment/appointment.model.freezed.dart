// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id => throw _privateConstructorUsedError;
  String get hospitalId => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  String get appointmentSlotId => throw _privateConstructorUsedError;
  EAppointmentStatus get status => throw _privateConstructorUsedError;
  int get additionalDelay => throw _privateConstructorUsedError;
  DateTime? get appointmentStart => throw _privateConstructorUsedError;
  int? get appointmentStartDelay => throw _privateConstructorUsedError;
  int? get severity => throw _privateConstructorUsedError;
  List<Symptom> get symptoms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {String id,
      String hospitalId,
      String doctorId,
      String patientId,
      String appointmentSlotId,
      EAppointmentStatus status,
      int additionalDelay,
      DateTime? appointmentStart,
      int? appointmentStartDelay,
      int? severity,
      List<Symptom> symptoms});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hospitalId = null,
    Object? doctorId = null,
    Object? patientId = null,
    Object? appointmentSlotId = null,
    Object? status = null,
    Object? additionalDelay = null,
    Object? appointmentStart = freezed,
    Object? appointmentStartDelay = freezed,
    Object? severity = freezed,
    Object? symptoms = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalId: null == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentSlotId: null == appointmentSlotId
          ? _value.appointmentSlotId
          : appointmentSlotId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EAppointmentStatus,
      additionalDelay: null == additionalDelay
          ? _value.additionalDelay
          : additionalDelay // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentStart: freezed == appointmentStart
          ? _value.appointmentStart
          : appointmentStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentStartDelay: freezed == appointmentStartDelay
          ? _value.appointmentStartDelay
          : appointmentStartDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as int?,
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String hospitalId,
      String doctorId,
      String patientId,
      String appointmentSlotId,
      EAppointmentStatus status,
      int additionalDelay,
      DateTime? appointmentStart,
      int? appointmentStartDelay,
      int? severity,
      List<Symptom> symptoms});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hospitalId = null,
    Object? doctorId = null,
    Object? patientId = null,
    Object? appointmentSlotId = null,
    Object? status = null,
    Object? additionalDelay = null,
    Object? appointmentStart = freezed,
    Object? appointmentStartDelay = freezed,
    Object? severity = freezed,
    Object? symptoms = null,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      hospitalId: null == hospitalId
          ? _value.hospitalId
          : hospitalId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentSlotId: null == appointmentSlotId
          ? _value.appointmentSlotId
          : appointmentSlotId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EAppointmentStatus,
      additionalDelay: null == additionalDelay
          ? _value.additionalDelay
          : additionalDelay // ignore: cast_nullable_to_non_nullable
              as int,
      appointmentStart: freezed == appointmentStart
          ? _value.appointmentStart
          : appointmentStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentStartDelay: freezed == appointmentStartDelay
          ? _value.appointmentStartDelay
          : appointmentStartDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      severity: freezed == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as int?,
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<Symptom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  const _$AppointmentImpl(
      {required this.id,
      required this.hospitalId,
      required this.doctorId,
      required this.patientId,
      required this.appointmentSlotId,
      required this.status,
      required this.additionalDelay,
      this.appointmentStart,
      this.appointmentStartDelay,
      this.severity,
      final List<Symptom> symptoms = const []})
      : _symptoms = symptoms;

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final String id;
  @override
  final String hospitalId;
  @override
  final String doctorId;
  @override
  final String patientId;
  @override
  final String appointmentSlotId;
  @override
  final EAppointmentStatus status;
  @override
  final int additionalDelay;
  @override
  final DateTime? appointmentStart;
  @override
  final int? appointmentStartDelay;
  @override
  final int? severity;
  final List<Symptom> _symptoms;
  @override
  @JsonKey()
  List<Symptom> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  String toString() {
    return 'Appointment(id: $id, hospitalId: $hospitalId, doctorId: $doctorId, patientId: $patientId, appointmentSlotId: $appointmentSlotId, status: $status, additionalDelay: $additionalDelay, appointmentStart: $appointmentStart, appointmentStartDelay: $appointmentStartDelay, severity: $severity, symptoms: $symptoms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hospitalId, hospitalId) ||
                other.hospitalId == hospitalId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.appointmentSlotId, appointmentSlotId) ||
                other.appointmentSlotId == appointmentSlotId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.additionalDelay, additionalDelay) ||
                other.additionalDelay == additionalDelay) &&
            (identical(other.appointmentStart, appointmentStart) ||
                other.appointmentStart == appointmentStart) &&
            (identical(other.appointmentStartDelay, appointmentStartDelay) ||
                other.appointmentStartDelay == appointmentStartDelay) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hospitalId,
      doctorId,
      patientId,
      appointmentSlotId,
      status,
      additionalDelay,
      appointmentStart,
      appointmentStartDelay,
      severity,
      const DeepCollectionEquality().hash(_symptoms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {required final String id,
      required final String hospitalId,
      required final String doctorId,
      required final String patientId,
      required final String appointmentSlotId,
      required final EAppointmentStatus status,
      required final int additionalDelay,
      final DateTime? appointmentStart,
      final int? appointmentStartDelay,
      final int? severity,
      final List<Symptom> symptoms}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  String get id;
  @override
  String get hospitalId;
  @override
  String get doctorId;
  @override
  String get patientId;
  @override
  String get appointmentSlotId;
  @override
  EAppointmentStatus get status;
  @override
  int get additionalDelay;
  @override
  DateTime? get appointmentStart;
  @override
  int? get appointmentStartDelay;
  @override
  int? get severity;
  @override
  List<Symptom> get symptoms;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

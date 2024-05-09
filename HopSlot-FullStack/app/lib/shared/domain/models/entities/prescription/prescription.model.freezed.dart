// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Prescription _$PrescriptionFromJson(Map<String, dynamic> json) {
  return _Prescription.fromJson(json);
}

/// @nodoc
mixin _$Prescription {
  String get id => throw _privateConstructorUsedError;
  String get appointmentId => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get otherNotes => throw _privateConstructorUsedError;
  String get docSign => throw _privateConstructorUsedError;
  @JsonKey(name: 'report')
  List<Report> get reports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionCopyWith<Prescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionCopyWith<$Res> {
  factory $PrescriptionCopyWith(
          Prescription value, $Res Function(Prescription) then) =
      _$PrescriptionCopyWithImpl<$Res, Prescription>;
  @useResult
  $Res call(
      {String id,
      String appointmentId,
      String patientId,
      String doctorId,
      DateTime issueDate,
      String body,
      String? otherNotes,
      String docSign,
      @JsonKey(name: 'report') List<Report> reports});
}

/// @nodoc
class _$PrescriptionCopyWithImpl<$Res, $Val extends Prescription>
    implements $PrescriptionCopyWith<$Res> {
  _$PrescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentId = null,
    Object? patientId = null,
    Object? doctorId = null,
    Object? issueDate = null,
    Object? body = null,
    Object? otherNotes = freezed,
    Object? docSign = null,
    Object? reports = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      otherNotes: freezed == otherNotes
          ? _value.otherNotes
          : otherNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      docSign: null == docSign
          ? _value.docSign
          : docSign // ignore: cast_nullable_to_non_nullable
              as String,
      reports: null == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrescriptionImplCopyWith<$Res>
    implements $PrescriptionCopyWith<$Res> {
  factory _$$PrescriptionImplCopyWith(
          _$PrescriptionImpl value, $Res Function(_$PrescriptionImpl) then) =
      __$$PrescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String appointmentId,
      String patientId,
      String doctorId,
      DateTime issueDate,
      String body,
      String? otherNotes,
      String docSign,
      @JsonKey(name: 'report') List<Report> reports});
}

/// @nodoc
class __$$PrescriptionImplCopyWithImpl<$Res>
    extends _$PrescriptionCopyWithImpl<$Res, _$PrescriptionImpl>
    implements _$$PrescriptionImplCopyWith<$Res> {
  __$$PrescriptionImplCopyWithImpl(
      _$PrescriptionImpl _value, $Res Function(_$PrescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appointmentId = null,
    Object? patientId = null,
    Object? doctorId = null,
    Object? issueDate = null,
    Object? body = null,
    Object? otherNotes = freezed,
    Object? docSign = null,
    Object? reports = null,
  }) {
    return _then(_$PrescriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      otherNotes: freezed == otherNotes
          ? _value.otherNotes
          : otherNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      docSign: null == docSign
          ? _value.docSign
          : docSign // ignore: cast_nullable_to_non_nullable
              as String,
      reports: null == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionImpl implements _Prescription {
  const _$PrescriptionImpl(
      {required this.id,
      required this.appointmentId,
      required this.patientId,
      required this.doctorId,
      required this.issueDate,
      required this.body,
      this.otherNotes,
      required this.docSign,
      @JsonKey(name: 'report') final List<Report> reports = const []})
      : _reports = reports;

  factory _$PrescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionImplFromJson(json);

  @override
  final String id;
  @override
  final String appointmentId;
  @override
  final String patientId;
  @override
  final String doctorId;
  @override
  final DateTime issueDate;
  @override
  final String body;
  @override
  final String? otherNotes;
  @override
  final String docSign;
  final List<Report> _reports;
  @override
  @JsonKey(name: 'report')
  List<Report> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'Prescription(id: $id, appointmentId: $appointmentId, patientId: $patientId, doctorId: $doctorId, issueDate: $issueDate, body: $body, otherNotes: $otherNotes, docSign: $docSign, reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.otherNotes, otherNotes) ||
                other.otherNotes == otherNotes) &&
            (identical(other.docSign, docSign) || other.docSign == docSign) &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      appointmentId,
      patientId,
      doctorId,
      issueDate,
      body,
      otherNotes,
      docSign,
      const DeepCollectionEquality().hash(_reports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionImplCopyWith<_$PrescriptionImpl> get copyWith =>
      __$$PrescriptionImplCopyWithImpl<_$PrescriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionImplToJson(
      this,
    );
  }
}

abstract class _Prescription implements Prescription {
  const factory _Prescription(
          {required final String id,
          required final String appointmentId,
          required final String patientId,
          required final String doctorId,
          required final DateTime issueDate,
          required final String body,
          final String? otherNotes,
          required final String docSign,
          @JsonKey(name: 'report') final List<Report> reports}) =
      _$PrescriptionImpl;

  factory _Prescription.fromJson(Map<String, dynamic> json) =
      _$PrescriptionImpl.fromJson;

  @override
  String get id;
  @override
  String get appointmentId;
  @override
  String get patientId;
  @override
  String get doctorId;
  @override
  DateTime get issueDate;
  @override
  String get body;
  @override
  String? get otherNotes;
  @override
  String get docSign;
  @override
  @JsonKey(name: 'report')
  List<Report> get reports;
  @override
  @JsonKey(ignore: true)
  _$$PrescriptionImplCopyWith<_$PrescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

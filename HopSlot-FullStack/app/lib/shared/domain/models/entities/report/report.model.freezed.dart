// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  String get id => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  DateTime get issueDate => throw _privateConstructorUsedError;
  String get signedBy => throw _privateConstructorUsedError;
  String get reportPublicId => throw _privateConstructorUsedError;
  String get reportSecureUrl => throw _privateConstructorUsedError;
  String get prescriptionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {String id,
      String doctorId,
      String patientId,
      DateTime issueDate,
      String signedBy,
      String reportPublicId,
      String reportSecureUrl,
      String prescriptionId});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? patientId = null,
    Object? issueDate = null,
    Object? signedBy = null,
    Object? reportPublicId = null,
    Object? reportSecureUrl = null,
    Object? prescriptionId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      signedBy: null == signedBy
          ? _value.signedBy
          : signedBy // ignore: cast_nullable_to_non_nullable
              as String,
      reportPublicId: null == reportPublicId
          ? _value.reportPublicId
          : reportPublicId // ignore: cast_nullable_to_non_nullable
              as String,
      reportSecureUrl: null == reportSecureUrl
          ? _value.reportSecureUrl
          : reportSecureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      prescriptionId: null == prescriptionId
          ? _value.prescriptionId
          : prescriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String doctorId,
      String patientId,
      DateTime issueDate,
      String signedBy,
      String reportPublicId,
      String reportSecureUrl,
      String prescriptionId});
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? patientId = null,
    Object? issueDate = null,
    Object? signedBy = null,
    Object? reportPublicId = null,
    Object? reportSecureUrl = null,
    Object? prescriptionId = null,
  }) {
    return _then(_$ReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      signedBy: null == signedBy
          ? _value.signedBy
          : signedBy // ignore: cast_nullable_to_non_nullable
              as String,
      reportPublicId: null == reportPublicId
          ? _value.reportPublicId
          : reportPublicId // ignore: cast_nullable_to_non_nullable
              as String,
      reportSecureUrl: null == reportSecureUrl
          ? _value.reportSecureUrl
          : reportSecureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      prescriptionId: null == prescriptionId
          ? _value.prescriptionId
          : prescriptionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportImpl implements _Report {
  const _$ReportImpl(
      {required this.id,
      required this.doctorId,
      required this.patientId,
      required this.issueDate,
      required this.signedBy,
      required this.reportPublicId,
      required this.reportSecureUrl,
      required this.prescriptionId});

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

  @override
  final String id;
  @override
  final String doctorId;
  @override
  final String patientId;
  @override
  final DateTime issueDate;
  @override
  final String signedBy;
  @override
  final String reportPublicId;
  @override
  final String reportSecureUrl;
  @override
  final String prescriptionId;

  @override
  String toString() {
    return 'Report(id: $id, doctorId: $doctorId, patientId: $patientId, issueDate: $issueDate, signedBy: $signedBy, reportPublicId: $reportPublicId, reportSecureUrl: $reportSecureUrl, prescriptionId: $prescriptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.signedBy, signedBy) ||
                other.signedBy == signedBy) &&
            (identical(other.reportPublicId, reportPublicId) ||
                other.reportPublicId == reportPublicId) &&
            (identical(other.reportSecureUrl, reportSecureUrl) ||
                other.reportSecureUrl == reportSecureUrl) &&
            (identical(other.prescriptionId, prescriptionId) ||
                other.prescriptionId == prescriptionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, doctorId, patientId,
      issueDate, signedBy, reportPublicId, reportSecureUrl, prescriptionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {required final String id,
      required final String doctorId,
      required final String patientId,
      required final DateTime issueDate,
      required final String signedBy,
      required final String reportPublicId,
      required final String reportSecureUrl,
      required final String prescriptionId}) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

  @override
  String get id;
  @override
  String get doctorId;
  @override
  String get patientId;
  @override
  DateTime get issueDate;
  @override
  String get signedBy;
  @override
  String get reportPublicId;
  @override
  String get reportSecureUrl;
  @override
  String get prescriptionId;
  @override
  @JsonKey(ignore: true)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

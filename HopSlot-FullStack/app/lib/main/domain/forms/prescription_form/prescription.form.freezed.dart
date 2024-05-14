// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prescription.form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrescriptionForm _$PrescriptionFormFromJson(Map<String, dynamic> json) {
  return _PrescriptionForm.fromJson(json);
}

/// @nodoc
mixin _$PrescriptionForm {
  @RfControl(validators: [RequiredValidator()])
  String? get doctorId => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get appointmentId => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get patientId => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get body => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get docSign => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get otherNotes => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  @MultiFileTransformer()
  MultiFile<String>? get report => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrescriptionFormCopyWith<PrescriptionForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrescriptionFormCopyWith<$Res> {
  factory $PrescriptionFormCopyWith(
          PrescriptionForm value, $Res Function(PrescriptionForm) then) =
      _$PrescriptionFormCopyWithImpl<$Res, PrescriptionForm>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String? doctorId,
      @RfControl(validators: [RequiredValidator()]) String? appointmentId,
      @RfControl(validators: [RequiredValidator()]) String? patientId,
      @RfControl(validators: [RequiredValidator()]) String? body,
      @RfControl(validators: [RequiredValidator()]) String? docSign,
      @RfControl(validators: [RequiredValidator()]) String? otherNotes,
      @RfControl(validators: [RequiredValidator()])
      @MultiFileTransformer()
      MultiFile<String>? report});

  $MultiFileCopyWith<String, $Res>? get report;
}

/// @nodoc
class _$PrescriptionFormCopyWithImpl<$Res, $Val extends PrescriptionForm>
    implements $PrescriptionFormCopyWith<$Res> {
  _$PrescriptionFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? appointmentId = freezed,
    Object? patientId = freezed,
    Object? body = freezed,
    Object? docSign = freezed,
    Object? otherNotes = freezed,
    Object? report = freezed,
  }) {
    return _then(_value.copyWith(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      docSign: freezed == docSign
          ? _value.docSign
          : docSign // ignore: cast_nullable_to_non_nullable
              as String?,
      otherNotes: freezed == otherNotes
          ? _value.otherNotes
          : otherNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as MultiFile<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MultiFileCopyWith<String, $Res>? get report {
    if (_value.report == null) {
      return null;
    }

    return $MultiFileCopyWith<String, $Res>(_value.report!, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PrescriptionFormImplCopyWith<$Res>
    implements $PrescriptionFormCopyWith<$Res> {
  factory _$$PrescriptionFormImplCopyWith(_$PrescriptionFormImpl value,
          $Res Function(_$PrescriptionFormImpl) then) =
      __$$PrescriptionFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String? doctorId,
      @RfControl(validators: [RequiredValidator()]) String? appointmentId,
      @RfControl(validators: [RequiredValidator()]) String? patientId,
      @RfControl(validators: [RequiredValidator()]) String? body,
      @RfControl(validators: [RequiredValidator()]) String? docSign,
      @RfControl(validators: [RequiredValidator()]) String? otherNotes,
      @RfControl(validators: [RequiredValidator()])
      @MultiFileTransformer()
      MultiFile<String>? report});

  @override
  $MultiFileCopyWith<String, $Res>? get report;
}

/// @nodoc
class __$$PrescriptionFormImplCopyWithImpl<$Res>
    extends _$PrescriptionFormCopyWithImpl<$Res, _$PrescriptionFormImpl>
    implements _$$PrescriptionFormImplCopyWith<$Res> {
  __$$PrescriptionFormImplCopyWithImpl(_$PrescriptionFormImpl _value,
      $Res Function(_$PrescriptionFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? appointmentId = freezed,
    Object? patientId = freezed,
    Object? body = freezed,
    Object? docSign = freezed,
    Object? otherNotes = freezed,
    Object? report = freezed,
  }) {
    return _then(_$PrescriptionFormImpl(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      docSign: freezed == docSign
          ? _value.docSign
          : docSign // ignore: cast_nullable_to_non_nullable
              as String?,
      otherNotes: freezed == otherNotes
          ? _value.otherNotes
          : otherNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      report: freezed == report
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as MultiFile<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrescriptionFormImpl implements _PrescriptionForm {
  const _$PrescriptionFormImpl(
      {@RfControl(validators: [RequiredValidator()]) this.doctorId,
      @RfControl(validators: [RequiredValidator()]) this.appointmentId,
      @RfControl(validators: [RequiredValidator()]) this.patientId,
      @RfControl(validators: [RequiredValidator()]) this.body,
      @RfControl(validators: [RequiredValidator()]) this.docSign,
      @RfControl(validators: [RequiredValidator()]) this.otherNotes,
      @RfControl(validators: [RequiredValidator()])
      @MultiFileTransformer()
      this.report});

  factory _$PrescriptionFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrescriptionFormImplFromJson(json);

  @override
  @RfControl(validators: [RequiredValidator()])
  final String? doctorId;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? appointmentId;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? patientId;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? body;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? docSign;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? otherNotes;
  @override
  @RfControl(validators: [RequiredValidator()])
  @MultiFileTransformer()
  final MultiFile<String>? report;

  @override
  String toString() {
    return 'PrescriptionForm(doctorId: $doctorId, appointmentId: $appointmentId, patientId: $patientId, body: $body, docSign: $docSign, otherNotes: $otherNotes, report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrescriptionFormImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.docSign, docSign) || other.docSign == docSign) &&
            (identical(other.otherNotes, otherNotes) ||
                other.otherNotes == otherNotes) &&
            (identical(other.report, report) || other.report == report));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doctorId, appointmentId,
      patientId, body, docSign, otherNotes, report);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrescriptionFormImplCopyWith<_$PrescriptionFormImpl> get copyWith =>
      __$$PrescriptionFormImplCopyWithImpl<_$PrescriptionFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrescriptionFormImplToJson(
      this,
    );
  }
}

abstract class _PrescriptionForm implements PrescriptionForm {
  const factory _PrescriptionForm(
      {@RfControl(validators: [RequiredValidator()]) final String? doctorId,
      @RfControl(validators: [RequiredValidator()]) final String? appointmentId,
      @RfControl(validators: [RequiredValidator()]) final String? patientId,
      @RfControl(validators: [RequiredValidator()]) final String? body,
      @RfControl(validators: [RequiredValidator()]) final String? docSign,
      @RfControl(validators: [RequiredValidator()]) final String? otherNotes,
      @RfControl(validators: [RequiredValidator()])
      @MultiFileTransformer()
      final MultiFile<String>? report}) = _$PrescriptionFormImpl;

  factory _PrescriptionForm.fromJson(Map<String, dynamic> json) =
      _$PrescriptionFormImpl.fromJson;

  @override
  @RfControl(validators: [RequiredValidator()])
  String? get doctorId;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get appointmentId;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get patientId;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get body;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get docSign;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get otherNotes;
  @override
  @RfControl(validators: [RequiredValidator()])
  @MultiFileTransformer()
  MultiFile<String>? get report;
  @override
  @JsonKey(ignore: true)
  _$$PrescriptionFormImplCopyWith<_$PrescriptionFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

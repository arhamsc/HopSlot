// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_evidence.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SymptomEvidence _$SymptomEvidenceFromJson(Map<String, dynamic> json) {
  return _SymptomEvidence.fromJson(json);
}

/// @nodoc
mixin _$SymptomEvidence {
  @RfControl(validators: [RequiredValidator()])
  String get id => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get name => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get dataType => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get codeQuestion => throw _privateConstructorUsedError;
  PointOfInterestValue? get defaultValue => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  bool get isActecedent => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get question => throw _privateConstructorUsedError;
  List<PointOfInterestValue> get possibleValues =>
      throw _privateConstructorUsedError;

  /// Form Helper
  @RfControl()
  List<String> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomEvidenceCopyWith<SymptomEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomEvidenceCopyWith<$Res> {
  factory $SymptomEvidenceCopyWith(
          SymptomEvidence value, $Res Function(SymptomEvidence) then) =
      _$SymptomEvidenceCopyWithImpl<$Res, SymptomEvidence>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String id,
      @RfControl(validators: [RequiredValidator()]) String name,
      @RfControl(validators: [RequiredValidator()]) String dataType,
      @RfControl(validators: [RequiredValidator()]) String codeQuestion,
      PointOfInterestValue? defaultValue,
      @RfControl(validators: [RequiredValidator()]) bool isActecedent,
      @RfControl(validators: [RequiredValidator()]) String question,
      List<PointOfInterestValue> possibleValues,
      @RfControl() List<String> values});

  $PointOfInterestValueCopyWith<$Res>? get defaultValue;
}

/// @nodoc
class _$SymptomEvidenceCopyWithImpl<$Res, $Val extends SymptomEvidence>
    implements $SymptomEvidenceCopyWith<$Res> {
  _$SymptomEvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dataType = null,
    Object? codeQuestion = null,
    Object? defaultValue = freezed,
    Object? isActecedent = null,
    Object? question = null,
    Object? possibleValues = null,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      codeQuestion: null == codeQuestion
          ? _value.codeQuestion
          : codeQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as PointOfInterestValue?,
      isActecedent: null == isActecedent
          ? _value.isActecedent
          : isActecedent // ignore: cast_nullable_to_non_nullable
              as bool,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      possibleValues: null == possibleValues
          ? _value.possibleValues
          : possibleValues // ignore: cast_nullable_to_non_nullable
              as List<PointOfInterestValue>,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointOfInterestValueCopyWith<$Res>? get defaultValue {
    if (_value.defaultValue == null) {
      return null;
    }

    return $PointOfInterestValueCopyWith<$Res>(_value.defaultValue!, (value) {
      return _then(_value.copyWith(defaultValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SymptomEvidenceImplCopyWith<$Res>
    implements $SymptomEvidenceCopyWith<$Res> {
  factory _$$SymptomEvidenceImplCopyWith(_$SymptomEvidenceImpl value,
          $Res Function(_$SymptomEvidenceImpl) then) =
      __$$SymptomEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String id,
      @RfControl(validators: [RequiredValidator()]) String name,
      @RfControl(validators: [RequiredValidator()]) String dataType,
      @RfControl(validators: [RequiredValidator()]) String codeQuestion,
      PointOfInterestValue? defaultValue,
      @RfControl(validators: [RequiredValidator()]) bool isActecedent,
      @RfControl(validators: [RequiredValidator()]) String question,
      List<PointOfInterestValue> possibleValues,
      @RfControl() List<String> values});

  @override
  $PointOfInterestValueCopyWith<$Res>? get defaultValue;
}

/// @nodoc
class __$$SymptomEvidenceImplCopyWithImpl<$Res>
    extends _$SymptomEvidenceCopyWithImpl<$Res, _$SymptomEvidenceImpl>
    implements _$$SymptomEvidenceImplCopyWith<$Res> {
  __$$SymptomEvidenceImplCopyWithImpl(
      _$SymptomEvidenceImpl _value, $Res Function(_$SymptomEvidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dataType = null,
    Object? codeQuestion = null,
    Object? defaultValue = freezed,
    Object? isActecedent = null,
    Object? question = null,
    Object? possibleValues = null,
    Object? values = null,
  }) {
    return _then(_$SymptomEvidenceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: null == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String,
      codeQuestion: null == codeQuestion
          ? _value.codeQuestion
          : codeQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as PointOfInterestValue?,
      isActecedent: null == isActecedent
          ? _value.isActecedent
          : isActecedent // ignore: cast_nullable_to_non_nullable
              as bool,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      possibleValues: null == possibleValues
          ? _value._possibleValues
          : possibleValues // ignore: cast_nullable_to_non_nullable
              as List<PointOfInterestValue>,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomEvidenceImpl implements _SymptomEvidence {
  const _$SymptomEvidenceImpl(
      {@RfControl(validators: [RequiredValidator()]) required this.id,
      @RfControl(validators: [RequiredValidator()]) required this.name,
      @RfControl(validators: [RequiredValidator()]) required this.dataType,
      @RfControl(validators: [RequiredValidator()]) required this.codeQuestion,
      required this.defaultValue,
      @RfControl(validators: [RequiredValidator()]) required this.isActecedent,
      @RfControl(validators: [RequiredValidator()]) required this.question,
      required final List<PointOfInterestValue> possibleValues,
      @RfControl() final List<String> values = const []})
      : _possibleValues = possibleValues,
        _values = values;

  factory _$SymptomEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomEvidenceImplFromJson(json);

  @override
  @RfControl(validators: [RequiredValidator()])
  final String id;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String name;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String dataType;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String codeQuestion;
  @override
  final PointOfInterestValue? defaultValue;
  @override
  @RfControl(validators: [RequiredValidator()])
  final bool isActecedent;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String question;
  final List<PointOfInterestValue> _possibleValues;
  @override
  List<PointOfInterestValue> get possibleValues {
    if (_possibleValues is EqualUnmodifiableListView) return _possibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibleValues);
  }

  /// Form Helper
  final List<String> _values;

  /// Form Helper
  @override
  @JsonKey()
  @RfControl()
  List<String> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'SymptomEvidence(id: $id, name: $name, dataType: $dataType, codeQuestion: $codeQuestion, defaultValue: $defaultValue, isActecedent: $isActecedent, question: $question, possibleValues: $possibleValues, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomEvidenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            (identical(other.codeQuestion, codeQuestion) ||
                other.codeQuestion == codeQuestion) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.isActecedent, isActecedent) ||
                other.isActecedent == isActecedent) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._possibleValues, _possibleValues) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      dataType,
      codeQuestion,
      defaultValue,
      isActecedent,
      question,
      const DeepCollectionEquality().hash(_possibleValues),
      const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomEvidenceImplCopyWith<_$SymptomEvidenceImpl> get copyWith =>
      __$$SymptomEvidenceImplCopyWithImpl<_$SymptomEvidenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomEvidenceImplToJson(
      this,
    );
  }
}

abstract class _SymptomEvidence implements SymptomEvidence {
  const factory _SymptomEvidence(
      {@RfControl(validators: [RequiredValidator()]) required final String id,
      @RfControl(validators: [RequiredValidator()]) required final String name,
      @RfControl(validators: [RequiredValidator()])
      required final String dataType,
      @RfControl(validators: [RequiredValidator()])
      required final String codeQuestion,
      required final PointOfInterestValue? defaultValue,
      @RfControl(validators: [RequiredValidator()])
      required final bool isActecedent,
      @RfControl(validators: [RequiredValidator()])
      required final String question,
      required final List<PointOfInterestValue> possibleValues,
      @RfControl() final List<String> values}) = _$SymptomEvidenceImpl;

  factory _SymptomEvidence.fromJson(Map<String, dynamic> json) =
      _$SymptomEvidenceImpl.fromJson;

  @override
  @RfControl(validators: [RequiredValidator()])
  String get id;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get name;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get dataType;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get codeQuestion;
  @override
  PointOfInterestValue? get defaultValue;
  @override
  @RfControl(validators: [RequiredValidator()])
  bool get isActecedent;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get question;
  @override
  List<PointOfInterestValue> get possibleValues;
  @override

  /// Form Helper
  @RfControl()
  List<String> get values;
  @override
  @JsonKey(ignore: true)
  _$$SymptomEvidenceImplCopyWith<_$SymptomEvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

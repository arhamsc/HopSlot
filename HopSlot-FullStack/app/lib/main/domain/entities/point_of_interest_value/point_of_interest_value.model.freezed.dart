// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_of_interest_value.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointOfInterestValue _$PointOfInterestValueFromJson(Map<String, dynamic> json) {
  return _PointOfInterestValue.fromJson(json);
}

/// @nodoc
mixin _$PointOfInterestValue {
  @RfControl(validators: [RequiredValidator()])
  String get id => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get name => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get value => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get forType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointOfInterestValueCopyWith<PointOfInterestValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointOfInterestValueCopyWith<$Res> {
  factory $PointOfInterestValueCopyWith(PointOfInterestValue value,
          $Res Function(PointOfInterestValue) then) =
      _$PointOfInterestValueCopyWithImpl<$Res, PointOfInterestValue>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String id,
      @RfControl(validators: [RequiredValidator()]) String name,
      @RfControl(validators: [RequiredValidator()]) String value,
      @RfControl(validators: [RequiredValidator()]) String forType});
}

/// @nodoc
class _$PointOfInterestValueCopyWithImpl<$Res,
        $Val extends PointOfInterestValue>
    implements $PointOfInterestValueCopyWith<$Res> {
  _$PointOfInterestValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? forType = null,
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
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      forType: null == forType
          ? _value.forType
          : forType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointOfInterestValueImplCopyWith<$Res>
    implements $PointOfInterestValueCopyWith<$Res> {
  factory _$$PointOfInterestValueImplCopyWith(_$PointOfInterestValueImpl value,
          $Res Function(_$PointOfInterestValueImpl) then) =
      __$$PointOfInterestValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String id,
      @RfControl(validators: [RequiredValidator()]) String name,
      @RfControl(validators: [RequiredValidator()]) String value,
      @RfControl(validators: [RequiredValidator()]) String forType});
}

/// @nodoc
class __$$PointOfInterestValueImplCopyWithImpl<$Res>
    extends _$PointOfInterestValueCopyWithImpl<$Res, _$PointOfInterestValueImpl>
    implements _$$PointOfInterestValueImplCopyWith<$Res> {
  __$$PointOfInterestValueImplCopyWithImpl(_$PointOfInterestValueImpl _value,
      $Res Function(_$PointOfInterestValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? value = null,
    Object? forType = null,
  }) {
    return _then(_$PointOfInterestValueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      forType: null == forType
          ? _value.forType
          : forType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointOfInterestValueImpl implements _PointOfInterestValue {
  const _$PointOfInterestValueImpl(
      {@RfControl(validators: [RequiredValidator()]) required this.id,
      @RfControl(validators: [RequiredValidator()]) required this.name,
      @RfControl(validators: [RequiredValidator()]) required this.value,
      @RfControl(validators: [RequiredValidator()]) required this.forType});

  factory _$PointOfInterestValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointOfInterestValueImplFromJson(json);

  @override
  @RfControl(validators: [RequiredValidator()])
  final String id;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String name;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String value;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String forType;

  @override
  String toString() {
    return 'PointOfInterestValue(id: $id, name: $name, value: $value, forType: $forType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointOfInterestValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.forType, forType) || other.forType == forType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, forType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointOfInterestValueImplCopyWith<_$PointOfInterestValueImpl>
      get copyWith =>
          __$$PointOfInterestValueImplCopyWithImpl<_$PointOfInterestValueImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointOfInterestValueImplToJson(
      this,
    );
  }
}

abstract class _PointOfInterestValue implements PointOfInterestValue {
  const factory _PointOfInterestValue(
      {@RfControl(validators: [RequiredValidator()]) required final String id,
      @RfControl(validators: [RequiredValidator()]) required final String name,
      @RfControl(validators: [RequiredValidator()]) required final String value,
      @RfControl(validators: [RequiredValidator()])
      required final String forType}) = _$PointOfInterestValueImpl;

  factory _PointOfInterestValue.fromJson(Map<String, dynamic> json) =
      _$PointOfInterestValueImpl.fromJson;

  @override
  @RfControl(validators: [RequiredValidator()])
  String get id;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get name;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get value;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get forType;
  @override
  @JsonKey(ignore: true)
  _$$PointOfInterestValueImplCopyWith<_$PointOfInterestValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

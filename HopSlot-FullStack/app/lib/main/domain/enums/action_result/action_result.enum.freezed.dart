// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_result.enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActionResult _$ActionResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ActionResult.fromJson(json);
    case 'success':
      return _ActionResultSuccess.fromJson(json);
    case 'unSuccessful':
      return _ActionResultUnSuccessful.fromJson(json);
    case 'idle':
      return _ActionResultIdle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ActionResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ActionResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() unSuccessful,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? unSuccessful,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? unSuccessful,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ActionResult value) $default, {
    required TResult Function(_ActionResultSuccess value) success,
    required TResult Function(_ActionResultUnSuccessful value) unSuccessful,
    required TResult Function(_ActionResultIdle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ActionResult value)? $default, {
    TResult? Function(_ActionResultSuccess value)? success,
    TResult? Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult? Function(_ActionResultIdle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ActionResult value)? $default, {
    TResult Function(_ActionResultSuccess value)? success,
    TResult Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult Function(_ActionResultIdle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionResultCopyWith<$Res> {
  factory $ActionResultCopyWith(
          ActionResult value, $Res Function(ActionResult) then) =
      _$ActionResultCopyWithImpl<$Res, ActionResult>;
}

/// @nodoc
class _$ActionResultCopyWithImpl<$Res, $Val extends ActionResult>
    implements $ActionResultCopyWith<$Res> {
  _$ActionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActionResultImplCopyWith<$Res> {
  factory _$$ActionResultImplCopyWith(
          _$ActionResultImpl value, $Res Function(_$ActionResultImpl) then) =
      __$$ActionResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionResultImplCopyWithImpl<$Res>
    extends _$ActionResultCopyWithImpl<$Res, _$ActionResultImpl>
    implements _$$ActionResultImplCopyWith<$Res> {
  __$$ActionResultImplCopyWithImpl(
      _$ActionResultImpl _value, $Res Function(_$ActionResultImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ActionResultImpl extends _ActionResult {
  const _$ActionResultImpl({final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$ActionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionResultImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionResultImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() unSuccessful,
    required TResult Function() idle,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? unSuccessful,
    TResult? Function()? idle,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? unSuccessful,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ActionResult value) $default, {
    required TResult Function(_ActionResultSuccess value) success,
    required TResult Function(_ActionResultUnSuccessful value) unSuccessful,
    required TResult Function(_ActionResultIdle value) idle,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ActionResult value)? $default, {
    TResult? Function(_ActionResultSuccess value)? success,
    TResult? Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult? Function(_ActionResultIdle value)? idle,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ActionResult value)? $default, {
    TResult Function(_ActionResultSuccess value)? success,
    TResult Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult Function(_ActionResultIdle value)? idle,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionResultImplToJson(
      this,
    );
  }
}

abstract class _ActionResult extends ActionResult {
  const factory _ActionResult() = _$ActionResultImpl;
  const _ActionResult._() : super._();

  factory _ActionResult.fromJson(Map<String, dynamic> json) =
      _$ActionResultImpl.fromJson;
}

/// @nodoc
abstract class _$$ActionResultSuccessImplCopyWith<$Res> {
  factory _$$ActionResultSuccessImplCopyWith(_$ActionResultSuccessImpl value,
          $Res Function(_$ActionResultSuccessImpl) then) =
      __$$ActionResultSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionResultSuccessImplCopyWithImpl<$Res>
    extends _$ActionResultCopyWithImpl<$Res, _$ActionResultSuccessImpl>
    implements _$$ActionResultSuccessImplCopyWith<$Res> {
  __$$ActionResultSuccessImplCopyWithImpl(_$ActionResultSuccessImpl _value,
      $Res Function(_$ActionResultSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ActionResultSuccessImpl extends _ActionResultSuccess {
  const _$ActionResultSuccessImpl({final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$ActionResultSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionResultSuccessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionResultSuccessImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() unSuccessful,
    required TResult Function() idle,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? unSuccessful,
    TResult? Function()? idle,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? unSuccessful,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ActionResult value) $default, {
    required TResult Function(_ActionResultSuccess value) success,
    required TResult Function(_ActionResultUnSuccessful value) unSuccessful,
    required TResult Function(_ActionResultIdle value) idle,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ActionResult value)? $default, {
    TResult? Function(_ActionResultSuccess value)? success,
    TResult? Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult? Function(_ActionResultIdle value)? idle,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ActionResult value)? $default, {
    TResult Function(_ActionResultSuccess value)? success,
    TResult Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult Function(_ActionResultIdle value)? idle,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionResultSuccessImplToJson(
      this,
    );
  }
}

abstract class _ActionResultSuccess extends ActionResult {
  const factory _ActionResultSuccess() = _$ActionResultSuccessImpl;
  const _ActionResultSuccess._() : super._();

  factory _ActionResultSuccess.fromJson(Map<String, dynamic> json) =
      _$ActionResultSuccessImpl.fromJson;
}

/// @nodoc
abstract class _$$ActionResultUnSuccessfulImplCopyWith<$Res> {
  factory _$$ActionResultUnSuccessfulImplCopyWith(
          _$ActionResultUnSuccessfulImpl value,
          $Res Function(_$ActionResultUnSuccessfulImpl) then) =
      __$$ActionResultUnSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionResultUnSuccessfulImplCopyWithImpl<$Res>
    extends _$ActionResultCopyWithImpl<$Res, _$ActionResultUnSuccessfulImpl>
    implements _$$ActionResultUnSuccessfulImplCopyWith<$Res> {
  __$$ActionResultUnSuccessfulImplCopyWithImpl(
      _$ActionResultUnSuccessfulImpl _value,
      $Res Function(_$ActionResultUnSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ActionResultUnSuccessfulImpl extends _ActionResultUnSuccessful {
  const _$ActionResultUnSuccessfulImpl({final String? $type})
      : $type = $type ?? 'unSuccessful',
        super._();

  factory _$ActionResultUnSuccessfulImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionResultUnSuccessfulImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionResult.unSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionResultUnSuccessfulImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() unSuccessful,
    required TResult Function() idle,
  }) {
    return unSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? unSuccessful,
    TResult? Function()? idle,
  }) {
    return unSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? unSuccessful,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (unSuccessful != null) {
      return unSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ActionResult value) $default, {
    required TResult Function(_ActionResultSuccess value) success,
    required TResult Function(_ActionResultUnSuccessful value) unSuccessful,
    required TResult Function(_ActionResultIdle value) idle,
  }) {
    return unSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ActionResult value)? $default, {
    TResult? Function(_ActionResultSuccess value)? success,
    TResult? Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult? Function(_ActionResultIdle value)? idle,
  }) {
    return unSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ActionResult value)? $default, {
    TResult Function(_ActionResultSuccess value)? success,
    TResult Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult Function(_ActionResultIdle value)? idle,
    required TResult orElse(),
  }) {
    if (unSuccessful != null) {
      return unSuccessful(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionResultUnSuccessfulImplToJson(
      this,
    );
  }
}

abstract class _ActionResultUnSuccessful extends ActionResult {
  const factory _ActionResultUnSuccessful() = _$ActionResultUnSuccessfulImpl;
  const _ActionResultUnSuccessful._() : super._();

  factory _ActionResultUnSuccessful.fromJson(Map<String, dynamic> json) =
      _$ActionResultUnSuccessfulImpl.fromJson;
}

/// @nodoc
abstract class _$$ActionResultIdleImplCopyWith<$Res> {
  factory _$$ActionResultIdleImplCopyWith(_$ActionResultIdleImpl value,
          $Res Function(_$ActionResultIdleImpl) then) =
      __$$ActionResultIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionResultIdleImplCopyWithImpl<$Res>
    extends _$ActionResultCopyWithImpl<$Res, _$ActionResultIdleImpl>
    implements _$$ActionResultIdleImplCopyWith<$Res> {
  __$$ActionResultIdleImplCopyWithImpl(_$ActionResultIdleImpl _value,
      $Res Function(_$ActionResultIdleImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ActionResultIdleImpl extends _ActionResultIdle {
  const _$ActionResultIdleImpl({final String? $type})
      : $type = $type ?? 'idle',
        super._();

  factory _$ActionResultIdleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionResultIdleImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ActionResult.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionResultIdleImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() success,
    required TResult Function() unSuccessful,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? success,
    TResult? Function()? unSuccessful,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? success,
    TResult Function()? unSuccessful,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ActionResult value) $default, {
    required TResult Function(_ActionResultSuccess value) success,
    required TResult Function(_ActionResultUnSuccessful value) unSuccessful,
    required TResult Function(_ActionResultIdle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ActionResult value)? $default, {
    TResult? Function(_ActionResultSuccess value)? success,
    TResult? Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult? Function(_ActionResultIdle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ActionResult value)? $default, {
    TResult Function(_ActionResultSuccess value)? success,
    TResult Function(_ActionResultUnSuccessful value)? unSuccessful,
    TResult Function(_ActionResultIdle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionResultIdleImplToJson(
      this,
    );
  }
}

abstract class _ActionResultIdle extends ActionResult {
  const factory _ActionResultIdle() = _$ActionResultIdleImpl;
  const _ActionResultIdle._() : super._();

  factory _ActionResultIdle.fromJson(Map<String, dynamic> json) =
      _$ActionResultIdleImpl.fromJson;
}

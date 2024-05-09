// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Status _$StatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pending':
      return StatusPending.fromJson(json);
    case 'active':
      return StatusActive.fromJson(json);
    case 'inactive':
      return StatusInactive.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Status',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Status {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() active,
    required TResult Function() inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? active,
    TResult? Function()? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? active,
    TResult Function()? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusPending value) pending,
    required TResult Function(StatusActive value) active,
    required TResult Function(StatusInactive value) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusPending value)? pending,
    TResult? Function(StatusActive value)? active,
    TResult? Function(StatusInactive value)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusPending value)? pending,
    TResult Function(StatusActive value)? active,
    TResult Function(StatusInactive value)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StatusPendingImplCopyWith<$Res> {
  factory _$$StatusPendingImplCopyWith(
          _$StatusPendingImpl value, $Res Function(_$StatusPendingImpl) then) =
      __$$StatusPendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusPendingImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusPendingImpl>
    implements _$$StatusPendingImplCopyWith<$Res> {
  __$$StatusPendingImplCopyWithImpl(
      _$StatusPendingImpl _value, $Res Function(_$StatusPendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StatusPendingImpl implements StatusPending {
  const _$StatusPendingImpl({final String? $type}) : $type = $type ?? 'pending';

  factory _$StatusPendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusPendingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusPendingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() active,
    required TResult Function() inactive,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? active,
    TResult? Function()? inactive,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? active,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusPending value) pending,
    required TResult Function(StatusActive value) active,
    required TResult Function(StatusInactive value) inactive,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusPending value)? pending,
    TResult? Function(StatusActive value)? active,
    TResult? Function(StatusInactive value)? inactive,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusPending value)? pending,
    TResult Function(StatusActive value)? active,
    TResult Function(StatusInactive value)? inactive,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusPendingImplToJson(
      this,
    );
  }
}

abstract class StatusPending implements Status {
  const factory StatusPending() = _$StatusPendingImpl;

  factory StatusPending.fromJson(Map<String, dynamic> json) =
      _$StatusPendingImpl.fromJson;
}

/// @nodoc
abstract class _$$StatusActiveImplCopyWith<$Res> {
  factory _$$StatusActiveImplCopyWith(
          _$StatusActiveImpl value, $Res Function(_$StatusActiveImpl) then) =
      __$$StatusActiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusActiveImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusActiveImpl>
    implements _$$StatusActiveImplCopyWith<$Res> {
  __$$StatusActiveImplCopyWithImpl(
      _$StatusActiveImpl _value, $Res Function(_$StatusActiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StatusActiveImpl implements StatusActive {
  const _$StatusActiveImpl({final String? $type}) : $type = $type ?? 'active';

  factory _$StatusActiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusActiveImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.active()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusActiveImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() active,
    required TResult Function() inactive,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? active,
    TResult? Function()? inactive,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? active,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusPending value) pending,
    required TResult Function(StatusActive value) active,
    required TResult Function(StatusInactive value) inactive,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusPending value)? pending,
    TResult? Function(StatusActive value)? active,
    TResult? Function(StatusInactive value)? inactive,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusPending value)? pending,
    TResult Function(StatusActive value)? active,
    TResult Function(StatusInactive value)? inactive,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusActiveImplToJson(
      this,
    );
  }
}

abstract class StatusActive implements Status {
  const factory StatusActive() = _$StatusActiveImpl;

  factory StatusActive.fromJson(Map<String, dynamic> json) =
      _$StatusActiveImpl.fromJson;
}

/// @nodoc
abstract class _$$StatusInactiveImplCopyWith<$Res> {
  factory _$$StatusInactiveImplCopyWith(_$StatusInactiveImpl value,
          $Res Function(_$StatusInactiveImpl) then) =
      __$$StatusInactiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatusInactiveImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusInactiveImpl>
    implements _$$StatusInactiveImplCopyWith<$Res> {
  __$$StatusInactiveImplCopyWithImpl(
      _$StatusInactiveImpl _value, $Res Function(_$StatusInactiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$StatusInactiveImpl implements StatusInactive {
  const _$StatusInactiveImpl({final String? $type})
      : $type = $type ?? 'inactive';

  factory _$StatusInactiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusInactiveImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Status.inactive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatusInactiveImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() active,
    required TResult Function() inactive,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? active,
    TResult? Function()? inactive,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? active,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatusPending value) pending,
    required TResult Function(StatusActive value) active,
    required TResult Function(StatusInactive value) inactive,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatusPending value)? pending,
    TResult? Function(StatusActive value)? active,
    TResult? Function(StatusInactive value)? inactive,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatusPending value)? pending,
    TResult Function(StatusActive value)? active,
    TResult Function(StatusInactive value)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusInactiveImplToJson(
      this,
    );
  }
}

abstract class StatusInactive implements Status {
  const factory StatusInactive() = _$StatusInactiveImpl;

  factory StatusInactive.fromJson(Map<String, dynamic> json) =
      _$StatusInactiveImpl.fromJson;
}

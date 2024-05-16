// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snack_bar.state.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnackBarState _$SnackBarStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _SnackBarStateInitial.fromJson(json);
    case 'active':
      return _SnackBarStateActive.fromJson(json);
    case 'hidden':
      return _SnackBarStateHidden.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SnackBarState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SnackBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)
        active,
    required TResult Function() hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult? Function()? hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult Function()? hidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackBarStateInitial value) initial,
    required TResult Function(_SnackBarStateActive value) active,
    required TResult Function(_SnackBarStateHidden value) hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackBarStateInitial value)? initial,
    TResult? Function(_SnackBarStateActive value)? active,
    TResult? Function(_SnackBarStateHidden value)? hidden,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackBarStateInitial value)? initial,
    TResult Function(_SnackBarStateActive value)? active,
    TResult Function(_SnackBarStateHidden value)? hidden,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackBarStateCopyWith<$Res> {
  factory $SnackBarStateCopyWith(
          SnackBarState value, $Res Function(SnackBarState) then) =
      _$SnackBarStateCopyWithImpl<$Res, SnackBarState>;
}

/// @nodoc
class _$SnackBarStateCopyWithImpl<$Res, $Val extends SnackBarState>
    implements $SnackBarStateCopyWith<$Res> {
  _$SnackBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SnackBarStateInitialImplCopyWith<$Res> {
  factory _$$SnackBarStateInitialImplCopyWith(_$SnackBarStateInitialImpl value,
          $Res Function(_$SnackBarStateInitialImpl) then) =
      __$$SnackBarStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SnackBarStateInitialImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$SnackBarStateInitialImpl>
    implements _$$SnackBarStateInitialImplCopyWith<$Res> {
  __$$SnackBarStateInitialImplCopyWithImpl(_$SnackBarStateInitialImpl _value,
      $Res Function(_$SnackBarStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SnackBarStateInitialImpl extends _SnackBarStateInitial {
  const _$SnackBarStateInitialImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$SnackBarStateInitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnackBarStateInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SnackBarState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarStateInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)
        active,
    required TResult Function() hidden,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult? Function()? hidden,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult Function()? hidden,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackBarStateInitial value) initial,
    required TResult Function(_SnackBarStateActive value) active,
    required TResult Function(_SnackBarStateHidden value) hidden,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackBarStateInitial value)? initial,
    TResult? Function(_SnackBarStateActive value)? active,
    TResult? Function(_SnackBarStateHidden value)? hidden,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackBarStateInitial value)? initial,
    TResult Function(_SnackBarStateActive value)? active,
    TResult Function(_SnackBarStateHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SnackBarStateInitialImplToJson(
      this,
    );
  }
}

abstract class _SnackBarStateInitial extends SnackBarState {
  const factory _SnackBarStateInitial() = _$SnackBarStateInitialImpl;
  const _SnackBarStateInitial._() : super._();

  factory _SnackBarStateInitial.fromJson(Map<String, dynamic> json) =
      _$SnackBarStateInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$SnackBarStateActiveImplCopyWith<$Res> {
  factory _$$SnackBarStateActiveImplCopyWith(_$SnackBarStateActiveImpl value,
          $Res Function(_$SnackBarStateActiveImpl) then) =
      __$$SnackBarStateActiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String message,
      String? title,
      SnackbarType type,
      bool blockScreen,
      bool autoClose});
}

/// @nodoc
class __$$SnackBarStateActiveImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$SnackBarStateActiveImpl>
    implements _$$SnackBarStateActiveImplCopyWith<$Res> {
  __$$SnackBarStateActiveImplCopyWithImpl(_$SnackBarStateActiveImpl _value,
      $Res Function(_$SnackBarStateActiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? title = freezed,
    Object? type = null,
    Object? blockScreen = null,
    Object? autoClose = null,
  }) {
    return _then(_$SnackBarStateActiveImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnackbarType,
      blockScreen: null == blockScreen
          ? _value.blockScreen
          : blockScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      autoClose: null == autoClose
          ? _value.autoClose
          : autoClose // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnackBarStateActiveImpl extends _SnackBarStateActive {
  const _$SnackBarStateActiveImpl(
      {required this.message,
      this.title,
      required this.type,
      this.blockScreen = false,
      this.autoClose = true,
      final String? $type})
      : $type = $type ?? 'active',
        super._();

  factory _$SnackBarStateActiveImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnackBarStateActiveImplFromJson(json);

  @override
  final String message;
  @override
  final String? title;
  @override
  final SnackbarType type;
  @override
  @JsonKey()
  final bool blockScreen;
  @override
  @JsonKey()
  final bool autoClose;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SnackBarState.active(message: $message, title: $title, type: $type, blockScreen: $blockScreen, autoClose: $autoClose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarStateActiveImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.blockScreen, blockScreen) ||
                other.blockScreen == blockScreen) &&
            (identical(other.autoClose, autoClose) ||
                other.autoClose == autoClose));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, title, type, blockScreen, autoClose);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarStateActiveImplCopyWith<_$SnackBarStateActiveImpl> get copyWith =>
      __$$SnackBarStateActiveImplCopyWithImpl<_$SnackBarStateActiveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)
        active,
    required TResult Function() hidden,
  }) {
    return active(message, title, type, blockScreen, autoClose);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult? Function()? hidden,
  }) {
    return active?.call(message, title, type, blockScreen, autoClose);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult Function()? hidden,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(message, title, type, blockScreen, autoClose);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackBarStateInitial value) initial,
    required TResult Function(_SnackBarStateActive value) active,
    required TResult Function(_SnackBarStateHidden value) hidden,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackBarStateInitial value)? initial,
    TResult? Function(_SnackBarStateActive value)? active,
    TResult? Function(_SnackBarStateHidden value)? hidden,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackBarStateInitial value)? initial,
    TResult Function(_SnackBarStateActive value)? active,
    TResult Function(_SnackBarStateHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SnackBarStateActiveImplToJson(
      this,
    );
  }
}

abstract class _SnackBarStateActive extends SnackBarState {
  const factory _SnackBarStateActive(
      {required final String message,
      final String? title,
      required final SnackbarType type,
      final bool blockScreen,
      final bool autoClose}) = _$SnackBarStateActiveImpl;
  const _SnackBarStateActive._() : super._();

  factory _SnackBarStateActive.fromJson(Map<String, dynamic> json) =
      _$SnackBarStateActiveImpl.fromJson;

  String get message;
  String? get title;
  SnackbarType get type;
  bool get blockScreen;
  bool get autoClose;
  @JsonKey(ignore: true)
  _$$SnackBarStateActiveImplCopyWith<_$SnackBarStateActiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SnackBarStateHiddenImplCopyWith<$Res> {
  factory _$$SnackBarStateHiddenImplCopyWith(_$SnackBarStateHiddenImpl value,
          $Res Function(_$SnackBarStateHiddenImpl) then) =
      __$$SnackBarStateHiddenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SnackBarStateHiddenImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$SnackBarStateHiddenImpl>
    implements _$$SnackBarStateHiddenImplCopyWith<$Res> {
  __$$SnackBarStateHiddenImplCopyWithImpl(_$SnackBarStateHiddenImpl _value,
      $Res Function(_$SnackBarStateHiddenImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SnackBarStateHiddenImpl extends _SnackBarStateHidden {
  const _$SnackBarStateHiddenImpl({final String? $type})
      : $type = $type ?? 'hidden',
        super._();

  factory _$SnackBarStateHiddenImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnackBarStateHiddenImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SnackBarState.hidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarStateHiddenImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)
        active,
    required TResult Function() hidden,
  }) {
    return hidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult? Function()? hidden,
  }) {
    return hidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message, String? title, SnackbarType type,
            bool blockScreen, bool autoClose)?
        active,
    TResult Function()? hidden,
    required TResult orElse(),
  }) {
    if (hidden != null) {
      return hidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SnackBarStateInitial value) initial,
    required TResult Function(_SnackBarStateActive value) active,
    required TResult Function(_SnackBarStateHidden value) hidden,
  }) {
    return hidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SnackBarStateInitial value)? initial,
    TResult? Function(_SnackBarStateActive value)? active,
    TResult? Function(_SnackBarStateHidden value)? hidden,
  }) {
    return hidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SnackBarStateInitial value)? initial,
    TResult Function(_SnackBarStateActive value)? active,
    TResult Function(_SnackBarStateHidden value)? hidden,
    required TResult orElse(),
  }) {
    if (hidden != null) {
      return hidden(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SnackBarStateHiddenImplToJson(
      this,
    );
  }
}

abstract class _SnackBarStateHidden extends SnackBarState {
  const factory _SnackBarStateHidden() = _$SnackBarStateHiddenImpl;
  const _SnackBarStateHidden._() : super._();

  factory _SnackBarStateHidden.fromJson(Map<String, dynamic> json) =
      _$SnackBarStateHiddenImpl.fromJson;
}

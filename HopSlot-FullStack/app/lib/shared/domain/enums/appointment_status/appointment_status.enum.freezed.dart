// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_status.enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EAppointmentStatus _$EAppointmentStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pending':
      return AppointmentPending.fromJson(json);
    case 'confirmed':
      return AppointmentConfirmed.fromJson(json);
    case 'cancelled':
      return AppointmentCancelled.fromJson(json);
    case 'completed':
      return AppointmentCompleted.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'EAppointmentStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$EAppointmentStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() cancelled,
    required TResult Function() completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? confirmed,
    TResult? Function()? cancelled,
    TResult? Function()? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? cancelled,
    TResult Function()? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentPending value) pending,
    required TResult Function(AppointmentConfirmed value) confirmed,
    required TResult Function(AppointmentCancelled value) cancelled,
    required TResult Function(AppointmentCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentPending value)? pending,
    TResult? Function(AppointmentConfirmed value)? confirmed,
    TResult? Function(AppointmentCancelled value)? cancelled,
    TResult? Function(AppointmentCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentPending value)? pending,
    TResult Function(AppointmentConfirmed value)? confirmed,
    TResult Function(AppointmentCancelled value)? cancelled,
    TResult Function(AppointmentCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EAppointmentStatusCopyWith<$Res> {
  factory $EAppointmentStatusCopyWith(
          EAppointmentStatus value, $Res Function(EAppointmentStatus) then) =
      _$EAppointmentStatusCopyWithImpl<$Res, EAppointmentStatus>;
}

/// @nodoc
class _$EAppointmentStatusCopyWithImpl<$Res, $Val extends EAppointmentStatus>
    implements $EAppointmentStatusCopyWith<$Res> {
  _$EAppointmentStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppointmentPendingImplCopyWith<$Res> {
  factory _$$AppointmentPendingImplCopyWith(_$AppointmentPendingImpl value,
          $Res Function(_$AppointmentPendingImpl) then) =
      __$$AppointmentPendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppointmentPendingImplCopyWithImpl<$Res>
    extends _$EAppointmentStatusCopyWithImpl<$Res, _$AppointmentPendingImpl>
    implements _$$AppointmentPendingImplCopyWith<$Res> {
  __$$AppointmentPendingImplCopyWithImpl(_$AppointmentPendingImpl _value,
      $Res Function(_$AppointmentPendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppointmentPendingImpl implements AppointmentPending {
  const _$AppointmentPendingImpl({final String? $type})
      : $type = $type ?? 'pending';

  factory _$AppointmentPendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentPendingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EAppointmentStatus.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppointmentPendingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() cancelled,
    required TResult Function() completed,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? confirmed,
    TResult? Function()? cancelled,
    TResult? Function()? completed,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? cancelled,
    TResult Function()? completed,
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
    required TResult Function(AppointmentPending value) pending,
    required TResult Function(AppointmentConfirmed value) confirmed,
    required TResult Function(AppointmentCancelled value) cancelled,
    required TResult Function(AppointmentCompleted value) completed,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentPending value)? pending,
    TResult? Function(AppointmentConfirmed value)? confirmed,
    TResult? Function(AppointmentCancelled value)? cancelled,
    TResult? Function(AppointmentCompleted value)? completed,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentPending value)? pending,
    TResult Function(AppointmentConfirmed value)? confirmed,
    TResult Function(AppointmentCancelled value)? cancelled,
    TResult Function(AppointmentCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentPendingImplToJson(
      this,
    );
  }
}

abstract class AppointmentPending implements EAppointmentStatus {
  const factory AppointmentPending() = _$AppointmentPendingImpl;

  factory AppointmentPending.fromJson(Map<String, dynamic> json) =
      _$AppointmentPendingImpl.fromJson;
}

/// @nodoc
abstract class _$$AppointmentConfirmedImplCopyWith<$Res> {
  factory _$$AppointmentConfirmedImplCopyWith(_$AppointmentConfirmedImpl value,
          $Res Function(_$AppointmentConfirmedImpl) then) =
      __$$AppointmentConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppointmentConfirmedImplCopyWithImpl<$Res>
    extends _$EAppointmentStatusCopyWithImpl<$Res, _$AppointmentConfirmedImpl>
    implements _$$AppointmentConfirmedImplCopyWith<$Res> {
  __$$AppointmentConfirmedImplCopyWithImpl(_$AppointmentConfirmedImpl _value,
      $Res Function(_$AppointmentConfirmedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppointmentConfirmedImpl implements AppointmentConfirmed {
  const _$AppointmentConfirmedImpl({final String? $type})
      : $type = $type ?? 'confirmed';

  factory _$AppointmentConfirmedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentConfirmedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EAppointmentStatus.confirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentConfirmedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() cancelled,
    required TResult Function() completed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? confirmed,
    TResult? Function()? cancelled,
    TResult? Function()? completed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? cancelled,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentPending value) pending,
    required TResult Function(AppointmentConfirmed value) confirmed,
    required TResult Function(AppointmentCancelled value) cancelled,
    required TResult Function(AppointmentCompleted value) completed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentPending value)? pending,
    TResult? Function(AppointmentConfirmed value)? confirmed,
    TResult? Function(AppointmentCancelled value)? cancelled,
    TResult? Function(AppointmentCompleted value)? completed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentPending value)? pending,
    TResult Function(AppointmentConfirmed value)? confirmed,
    TResult Function(AppointmentCancelled value)? cancelled,
    TResult Function(AppointmentCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentConfirmedImplToJson(
      this,
    );
  }
}

abstract class AppointmentConfirmed implements EAppointmentStatus {
  const factory AppointmentConfirmed() = _$AppointmentConfirmedImpl;

  factory AppointmentConfirmed.fromJson(Map<String, dynamic> json) =
      _$AppointmentConfirmedImpl.fromJson;
}

/// @nodoc
abstract class _$$AppointmentCancelledImplCopyWith<$Res> {
  factory _$$AppointmentCancelledImplCopyWith(_$AppointmentCancelledImpl value,
          $Res Function(_$AppointmentCancelledImpl) then) =
      __$$AppointmentCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppointmentCancelledImplCopyWithImpl<$Res>
    extends _$EAppointmentStatusCopyWithImpl<$Res, _$AppointmentCancelledImpl>
    implements _$$AppointmentCancelledImplCopyWith<$Res> {
  __$$AppointmentCancelledImplCopyWithImpl(_$AppointmentCancelledImpl _value,
      $Res Function(_$AppointmentCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppointmentCancelledImpl implements AppointmentCancelled {
  const _$AppointmentCancelledImpl({final String? $type})
      : $type = $type ?? 'cancelled';

  factory _$AppointmentCancelledImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentCancelledImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EAppointmentStatus.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentCancelledImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() cancelled,
    required TResult Function() completed,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? confirmed,
    TResult? Function()? cancelled,
    TResult? Function()? completed,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? cancelled,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentPending value) pending,
    required TResult Function(AppointmentConfirmed value) confirmed,
    required TResult Function(AppointmentCancelled value) cancelled,
    required TResult Function(AppointmentCompleted value) completed,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentPending value)? pending,
    TResult? Function(AppointmentConfirmed value)? confirmed,
    TResult? Function(AppointmentCancelled value)? cancelled,
    TResult? Function(AppointmentCompleted value)? completed,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentPending value)? pending,
    TResult Function(AppointmentConfirmed value)? confirmed,
    TResult Function(AppointmentCancelled value)? cancelled,
    TResult Function(AppointmentCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentCancelledImplToJson(
      this,
    );
  }
}

abstract class AppointmentCancelled implements EAppointmentStatus {
  const factory AppointmentCancelled() = _$AppointmentCancelledImpl;

  factory AppointmentCancelled.fromJson(Map<String, dynamic> json) =
      _$AppointmentCancelledImpl.fromJson;
}

/// @nodoc
abstract class _$$AppointmentCompletedImplCopyWith<$Res> {
  factory _$$AppointmentCompletedImplCopyWith(_$AppointmentCompletedImpl value,
          $Res Function(_$AppointmentCompletedImpl) then) =
      __$$AppointmentCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppointmentCompletedImplCopyWithImpl<$Res>
    extends _$EAppointmentStatusCopyWithImpl<$Res, _$AppointmentCompletedImpl>
    implements _$$AppointmentCompletedImplCopyWith<$Res> {
  __$$AppointmentCompletedImplCopyWithImpl(_$AppointmentCompletedImpl _value,
      $Res Function(_$AppointmentCompletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AppointmentCompletedImpl implements AppointmentCompleted {
  const _$AppointmentCompletedImpl({final String? $type})
      : $type = $type ?? 'completed';

  factory _$AppointmentCompletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentCompletedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'EAppointmentStatus.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentCompletedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function() confirmed,
    required TResult Function() cancelled,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function()? confirmed,
    TResult? Function()? cancelled,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function()? confirmed,
    TResult Function()? cancelled,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppointmentPending value) pending,
    required TResult Function(AppointmentConfirmed value) confirmed,
    required TResult Function(AppointmentCancelled value) cancelled,
    required TResult Function(AppointmentCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppointmentPending value)? pending,
    TResult? Function(AppointmentConfirmed value)? confirmed,
    TResult? Function(AppointmentCancelled value)? cancelled,
    TResult? Function(AppointmentCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppointmentPending value)? pending,
    TResult Function(AppointmentConfirmed value)? confirmed,
    TResult Function(AppointmentCancelled value)? cancelled,
    TResult Function(AppointmentCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentCompletedImplToJson(
      this,
    );
  }
}

abstract class AppointmentCompleted implements EAppointmentStatus {
  const factory AppointmentCompleted() = _$AppointmentCompletedImpl;

  factory AppointmentCompleted.fromJson(Map<String, dynamic> json) =
      _$AppointmentCompletedImpl.fromJson;
}

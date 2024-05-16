// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_data.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  String get fromId => throw _privateConstructorUsedError;
  ERole get fromRole => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get appointmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {String fromId,
      ERole fromRole,
      String code,
      String message,
      String? appointmentId});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromId = null,
    Object? fromRole = null,
    Object? code = null,
    Object? message = null,
    Object? appointmentId = freezed,
  }) {
    return _then(_value.copyWith(
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromRole: null == fromRole
          ? _value.fromRole
          : fromRole // ignore: cast_nullable_to_non_nullable
              as ERole,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fromId,
      ERole fromRole,
      String code,
      String message,
      String? appointmentId});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromId = null,
    Object? fromRole = null,
    Object? code = null,
    Object? message = null,
    Object? appointmentId = freezed,
  }) {
    return _then(_$NotificationDataImpl(
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromRole: null == fromRole
          ? _value.fromRole
          : fromRole // ignore: cast_nullable_to_non_nullable
              as ERole,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      appointmentId: freezed == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl implements _NotificationData {
  const _$NotificationDataImpl(
      {required this.fromId,
      required this.fromRole,
      required this.code,
      required this.message,
      this.appointmentId});

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  final String fromId;
  @override
  final ERole fromRole;
  @override
  final String code;
  @override
  final String message;
  @override
  final String? appointmentId;

  @override
  String toString() {
    return 'NotificationData(fromId: $fromId, fromRole: $fromRole, code: $code, message: $message, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.fromRole, fromRole) ||
                other.fromRole == fromRole) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fromId, fromRole, code, message, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  const factory _NotificationData(
      {required final String fromId,
      required final ERole fromRole,
      required final String code,
      required final String message,
      final String? appointmentId}) = _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  String get fromId;
  @override
  ERole get fromRole;
  @override
  String get code;
  @override
  String get message;
  @override
  String? get appointmentId;
  @override
  @JsonKey(ignore: true)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

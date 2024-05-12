// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_history_controller.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentHistoryControllerState _$AppointmentHistoryControllerStateFromJson(
    Map<String, dynamic> json) {
  return _AppointmentHistoryControllerState.fromJson(json);
}

/// @nodoc
mixin _$AppointmentHistoryControllerState {
  List<AppointmentItem> get appointmentItems =>
      throw _privateConstructorUsedError;
  AppointmentDetail? get appointmentDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentHistoryControllerStateCopyWith<AppointmentHistoryControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentHistoryControllerStateCopyWith<$Res> {
  factory $AppointmentHistoryControllerStateCopyWith(
          AppointmentHistoryControllerState value,
          $Res Function(AppointmentHistoryControllerState) then) =
      _$AppointmentHistoryControllerStateCopyWithImpl<$Res,
          AppointmentHistoryControllerState>;
  @useResult
  $Res call(
      {List<AppointmentItem> appointmentItems,
      AppointmentDetail? appointmentDetail});

  $AppointmentDetailCopyWith<$Res>? get appointmentDetail;
}

/// @nodoc
class _$AppointmentHistoryControllerStateCopyWithImpl<$Res,
        $Val extends AppointmentHistoryControllerState>
    implements $AppointmentHistoryControllerStateCopyWith<$Res> {
  _$AppointmentHistoryControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentItems = null,
    Object? appointmentDetail = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentItems: null == appointmentItems
          ? _value.appointmentItems
          : appointmentItems // ignore: cast_nullable_to_non_nullable
              as List<AppointmentItem>,
      appointmentDetail: freezed == appointmentDetail
          ? _value.appointmentDetail
          : appointmentDetail // ignore: cast_nullable_to_non_nullable
              as AppointmentDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentDetailCopyWith<$Res>? get appointmentDetail {
    if (_value.appointmentDetail == null) {
      return null;
    }

    return $AppointmentDetailCopyWith<$Res>(_value.appointmentDetail!, (value) {
      return _then(_value.copyWith(appointmentDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentHistoryControllerStateImplCopyWith<$Res>
    implements $AppointmentHistoryControllerStateCopyWith<$Res> {
  factory _$$AppointmentHistoryControllerStateImplCopyWith(
          _$AppointmentHistoryControllerStateImpl value,
          $Res Function(_$AppointmentHistoryControllerStateImpl) then) =
      __$$AppointmentHistoryControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AppointmentItem> appointmentItems,
      AppointmentDetail? appointmentDetail});

  @override
  $AppointmentDetailCopyWith<$Res>? get appointmentDetail;
}

/// @nodoc
class __$$AppointmentHistoryControllerStateImplCopyWithImpl<$Res>
    extends _$AppointmentHistoryControllerStateCopyWithImpl<$Res,
        _$AppointmentHistoryControllerStateImpl>
    implements _$$AppointmentHistoryControllerStateImplCopyWith<$Res> {
  __$$AppointmentHistoryControllerStateImplCopyWithImpl(
      _$AppointmentHistoryControllerStateImpl _value,
      $Res Function(_$AppointmentHistoryControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentItems = null,
    Object? appointmentDetail = freezed,
  }) {
    return _then(_$AppointmentHistoryControllerStateImpl(
      appointmentItems: null == appointmentItems
          ? _value._appointmentItems
          : appointmentItems // ignore: cast_nullable_to_non_nullable
              as List<AppointmentItem>,
      appointmentDetail: freezed == appointmentDetail
          ? _value.appointmentDetail
          : appointmentDetail // ignore: cast_nullable_to_non_nullable
              as AppointmentDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentHistoryControllerStateImpl
    implements _AppointmentHistoryControllerState {
  const _$AppointmentHistoryControllerStateImpl(
      {required final List<AppointmentItem> appointmentItems,
      this.appointmentDetail})
      : _appointmentItems = appointmentItems;

  factory _$AppointmentHistoryControllerStateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AppointmentHistoryControllerStateImplFromJson(json);

  final List<AppointmentItem> _appointmentItems;
  @override
  List<AppointmentItem> get appointmentItems {
    if (_appointmentItems is EqualUnmodifiableListView)
      return _appointmentItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appointmentItems);
  }

  @override
  final AppointmentDetail? appointmentDetail;

  @override
  String toString() {
    return 'AppointmentHistoryControllerState(appointmentItems: $appointmentItems, appointmentDetail: $appointmentDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentHistoryControllerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._appointmentItems, _appointmentItems) &&
            (identical(other.appointmentDetail, appointmentDetail) ||
                other.appointmentDetail == appointmentDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_appointmentItems),
      appointmentDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentHistoryControllerStateImplCopyWith<
          _$AppointmentHistoryControllerStateImpl>
      get copyWith => __$$AppointmentHistoryControllerStateImplCopyWithImpl<
          _$AppointmentHistoryControllerStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentHistoryControllerStateImplToJson(
      this,
    );
  }
}

abstract class _AppointmentHistoryControllerState
    implements AppointmentHistoryControllerState {
  const factory _AppointmentHistoryControllerState(
          {required final List<AppointmentItem> appointmentItems,
          final AppointmentDetail? appointmentDetail}) =
      _$AppointmentHistoryControllerStateImpl;

  factory _AppointmentHistoryControllerState.fromJson(
          Map<String, dynamic> json) =
      _$AppointmentHistoryControllerStateImpl.fromJson;

  @override
  List<AppointmentItem> get appointmentItems;
  @override
  AppointmentDetail? get appointmentDetail;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentHistoryControllerStateImplCopyWith<
          _$AppointmentHistoryControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

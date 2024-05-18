// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_appointments.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllAppointmentState _$AllAppointmentStateFromJson(Map<String, dynamic> json) {
  return _AllAppointmentState.fromJson(json);
}

/// @nodoc
mixin _$AllAppointmentState {
  List<AppointmentItem> get appointmentItems =>
      throw _privateConstructorUsedError;
  AppointmentDetail? get appointmentDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllAppointmentStateCopyWith<AllAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllAppointmentStateCopyWith<$Res> {
  factory $AllAppointmentStateCopyWith(
          AllAppointmentState value, $Res Function(AllAppointmentState) then) =
      _$AllAppointmentStateCopyWithImpl<$Res, AllAppointmentState>;
  @useResult
  $Res call(
      {List<AppointmentItem> appointmentItems,
      AppointmentDetail? appointmentDetail});

  $AppointmentDetailCopyWith<$Res>? get appointmentDetail;
}

/// @nodoc
class _$AllAppointmentStateCopyWithImpl<$Res, $Val extends AllAppointmentState>
    implements $AllAppointmentStateCopyWith<$Res> {
  _$AllAppointmentStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AllAppointmentStateImplCopyWith<$Res>
    implements $AllAppointmentStateCopyWith<$Res> {
  factory _$$AllAppointmentStateImplCopyWith(_$AllAppointmentStateImpl value,
          $Res Function(_$AllAppointmentStateImpl) then) =
      __$$AllAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AppointmentItem> appointmentItems,
      AppointmentDetail? appointmentDetail});

  @override
  $AppointmentDetailCopyWith<$Res>? get appointmentDetail;
}

/// @nodoc
class __$$AllAppointmentStateImplCopyWithImpl<$Res>
    extends _$AllAppointmentStateCopyWithImpl<$Res, _$AllAppointmentStateImpl>
    implements _$$AllAppointmentStateImplCopyWith<$Res> {
  __$$AllAppointmentStateImplCopyWithImpl(_$AllAppointmentStateImpl _value,
      $Res Function(_$AllAppointmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentItems = null,
    Object? appointmentDetail = freezed,
  }) {
    return _then(_$AllAppointmentStateImpl(
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
class _$AllAppointmentStateImpl implements _AllAppointmentState {
  const _$AllAppointmentStateImpl(
      {required final List<AppointmentItem> appointmentItems,
      this.appointmentDetail})
      : _appointmentItems = appointmentItems;

  factory _$AllAppointmentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllAppointmentStateImplFromJson(json);

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
    return 'AllAppointmentState(appointmentItems: $appointmentItems, appointmentDetail: $appointmentDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllAppointmentStateImpl &&
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
  _$$AllAppointmentStateImplCopyWith<_$AllAppointmentStateImpl> get copyWith =>
      __$$AllAppointmentStateImplCopyWithImpl<_$AllAppointmentStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllAppointmentStateImplToJson(
      this,
    );
  }
}

abstract class _AllAppointmentState implements AllAppointmentState {
  const factory _AllAppointmentState(
      {required final List<AppointmentItem> appointmentItems,
      final AppointmentDetail? appointmentDetail}) = _$AllAppointmentStateImpl;

  factory _AllAppointmentState.fromJson(Map<String, dynamic> json) =
      _$AllAppointmentStateImpl.fromJson;

  @override
  List<AppointmentItem> get appointmentItems;
  @override
  AppointmentDetail? get appointmentDetail;
  @override
  @JsonKey(ignore: true)
  _$$AllAppointmentStateImplCopyWith<_$AllAppointmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

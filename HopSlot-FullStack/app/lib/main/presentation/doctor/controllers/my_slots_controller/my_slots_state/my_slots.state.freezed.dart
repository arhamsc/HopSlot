// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_slots.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MySlotsState _$MySlotsStateFromJson(Map<String, dynamic> json) {
  return _MySlotsState.fromJson(json);
}

/// @nodoc
mixin _$MySlotsState {
  List<DoctorSlot> get mySlots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MySlotsStateCopyWith<MySlotsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySlotsStateCopyWith<$Res> {
  factory $MySlotsStateCopyWith(
          MySlotsState value, $Res Function(MySlotsState) then) =
      _$MySlotsStateCopyWithImpl<$Res, MySlotsState>;
  @useResult
  $Res call({List<DoctorSlot> mySlots});
}

/// @nodoc
class _$MySlotsStateCopyWithImpl<$Res, $Val extends MySlotsState>
    implements $MySlotsStateCopyWith<$Res> {
  _$MySlotsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mySlots = null,
  }) {
    return _then(_value.copyWith(
      mySlots: null == mySlots
          ? _value.mySlots
          : mySlots // ignore: cast_nullable_to_non_nullable
              as List<DoctorSlot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MySlotsStateImplCopyWith<$Res>
    implements $MySlotsStateCopyWith<$Res> {
  factory _$$MySlotsStateImplCopyWith(
          _$MySlotsStateImpl value, $Res Function(_$MySlotsStateImpl) then) =
      __$$MySlotsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DoctorSlot> mySlots});
}

/// @nodoc
class __$$MySlotsStateImplCopyWithImpl<$Res>
    extends _$MySlotsStateCopyWithImpl<$Res, _$MySlotsStateImpl>
    implements _$$MySlotsStateImplCopyWith<$Res> {
  __$$MySlotsStateImplCopyWithImpl(
      _$MySlotsStateImpl _value, $Res Function(_$MySlotsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mySlots = null,
  }) {
    return _then(_$MySlotsStateImpl(
      mySlots: null == mySlots
          ? _value._mySlots
          : mySlots // ignore: cast_nullable_to_non_nullable
              as List<DoctorSlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MySlotsStateImpl implements _MySlotsState {
  const _$MySlotsStateImpl({required final List<DoctorSlot> mySlots})
      : _mySlots = mySlots;

  factory _$MySlotsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MySlotsStateImplFromJson(json);

  final List<DoctorSlot> _mySlots;
  @override
  List<DoctorSlot> get mySlots {
    if (_mySlots is EqualUnmodifiableListView) return _mySlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mySlots);
  }

  @override
  String toString() {
    return 'MySlotsState(mySlots: $mySlots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MySlotsStateImpl &&
            const DeepCollectionEquality().equals(other._mySlots, _mySlots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_mySlots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MySlotsStateImplCopyWith<_$MySlotsStateImpl> get copyWith =>
      __$$MySlotsStateImplCopyWithImpl<_$MySlotsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MySlotsStateImplToJson(
      this,
    );
  }
}

abstract class _MySlotsState implements MySlotsState {
  const factory _MySlotsState({required final List<DoctorSlot> mySlots}) =
      _$MySlotsStateImpl;

  factory _MySlotsState.fromJson(Map<String, dynamic> json) =
      _$MySlotsStateImpl.fromJson;

  @override
  List<DoctorSlot> get mySlots;
  @override
  @JsonKey(ignore: true)
  _$$MySlotsStateImplCopyWith<_$MySlotsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

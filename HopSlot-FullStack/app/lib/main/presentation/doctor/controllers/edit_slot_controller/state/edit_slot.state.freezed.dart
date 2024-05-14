// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_slot.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditSlotState _$EditSlotStateFromJson(Map<String, dynamic> json) {
  return _EditSlotState.fromJson(json);
}

/// @nodoc
mixin _$EditSlotState {
  DoctorSlot? get doctorSlot => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSlotStateCopyWith<EditSlotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSlotStateCopyWith<$Res> {
  factory $EditSlotStateCopyWith(
          EditSlotState value, $Res Function(EditSlotState) then) =
      _$EditSlotStateCopyWithImpl<$Res, EditSlotState>;
  @useResult
  $Res call({DoctorSlot? doctorSlot, bool isEdit});

  $DoctorSlotCopyWith<$Res>? get doctorSlot;
}

/// @nodoc
class _$EditSlotStateCopyWithImpl<$Res, $Val extends EditSlotState>
    implements $EditSlotStateCopyWith<$Res> {
  _$EditSlotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorSlot = freezed,
    Object? isEdit = null,
  }) {
    return _then(_value.copyWith(
      doctorSlot: freezed == doctorSlot
          ? _value.doctorSlot
          : doctorSlot // ignore: cast_nullable_to_non_nullable
              as DoctorSlot?,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorSlotCopyWith<$Res>? get doctorSlot {
    if (_value.doctorSlot == null) {
      return null;
    }

    return $DoctorSlotCopyWith<$Res>(_value.doctorSlot!, (value) {
      return _then(_value.copyWith(doctorSlot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditSlotStateImplCopyWith<$Res>
    implements $EditSlotStateCopyWith<$Res> {
  factory _$$EditSlotStateImplCopyWith(
          _$EditSlotStateImpl value, $Res Function(_$EditSlotStateImpl) then) =
      __$$EditSlotStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DoctorSlot? doctorSlot, bool isEdit});

  @override
  $DoctorSlotCopyWith<$Res>? get doctorSlot;
}

/// @nodoc
class __$$EditSlotStateImplCopyWithImpl<$Res>
    extends _$EditSlotStateCopyWithImpl<$Res, _$EditSlotStateImpl>
    implements _$$EditSlotStateImplCopyWith<$Res> {
  __$$EditSlotStateImplCopyWithImpl(
      _$EditSlotStateImpl _value, $Res Function(_$EditSlotStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorSlot = freezed,
    Object? isEdit = null,
  }) {
    return _then(_$EditSlotStateImpl(
      doctorSlot: freezed == doctorSlot
          ? _value.doctorSlot
          : doctorSlot // ignore: cast_nullable_to_non_nullable
              as DoctorSlot?,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditSlotStateImpl implements _EditSlotState {
  const _$EditSlotStateImpl({this.doctorSlot, required this.isEdit});

  factory _$EditSlotStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditSlotStateImplFromJson(json);

  @override
  final DoctorSlot? doctorSlot;
  @override
  final bool isEdit;

  @override
  String toString() {
    return 'EditSlotState(doctorSlot: $doctorSlot, isEdit: $isEdit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSlotStateImpl &&
            (identical(other.doctorSlot, doctorSlot) ||
                other.doctorSlot == doctorSlot) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doctorSlot, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSlotStateImplCopyWith<_$EditSlotStateImpl> get copyWith =>
      __$$EditSlotStateImplCopyWithImpl<_$EditSlotStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSlotStateImplToJson(
      this,
    );
  }
}

abstract class _EditSlotState implements EditSlotState {
  const factory _EditSlotState(
      {final DoctorSlot? doctorSlot,
      required final bool isEdit}) = _$EditSlotStateImpl;

  factory _EditSlotState.fromJson(Map<String, dynamic> json) =
      _$EditSlotStateImpl.fromJson;

  @override
  DoctorSlot? get doctorSlot;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$EditSlotStateImplCopyWith<_$EditSlotStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

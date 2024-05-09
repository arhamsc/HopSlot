// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_slot.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorSlot _$DoctorSlotFromJson(Map<String, dynamic> json) {
  return _DoctorSlot.fromJson(json);
}

/// @nodoc
mixin _$DoctorSlot {
  String get id => throw _privateConstructorUsedError;
  String get doctorId => throw _privateConstructorUsedError;
  DateTime get slotStartTime => throw _privateConstructorUsedError;
  DateTime get slotEndTime => throw _privateConstructorUsedError;
  int get durationOfPerVisit => throw _privateConstructorUsedError;
  List<String> get forDay => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorSlotCopyWith<DoctorSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorSlotCopyWith<$Res> {
  factory $DoctorSlotCopyWith(
          DoctorSlot value, $Res Function(DoctorSlot) then) =
      _$DoctorSlotCopyWithImpl<$Res, DoctorSlot>;
  @useResult
  $Res call(
      {String id,
      String doctorId,
      DateTime slotStartTime,
      DateTime slotEndTime,
      int durationOfPerVisit,
      List<String> forDay,
      Status status});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DoctorSlotCopyWithImpl<$Res, $Val extends DoctorSlot>
    implements $DoctorSlotCopyWith<$Res> {
  _$DoctorSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? slotStartTime = null,
    Object? slotEndTime = null,
    Object? durationOfPerVisit = null,
    Object? forDay = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      slotStartTime: null == slotStartTime
          ? _value.slotStartTime
          : slotStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slotEndTime: null == slotEndTime
          ? _value.slotEndTime
          : slotEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationOfPerVisit: null == durationOfPerVisit
          ? _value.durationOfPerVisit
          : durationOfPerVisit // ignore: cast_nullable_to_non_nullable
              as int,
      forDay: null == forDay
          ? _value.forDay
          : forDay // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorSlotImplCopyWith<$Res>
    implements $DoctorSlotCopyWith<$Res> {
  factory _$$DoctorSlotImplCopyWith(
          _$DoctorSlotImpl value, $Res Function(_$DoctorSlotImpl) then) =
      __$$DoctorSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String doctorId,
      DateTime slotStartTime,
      DateTime slotEndTime,
      int durationOfPerVisit,
      List<String> forDay,
      Status status});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$DoctorSlotImplCopyWithImpl<$Res>
    extends _$DoctorSlotCopyWithImpl<$Res, _$DoctorSlotImpl>
    implements _$$DoctorSlotImplCopyWith<$Res> {
  __$$DoctorSlotImplCopyWithImpl(
      _$DoctorSlotImpl _value, $Res Function(_$DoctorSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorId = null,
    Object? slotStartTime = null,
    Object? slotEndTime = null,
    Object? durationOfPerVisit = null,
    Object? forDay = null,
    Object? status = null,
  }) {
    return _then(_$DoctorSlotImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      slotStartTime: null == slotStartTime
          ? _value.slotStartTime
          : slotStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      slotEndTime: null == slotEndTime
          ? _value.slotEndTime
          : slotEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationOfPerVisit: null == durationOfPerVisit
          ? _value.durationOfPerVisit
          : durationOfPerVisit // ignore: cast_nullable_to_non_nullable
              as int,
      forDay: null == forDay
          ? _value._forDay
          : forDay // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorSlotImpl implements _DoctorSlot {
  const _$DoctorSlotImpl(
      {required this.id,
      required this.doctorId,
      required this.slotStartTime,
      required this.slotEndTime,
      required this.durationOfPerVisit,
      required final List<String> forDay,
      required this.status})
      : _forDay = forDay;

  factory _$DoctorSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorSlotImplFromJson(json);

  @override
  final String id;
  @override
  final String doctorId;
  @override
  final DateTime slotStartTime;
  @override
  final DateTime slotEndTime;
  @override
  final int durationOfPerVisit;
  final List<String> _forDay;
  @override
  List<String> get forDay {
    if (_forDay is EqualUnmodifiableListView) return _forDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forDay);
  }

  @override
  final Status status;

  @override
  String toString() {
    return 'DoctorSlot(id: $id, doctorId: $doctorId, slotStartTime: $slotStartTime, slotEndTime: $slotEndTime, durationOfPerVisit: $durationOfPerVisit, forDay: $forDay, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorSlotImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.slotStartTime, slotStartTime) ||
                other.slotStartTime == slotStartTime) &&
            (identical(other.slotEndTime, slotEndTime) ||
                other.slotEndTime == slotEndTime) &&
            (identical(other.durationOfPerVisit, durationOfPerVisit) ||
                other.durationOfPerVisit == durationOfPerVisit) &&
            const DeepCollectionEquality().equals(other._forDay, _forDay) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      doctorId,
      slotStartTime,
      slotEndTime,
      durationOfPerVisit,
      const DeepCollectionEquality().hash(_forDay),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorSlotImplCopyWith<_$DoctorSlotImpl> get copyWith =>
      __$$DoctorSlotImplCopyWithImpl<_$DoctorSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorSlotImplToJson(
      this,
    );
  }
}

abstract class _DoctorSlot implements DoctorSlot {
  const factory _DoctorSlot(
      {required final String id,
      required final String doctorId,
      required final DateTime slotStartTime,
      required final DateTime slotEndTime,
      required final int durationOfPerVisit,
      required final List<String> forDay,
      required final Status status}) = _$DoctorSlotImpl;

  factory _DoctorSlot.fromJson(Map<String, dynamic> json) =
      _$DoctorSlotImpl.fromJson;

  @override
  String get id;
  @override
  String get doctorId;
  @override
  DateTime get slotStartTime;
  @override
  DateTime get slotEndTime;
  @override
  int get durationOfPerVisit;
  @override
  List<String> get forDay;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$DoctorSlotImplCopyWith<_$DoctorSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

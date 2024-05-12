// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_home.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientHomeState _$PatientHomeStateFromJson(Map<String, dynamic> json) {
  return _PatientHomeState.fromJson(json);
}

/// @nodoc
mixin _$PatientHomeState {
  List<Appointment> get upcomingAppointments =>
      throw _privateConstructorUsedError;
  List<Appointment> get pastAppointments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientHomeStateCopyWith<PatientHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientHomeStateCopyWith<$Res> {
  factory $PatientHomeStateCopyWith(
          PatientHomeState value, $Res Function(PatientHomeState) then) =
      _$PatientHomeStateCopyWithImpl<$Res, PatientHomeState>;
  @useResult
  $Res call(
      {List<Appointment> upcomingAppointments,
      List<Appointment> pastAppointments});
}

/// @nodoc
class _$PatientHomeStateCopyWithImpl<$Res, $Val extends PatientHomeState>
    implements $PatientHomeStateCopyWith<$Res> {
  _$PatientHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingAppointments = null,
    Object? pastAppointments = null,
  }) {
    return _then(_value.copyWith(
      upcomingAppointments: null == upcomingAppointments
          ? _value.upcomingAppointments
          : upcomingAppointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      pastAppointments: null == pastAppointments
          ? _value.pastAppointments
          : pastAppointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientHomeStateImplCopyWith<$Res>
    implements $PatientHomeStateCopyWith<$Res> {
  factory _$$PatientHomeStateImplCopyWith(_$PatientHomeStateImpl value,
          $Res Function(_$PatientHomeStateImpl) then) =
      __$$PatientHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Appointment> upcomingAppointments,
      List<Appointment> pastAppointments});
}

/// @nodoc
class __$$PatientHomeStateImplCopyWithImpl<$Res>
    extends _$PatientHomeStateCopyWithImpl<$Res, _$PatientHomeStateImpl>
    implements _$$PatientHomeStateImplCopyWith<$Res> {
  __$$PatientHomeStateImplCopyWithImpl(_$PatientHomeStateImpl _value,
      $Res Function(_$PatientHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingAppointments = null,
    Object? pastAppointments = null,
  }) {
    return _then(_$PatientHomeStateImpl(
      upcomingAppointments: null == upcomingAppointments
          ? _value._upcomingAppointments
          : upcomingAppointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      pastAppointments: null == pastAppointments
          ? _value._pastAppointments
          : pastAppointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientHomeStateImpl implements _PatientHomeState {
  const _$PatientHomeStateImpl(
      {required final List<Appointment> upcomingAppointments,
      required final List<Appointment> pastAppointments})
      : _upcomingAppointments = upcomingAppointments,
        _pastAppointments = pastAppointments;

  factory _$PatientHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientHomeStateImplFromJson(json);

  final List<Appointment> _upcomingAppointments;
  @override
  List<Appointment> get upcomingAppointments {
    if (_upcomingAppointments is EqualUnmodifiableListView)
      return _upcomingAppointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingAppointments);
  }

  final List<Appointment> _pastAppointments;
  @override
  List<Appointment> get pastAppointments {
    if (_pastAppointments is EqualUnmodifiableListView)
      return _pastAppointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastAppointments);
  }

  @override
  String toString() {
    return 'PatientHomeState(upcomingAppointments: $upcomingAppointments, pastAppointments: $pastAppointments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._upcomingAppointments, _upcomingAppointments) &&
            const DeepCollectionEquality()
                .equals(other._pastAppointments, _pastAppointments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_upcomingAppointments),
      const DeepCollectionEquality().hash(_pastAppointments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientHomeStateImplCopyWith<_$PatientHomeStateImpl> get copyWith =>
      __$$PatientHomeStateImplCopyWithImpl<_$PatientHomeStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientHomeStateImplToJson(
      this,
    );
  }
}

abstract class _PatientHomeState implements PatientHomeState {
  const factory _PatientHomeState(
          {required final List<Appointment> upcomingAppointments,
          required final List<Appointment> pastAppointments}) =
      _$PatientHomeStateImpl;

  factory _PatientHomeState.fromJson(Map<String, dynamic> json) =
      _$PatientHomeStateImpl.fromJson;

  @override
  List<Appointment> get upcomingAppointments;
  @override
  List<Appointment> get pastAppointments;
  @override
  @JsonKey(ignore: true)
  _$$PatientHomeStateImplCopyWith<_$PatientHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

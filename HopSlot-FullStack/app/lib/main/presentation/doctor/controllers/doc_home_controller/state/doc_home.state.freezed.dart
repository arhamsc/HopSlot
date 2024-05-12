// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_home.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocHomeState _$DocHomeStateFromJson(Map<String, dynamic> json) {
  return _DocHomeState.fromJson(json);
}

/// @nodoc
mixin _$DocHomeState {
  List<Appointment> get todaysAppointments =>
      throw _privateConstructorUsedError;
  DocStats get docStats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocHomeStateCopyWith<DocHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocHomeStateCopyWith<$Res> {
  factory $DocHomeStateCopyWith(
          DocHomeState value, $Res Function(DocHomeState) then) =
      _$DocHomeStateCopyWithImpl<$Res, DocHomeState>;
  @useResult
  $Res call({List<Appointment> todaysAppointments, DocStats docStats});

  $DocStatsCopyWith<$Res> get docStats;
}

/// @nodoc
class _$DocHomeStateCopyWithImpl<$Res, $Val extends DocHomeState>
    implements $DocHomeStateCopyWith<$Res> {
  _$DocHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todaysAppointments = null,
    Object? docStats = null,
  }) {
    return _then(_value.copyWith(
      todaysAppointments: null == todaysAppointments
          ? _value.todaysAppointments
          : todaysAppointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      docStats: null == docStats
          ? _value.docStats
          : docStats // ignore: cast_nullable_to_non_nullable
              as DocStats,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocStatsCopyWith<$Res> get docStats {
    return $DocStatsCopyWith<$Res>(_value.docStats, (value) {
      return _then(_value.copyWith(docStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocHomeStateImplCopyWith<$Res>
    implements $DocHomeStateCopyWith<$Res> {
  factory _$$DocHomeStateImplCopyWith(
          _$DocHomeStateImpl value, $Res Function(_$DocHomeStateImpl) then) =
      __$$DocHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Appointment> todaysAppointments, DocStats docStats});

  @override
  $DocStatsCopyWith<$Res> get docStats;
}

/// @nodoc
class __$$DocHomeStateImplCopyWithImpl<$Res>
    extends _$DocHomeStateCopyWithImpl<$Res, _$DocHomeStateImpl>
    implements _$$DocHomeStateImplCopyWith<$Res> {
  __$$DocHomeStateImplCopyWithImpl(
      _$DocHomeStateImpl _value, $Res Function(_$DocHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todaysAppointments = null,
    Object? docStats = null,
  }) {
    return _then(_$DocHomeStateImpl(
      todaysAppointments: null == todaysAppointments
          ? _value._todaysAppointments
          : todaysAppointments // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
      docStats: null == docStats
          ? _value.docStats
          : docStats // ignore: cast_nullable_to_non_nullable
              as DocStats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocHomeStateImpl implements _DocHomeState {
  const _$DocHomeStateImpl(
      {final List<Appointment> todaysAppointments = const [],
      required this.docStats})
      : _todaysAppointments = todaysAppointments;

  factory _$DocHomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocHomeStateImplFromJson(json);

  final List<Appointment> _todaysAppointments;
  @override
  @JsonKey()
  List<Appointment> get todaysAppointments {
    if (_todaysAppointments is EqualUnmodifiableListView)
      return _todaysAppointments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todaysAppointments);
  }

  @override
  final DocStats docStats;

  @override
  String toString() {
    return 'DocHomeState(todaysAppointments: $todaysAppointments, docStats: $docStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocHomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._todaysAppointments, _todaysAppointments) &&
            (identical(other.docStats, docStats) ||
                other.docStats == docStats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todaysAppointments), docStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocHomeStateImplCopyWith<_$DocHomeStateImpl> get copyWith =>
      __$$DocHomeStateImplCopyWithImpl<_$DocHomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocHomeStateImplToJson(
      this,
    );
  }
}

abstract class _DocHomeState implements DocHomeState {
  const factory _DocHomeState(
      {final List<Appointment> todaysAppointments,
      required final DocStats docStats}) = _$DocHomeStateImpl;

  factory _DocHomeState.fromJson(Map<String, dynamic> json) =
      _$DocHomeStateImpl.fromJson;

  @override
  List<Appointment> get todaysAppointments;
  @override
  DocStats get docStats;
  @override
  @JsonKey(ignore: true)
  _$$DocHomeStateImplCopyWith<_$DocHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

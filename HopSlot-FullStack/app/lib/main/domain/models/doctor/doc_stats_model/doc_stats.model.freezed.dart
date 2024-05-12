// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doc_stats.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DocStats _$DocStatsFromJson(Map<String, dynamic> json) {
  return _DocStats.fromJson(json);
}

/// @nodoc
mixin _$DocStats {
  int get totalAppointments => throw _privateConstructorUsedError;
  int get totalPatients => throw _privateConstructorUsedError;
  int get totalPrescriptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocStatsCopyWith<DocStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocStatsCopyWith<$Res> {
  factory $DocStatsCopyWith(DocStats value, $Res Function(DocStats) then) =
      _$DocStatsCopyWithImpl<$Res, DocStats>;
  @useResult
  $Res call({int totalAppointments, int totalPatients, int totalPrescriptions});
}

/// @nodoc
class _$DocStatsCopyWithImpl<$Res, $Val extends DocStats>
    implements $DocStatsCopyWith<$Res> {
  _$DocStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAppointments = null,
    Object? totalPatients = null,
    Object? totalPrescriptions = null,
  }) {
    return _then(_value.copyWith(
      totalAppointments: null == totalAppointments
          ? _value.totalAppointments
          : totalAppointments // ignore: cast_nullable_to_non_nullable
              as int,
      totalPatients: null == totalPatients
          ? _value.totalPatients
          : totalPatients // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrescriptions: null == totalPrescriptions
          ? _value.totalPrescriptions
          : totalPrescriptions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocStatsImplCopyWith<$Res>
    implements $DocStatsCopyWith<$Res> {
  factory _$$DocStatsImplCopyWith(
          _$DocStatsImpl value, $Res Function(_$DocStatsImpl) then) =
      __$$DocStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalAppointments, int totalPatients, int totalPrescriptions});
}

/// @nodoc
class __$$DocStatsImplCopyWithImpl<$Res>
    extends _$DocStatsCopyWithImpl<$Res, _$DocStatsImpl>
    implements _$$DocStatsImplCopyWith<$Res> {
  __$$DocStatsImplCopyWithImpl(
      _$DocStatsImpl _value, $Res Function(_$DocStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAppointments = null,
    Object? totalPatients = null,
    Object? totalPrescriptions = null,
  }) {
    return _then(_$DocStatsImpl(
      totalAppointments: null == totalAppointments
          ? _value.totalAppointments
          : totalAppointments // ignore: cast_nullable_to_non_nullable
              as int,
      totalPatients: null == totalPatients
          ? _value.totalPatients
          : totalPatients // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrescriptions: null == totalPrescriptions
          ? _value.totalPrescriptions
          : totalPrescriptions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocStatsImpl implements _DocStats {
  const _$DocStatsImpl(
      {required this.totalAppointments,
      required this.totalPatients,
      required this.totalPrescriptions});

  factory _$DocStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocStatsImplFromJson(json);

  @override
  final int totalAppointments;
  @override
  final int totalPatients;
  @override
  final int totalPrescriptions;

  @override
  String toString() {
    return 'DocStats(totalAppointments: $totalAppointments, totalPatients: $totalPatients, totalPrescriptions: $totalPrescriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocStatsImpl &&
            (identical(other.totalAppointments, totalAppointments) ||
                other.totalAppointments == totalAppointments) &&
            (identical(other.totalPatients, totalPatients) ||
                other.totalPatients == totalPatients) &&
            (identical(other.totalPrescriptions, totalPrescriptions) ||
                other.totalPrescriptions == totalPrescriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalAppointments, totalPatients, totalPrescriptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocStatsImplCopyWith<_$DocStatsImpl> get copyWith =>
      __$$DocStatsImplCopyWithImpl<_$DocStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocStatsImplToJson(
      this,
    );
  }
}

abstract class _DocStats implements DocStats {
  const factory _DocStats(
      {required final int totalAppointments,
      required final int totalPatients,
      required final int totalPrescriptions}) = _$DocStatsImpl;

  factory _DocStats.fromJson(Map<String, dynamic> json) =
      _$DocStatsImpl.fromJson;

  @override
  int get totalAppointments;
  @override
  int get totalPatients;
  @override
  int get totalPrescriptions;
  @override
  @JsonKey(ignore: true)
  _$$DocStatsImplCopyWith<_$DocStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

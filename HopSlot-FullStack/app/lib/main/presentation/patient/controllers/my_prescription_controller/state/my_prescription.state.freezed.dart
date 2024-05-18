// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_prescription.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyPrescriptionState _$MyPrescriptionStateFromJson(Map<String, dynamic> json) {
  return _MyPrescriptionState.fromJson(json);
}

/// @nodoc
mixin _$MyPrescriptionState {
  AppointmentDetail get appointmentDetail => throw _privateConstructorUsedError;
  List<Prescription> get prescriptions => throw _privateConstructorUsedError;
  Prescription? get selectedPrescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyPrescriptionStateCopyWith<MyPrescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPrescriptionStateCopyWith<$Res> {
  factory $MyPrescriptionStateCopyWith(
          MyPrescriptionState value, $Res Function(MyPrescriptionState) then) =
      _$MyPrescriptionStateCopyWithImpl<$Res, MyPrescriptionState>;
  @useResult
  $Res call(
      {AppointmentDetail appointmentDetail,
      List<Prescription> prescriptions,
      Prescription? selectedPrescription});

  $AppointmentDetailCopyWith<$Res> get appointmentDetail;
  $PrescriptionCopyWith<$Res>? get selectedPrescription;
}

/// @nodoc
class _$MyPrescriptionStateCopyWithImpl<$Res, $Val extends MyPrescriptionState>
    implements $MyPrescriptionStateCopyWith<$Res> {
  _$MyPrescriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentDetail = null,
    Object? prescriptions = null,
    Object? selectedPrescription = freezed,
  }) {
    return _then(_value.copyWith(
      appointmentDetail: null == appointmentDetail
          ? _value.appointmentDetail
          : appointmentDetail // ignore: cast_nullable_to_non_nullable
              as AppointmentDetail,
      prescriptions: null == prescriptions
          ? _value.prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
      selectedPrescription: freezed == selectedPrescription
          ? _value.selectedPrescription
          : selectedPrescription // ignore: cast_nullable_to_non_nullable
              as Prescription?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentDetailCopyWith<$Res> get appointmentDetail {
    return $AppointmentDetailCopyWith<$Res>(_value.appointmentDetail, (value) {
      return _then(_value.copyWith(appointmentDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrescriptionCopyWith<$Res>? get selectedPrescription {
    if (_value.selectedPrescription == null) {
      return null;
    }

    return $PrescriptionCopyWith<$Res>(_value.selectedPrescription!, (value) {
      return _then(_value.copyWith(selectedPrescription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyPrescriptionStateImplCopyWith<$Res>
    implements $MyPrescriptionStateCopyWith<$Res> {
  factory _$$MyPrescriptionStateImplCopyWith(_$MyPrescriptionStateImpl value,
          $Res Function(_$MyPrescriptionStateImpl) then) =
      __$$MyPrescriptionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppointmentDetail appointmentDetail,
      List<Prescription> prescriptions,
      Prescription? selectedPrescription});

  @override
  $AppointmentDetailCopyWith<$Res> get appointmentDetail;
  @override
  $PrescriptionCopyWith<$Res>? get selectedPrescription;
}

/// @nodoc
class __$$MyPrescriptionStateImplCopyWithImpl<$Res>
    extends _$MyPrescriptionStateCopyWithImpl<$Res, _$MyPrescriptionStateImpl>
    implements _$$MyPrescriptionStateImplCopyWith<$Res> {
  __$$MyPrescriptionStateImplCopyWithImpl(_$MyPrescriptionStateImpl _value,
      $Res Function(_$MyPrescriptionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentDetail = null,
    Object? prescriptions = null,
    Object? selectedPrescription = freezed,
  }) {
    return _then(_$MyPrescriptionStateImpl(
      appointmentDetail: null == appointmentDetail
          ? _value.appointmentDetail
          : appointmentDetail // ignore: cast_nullable_to_non_nullable
              as AppointmentDetail,
      prescriptions: null == prescriptions
          ? _value._prescriptions
          : prescriptions // ignore: cast_nullable_to_non_nullable
              as List<Prescription>,
      selectedPrescription: freezed == selectedPrescription
          ? _value.selectedPrescription
          : selectedPrescription // ignore: cast_nullable_to_non_nullable
              as Prescription?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyPrescriptionStateImpl implements _MyPrescriptionState {
  const _$MyPrescriptionStateImpl(
      {required this.appointmentDetail,
      required final List<Prescription> prescriptions,
      this.selectedPrescription})
      : _prescriptions = prescriptions;

  factory _$MyPrescriptionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyPrescriptionStateImplFromJson(json);

  @override
  final AppointmentDetail appointmentDetail;
  final List<Prescription> _prescriptions;
  @override
  List<Prescription> get prescriptions {
    if (_prescriptions is EqualUnmodifiableListView) return _prescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prescriptions);
  }

  @override
  final Prescription? selectedPrescription;

  @override
  String toString() {
    return 'MyPrescriptionState(appointmentDetail: $appointmentDetail, prescriptions: $prescriptions, selectedPrescription: $selectedPrescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPrescriptionStateImpl &&
            (identical(other.appointmentDetail, appointmentDetail) ||
                other.appointmentDetail == appointmentDetail) &&
            const DeepCollectionEquality()
                .equals(other._prescriptions, _prescriptions) &&
            (identical(other.selectedPrescription, selectedPrescription) ||
                other.selectedPrescription == selectedPrescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appointmentDetail,
      const DeepCollectionEquality().hash(_prescriptions),
      selectedPrescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPrescriptionStateImplCopyWith<_$MyPrescriptionStateImpl> get copyWith =>
      __$$MyPrescriptionStateImplCopyWithImpl<_$MyPrescriptionStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyPrescriptionStateImplToJson(
      this,
    );
  }
}

abstract class _MyPrescriptionState implements MyPrescriptionState {
  const factory _MyPrescriptionState(
      {required final AppointmentDetail appointmentDetail,
      required final List<Prescription> prescriptions,
      final Prescription? selectedPrescription}) = _$MyPrescriptionStateImpl;

  factory _MyPrescriptionState.fromJson(Map<String, dynamic> json) =
      _$MyPrescriptionStateImpl.fromJson;

  @override
  AppointmentDetail get appointmentDetail;
  @override
  List<Prescription> get prescriptions;
  @override
  Prescription? get selectedPrescription;
  @override
  @JsonKey(ignore: true)
  _$$MyPrescriptionStateImplCopyWith<_$MyPrescriptionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

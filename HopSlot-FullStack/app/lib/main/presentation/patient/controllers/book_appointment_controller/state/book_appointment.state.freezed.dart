// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_appointment.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookAppointmentState _$BookAppointmentStateFromJson(Map<String, dynamic> json) {
  return _BookAppointmentState.fromJson(json);
}

/// @nodoc
mixin _$BookAppointmentState {
  List<LookUpResponse> get hospitalItems => throw _privateConstructorUsedError;
  List<LookUpResponse> get doctorItems => throw _privateConstructorUsedError;
  List<SymptomEvidence> get symptomItems => throw _privateConstructorUsedError;
  List<DoctorSlot> get availableSlots => throw _privateConstructorUsedError;
  String get selectedHospitalId => throw _privateConstructorUsedError;
  String get selectedDoctorId => throw _privateConstructorUsedError;
  List<SymptomEvidence> get selectedSymptoms =>
      throw _privateConstructorUsedError;
  String get selectedSlotId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookAppointmentStateCopyWith<BookAppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAppointmentStateCopyWith<$Res> {
  factory $BookAppointmentStateCopyWith(BookAppointmentState value,
          $Res Function(BookAppointmentState) then) =
      _$BookAppointmentStateCopyWithImpl<$Res, BookAppointmentState>;
  @useResult
  $Res call(
      {List<LookUpResponse> hospitalItems,
      List<LookUpResponse> doctorItems,
      List<SymptomEvidence> symptomItems,
      List<DoctorSlot> availableSlots,
      String selectedHospitalId,
      String selectedDoctorId,
      List<SymptomEvidence> selectedSymptoms,
      String selectedSlotId});
}

/// @nodoc
class _$BookAppointmentStateCopyWithImpl<$Res,
        $Val extends BookAppointmentState>
    implements $BookAppointmentStateCopyWith<$Res> {
  _$BookAppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalItems = null,
    Object? doctorItems = null,
    Object? symptomItems = null,
    Object? availableSlots = null,
    Object? selectedHospitalId = null,
    Object? selectedDoctorId = null,
    Object? selectedSymptoms = null,
    Object? selectedSlotId = null,
  }) {
    return _then(_value.copyWith(
      hospitalItems: null == hospitalItems
          ? _value.hospitalItems
          : hospitalItems // ignore: cast_nullable_to_non_nullable
              as List<LookUpResponse>,
      doctorItems: null == doctorItems
          ? _value.doctorItems
          : doctorItems // ignore: cast_nullable_to_non_nullable
              as List<LookUpResponse>,
      symptomItems: null == symptomItems
          ? _value.symptomItems
          : symptomItems // ignore: cast_nullable_to_non_nullable
              as List<SymptomEvidence>,
      availableSlots: null == availableSlots
          ? _value.availableSlots
          : availableSlots // ignore: cast_nullable_to_non_nullable
              as List<DoctorSlot>,
      selectedHospitalId: null == selectedHospitalId
          ? _value.selectedHospitalId
          : selectedHospitalId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDoctorId: null == selectedDoctorId
          ? _value.selectedDoctorId
          : selectedDoctorId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSymptoms: null == selectedSymptoms
          ? _value.selectedSymptoms
          : selectedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<SymptomEvidence>,
      selectedSlotId: null == selectedSlotId
          ? _value.selectedSlotId
          : selectedSlotId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookAppointmentStateImplCopyWith<$Res>
    implements $BookAppointmentStateCopyWith<$Res> {
  factory _$$BookAppointmentStateImplCopyWith(_$BookAppointmentStateImpl value,
          $Res Function(_$BookAppointmentStateImpl) then) =
      __$$BookAppointmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LookUpResponse> hospitalItems,
      List<LookUpResponse> doctorItems,
      List<SymptomEvidence> symptomItems,
      List<DoctorSlot> availableSlots,
      String selectedHospitalId,
      String selectedDoctorId,
      List<SymptomEvidence> selectedSymptoms,
      String selectedSlotId});
}

/// @nodoc
class __$$BookAppointmentStateImplCopyWithImpl<$Res>
    extends _$BookAppointmentStateCopyWithImpl<$Res, _$BookAppointmentStateImpl>
    implements _$$BookAppointmentStateImplCopyWith<$Res> {
  __$$BookAppointmentStateImplCopyWithImpl(_$BookAppointmentStateImpl _value,
      $Res Function(_$BookAppointmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospitalItems = null,
    Object? doctorItems = null,
    Object? symptomItems = null,
    Object? availableSlots = null,
    Object? selectedHospitalId = null,
    Object? selectedDoctorId = null,
    Object? selectedSymptoms = null,
    Object? selectedSlotId = null,
  }) {
    return _then(_$BookAppointmentStateImpl(
      hospitalItems: null == hospitalItems
          ? _value._hospitalItems
          : hospitalItems // ignore: cast_nullable_to_non_nullable
              as List<LookUpResponse>,
      doctorItems: null == doctorItems
          ? _value._doctorItems
          : doctorItems // ignore: cast_nullable_to_non_nullable
              as List<LookUpResponse>,
      symptomItems: null == symptomItems
          ? _value._symptomItems
          : symptomItems // ignore: cast_nullable_to_non_nullable
              as List<SymptomEvidence>,
      availableSlots: null == availableSlots
          ? _value._availableSlots
          : availableSlots // ignore: cast_nullable_to_non_nullable
              as List<DoctorSlot>,
      selectedHospitalId: null == selectedHospitalId
          ? _value.selectedHospitalId
          : selectedHospitalId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDoctorId: null == selectedDoctorId
          ? _value.selectedDoctorId
          : selectedDoctorId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSymptoms: null == selectedSymptoms
          ? _value._selectedSymptoms
          : selectedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<SymptomEvidence>,
      selectedSlotId: null == selectedSlotId
          ? _value.selectedSlotId
          : selectedSlotId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookAppointmentStateImpl implements _BookAppointmentState {
  const _$BookAppointmentStateImpl(
      {final List<LookUpResponse> hospitalItems = const [],
      final List<LookUpResponse> doctorItems = const [],
      final List<SymptomEvidence> symptomItems = const [],
      final List<DoctorSlot> availableSlots = const [],
      required this.selectedHospitalId,
      required this.selectedDoctorId,
      required final List<SymptomEvidence> selectedSymptoms,
      required this.selectedSlotId})
      : _hospitalItems = hospitalItems,
        _doctorItems = doctorItems,
        _symptomItems = symptomItems,
        _availableSlots = availableSlots,
        _selectedSymptoms = selectedSymptoms;

  factory _$BookAppointmentStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookAppointmentStateImplFromJson(json);

  final List<LookUpResponse> _hospitalItems;
  @override
  @JsonKey()
  List<LookUpResponse> get hospitalItems {
    if (_hospitalItems is EqualUnmodifiableListView) return _hospitalItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitalItems);
  }

  final List<LookUpResponse> _doctorItems;
  @override
  @JsonKey()
  List<LookUpResponse> get doctorItems {
    if (_doctorItems is EqualUnmodifiableListView) return _doctorItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctorItems);
  }

  final List<SymptomEvidence> _symptomItems;
  @override
  @JsonKey()
  List<SymptomEvidence> get symptomItems {
    if (_symptomItems is EqualUnmodifiableListView) return _symptomItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptomItems);
  }

  final List<DoctorSlot> _availableSlots;
  @override
  @JsonKey()
  List<DoctorSlot> get availableSlots {
    if (_availableSlots is EqualUnmodifiableListView) return _availableSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSlots);
  }

  @override
  final String selectedHospitalId;
  @override
  final String selectedDoctorId;
  final List<SymptomEvidence> _selectedSymptoms;
  @override
  List<SymptomEvidence> get selectedSymptoms {
    if (_selectedSymptoms is EqualUnmodifiableListView)
      return _selectedSymptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSymptoms);
  }

  @override
  final String selectedSlotId;

  @override
  String toString() {
    return 'BookAppointmentState(hospitalItems: $hospitalItems, doctorItems: $doctorItems, symptomItems: $symptomItems, availableSlots: $availableSlots, selectedHospitalId: $selectedHospitalId, selectedDoctorId: $selectedDoctorId, selectedSymptoms: $selectedSymptoms, selectedSlotId: $selectedSlotId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAppointmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._hospitalItems, _hospitalItems) &&
            const DeepCollectionEquality()
                .equals(other._doctorItems, _doctorItems) &&
            const DeepCollectionEquality()
                .equals(other._symptomItems, _symptomItems) &&
            const DeepCollectionEquality()
                .equals(other._availableSlots, _availableSlots) &&
            (identical(other.selectedHospitalId, selectedHospitalId) ||
                other.selectedHospitalId == selectedHospitalId) &&
            (identical(other.selectedDoctorId, selectedDoctorId) ||
                other.selectedDoctorId == selectedDoctorId) &&
            const DeepCollectionEquality()
                .equals(other._selectedSymptoms, _selectedSymptoms) &&
            (identical(other.selectedSlotId, selectedSlotId) ||
                other.selectedSlotId == selectedSlotId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hospitalItems),
      const DeepCollectionEquality().hash(_doctorItems),
      const DeepCollectionEquality().hash(_symptomItems),
      const DeepCollectionEquality().hash(_availableSlots),
      selectedHospitalId,
      selectedDoctorId,
      const DeepCollectionEquality().hash(_selectedSymptoms),
      selectedSlotId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookAppointmentStateImplCopyWith<_$BookAppointmentStateImpl>
      get copyWith =>
          __$$BookAppointmentStateImplCopyWithImpl<_$BookAppointmentStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookAppointmentStateImplToJson(
      this,
    );
  }
}

abstract class _BookAppointmentState implements BookAppointmentState {
  const factory _BookAppointmentState(
      {final List<LookUpResponse> hospitalItems,
      final List<LookUpResponse> doctorItems,
      final List<SymptomEvidence> symptomItems,
      final List<DoctorSlot> availableSlots,
      required final String selectedHospitalId,
      required final String selectedDoctorId,
      required final List<SymptomEvidence> selectedSymptoms,
      required final String selectedSlotId}) = _$BookAppointmentStateImpl;

  factory _BookAppointmentState.fromJson(Map<String, dynamic> json) =
      _$BookAppointmentStateImpl.fromJson;

  @override
  List<LookUpResponse> get hospitalItems;
  @override
  List<LookUpResponse> get doctorItems;
  @override
  List<SymptomEvidence> get symptomItems;
  @override
  List<DoctorSlot> get availableSlots;
  @override
  String get selectedHospitalId;
  @override
  String get selectedDoctorId;
  @override
  List<SymptomEvidence> get selectedSymptoms;
  @override
  String get selectedSlotId;
  @override
  @JsonKey(ignore: true)
  _$$BookAppointmentStateImplCopyWith<_$BookAppointmentStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

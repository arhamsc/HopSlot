// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_appointment.form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookAppointmentForm {
  @RfControl(validators: [RequiredValidator()])
  LookUpResponse? get hospital => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  LookUpResponse? get doctor => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  DoctorSlot? get slot => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  DateTime? get date => throw _privateConstructorUsedError;

  /// just an helper field
  @RfControl(validators: [RequiredValidator()])
  List<LookUpResponse>? get selectedSymptoms =>
      throw _privateConstructorUsedError;
  @RfArray()
  List<SymptomEvidence> get symptoms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookAppointmentFormCopyWith<BookAppointmentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAppointmentFormCopyWith<$Res> {
  factory $BookAppointmentFormCopyWith(
          BookAppointmentForm value, $Res Function(BookAppointmentForm) then) =
      _$BookAppointmentFormCopyWithImpl<$Res, BookAppointmentForm>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) LookUpResponse? hospital,
      @RfControl(validators: [RequiredValidator()]) LookUpResponse? doctor,
      @RfControl(validators: [RequiredValidator()]) DoctorSlot? slot,
      @RfControl(validators: [RequiredValidator()]) DateTime? date,
      @RfControl(validators: [RequiredValidator()])
      List<LookUpResponse>? selectedSymptoms,
      @RfArray() List<SymptomEvidence> symptoms});

  $LookUpResponseCopyWith<$Res>? get hospital;
  $LookUpResponseCopyWith<$Res>? get doctor;
  $DoctorSlotCopyWith<$Res>? get slot;
}

/// @nodoc
class _$BookAppointmentFormCopyWithImpl<$Res, $Val extends BookAppointmentForm>
    implements $BookAppointmentFormCopyWith<$Res> {
  _$BookAppointmentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospital = freezed,
    Object? doctor = freezed,
    Object? slot = freezed,
    Object? date = freezed,
    Object? selectedSymptoms = freezed,
    Object? symptoms = null,
  }) {
    return _then(_value.copyWith(
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as LookUpResponse?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as LookUpResponse?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as DoctorSlot?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedSymptoms: freezed == selectedSymptoms
          ? _value.selectedSymptoms
          : selectedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<LookUpResponse>?,
      symptoms: null == symptoms
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<SymptomEvidence>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LookUpResponseCopyWith<$Res>? get hospital {
    if (_value.hospital == null) {
      return null;
    }

    return $LookUpResponseCopyWith<$Res>(_value.hospital!, (value) {
      return _then(_value.copyWith(hospital: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LookUpResponseCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $LookUpResponseCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorSlotCopyWith<$Res>? get slot {
    if (_value.slot == null) {
      return null;
    }

    return $DoctorSlotCopyWith<$Res>(_value.slot!, (value) {
      return _then(_value.copyWith(slot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookAppointmentFormImplCopyWith<$Res>
    implements $BookAppointmentFormCopyWith<$Res> {
  factory _$$BookAppointmentFormImplCopyWith(_$BookAppointmentFormImpl value,
          $Res Function(_$BookAppointmentFormImpl) then) =
      __$$BookAppointmentFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) LookUpResponse? hospital,
      @RfControl(validators: [RequiredValidator()]) LookUpResponse? doctor,
      @RfControl(validators: [RequiredValidator()]) DoctorSlot? slot,
      @RfControl(validators: [RequiredValidator()]) DateTime? date,
      @RfControl(validators: [RequiredValidator()])
      List<LookUpResponse>? selectedSymptoms,
      @RfArray() List<SymptomEvidence> symptoms});

  @override
  $LookUpResponseCopyWith<$Res>? get hospital;
  @override
  $LookUpResponseCopyWith<$Res>? get doctor;
  @override
  $DoctorSlotCopyWith<$Res>? get slot;
}

/// @nodoc
class __$$BookAppointmentFormImplCopyWithImpl<$Res>
    extends _$BookAppointmentFormCopyWithImpl<$Res, _$BookAppointmentFormImpl>
    implements _$$BookAppointmentFormImplCopyWith<$Res> {
  __$$BookAppointmentFormImplCopyWithImpl(_$BookAppointmentFormImpl _value,
      $Res Function(_$BookAppointmentFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hospital = freezed,
    Object? doctor = freezed,
    Object? slot = freezed,
    Object? date = freezed,
    Object? selectedSymptoms = freezed,
    Object? symptoms = null,
  }) {
    return _then(_$BookAppointmentFormImpl(
      hospital: freezed == hospital
          ? _value.hospital
          : hospital // ignore: cast_nullable_to_non_nullable
              as LookUpResponse?,
      doctor: freezed == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as LookUpResponse?,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as DoctorSlot?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedSymptoms: freezed == selectedSymptoms
          ? _value._selectedSymptoms
          : selectedSymptoms // ignore: cast_nullable_to_non_nullable
              as List<LookUpResponse>?,
      symptoms: null == symptoms
          ? _value._symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as List<SymptomEvidence>,
    ));
  }
}

/// @nodoc

class _$BookAppointmentFormImpl implements _BookAppointmentForm {
  const _$BookAppointmentFormImpl(
      {@RfControl(validators: [RequiredValidator()]) this.hospital,
      @RfControl(validators: [RequiredValidator()]) this.doctor,
      @RfControl(validators: [RequiredValidator()]) this.slot,
      @RfControl(validators: [RequiredValidator()]) this.date,
      @RfControl(validators: [RequiredValidator()])
      final List<LookUpResponse>? selectedSymptoms,
      @RfArray() final List<SymptomEvidence> symptoms = const []})
      : _selectedSymptoms = selectedSymptoms,
        _symptoms = symptoms;

  @override
  @RfControl(validators: [RequiredValidator()])
  final LookUpResponse? hospital;
  @override
  @RfControl(validators: [RequiredValidator()])
  final LookUpResponse? doctor;
  @override
  @RfControl(validators: [RequiredValidator()])
  final DoctorSlot? slot;
  @override
  @RfControl(validators: [RequiredValidator()])
  final DateTime? date;

  /// just an helper field
  final List<LookUpResponse>? _selectedSymptoms;

  /// just an helper field
  @override
  @RfControl(validators: [RequiredValidator()])
  List<LookUpResponse>? get selectedSymptoms {
    final value = _selectedSymptoms;
    if (value == null) return null;
    if (_selectedSymptoms is EqualUnmodifiableListView)
      return _selectedSymptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SymptomEvidence> _symptoms;
  @override
  @JsonKey()
  @RfArray()
  List<SymptomEvidence> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  String toString() {
    return 'BookAppointmentForm(hospital: $hospital, doctor: $doctor, slot: $slot, date: $date, selectedSymptoms: $selectedSymptoms, symptoms: $symptoms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAppointmentFormImpl &&
            (identical(other.hospital, hospital) ||
                other.hospital == hospital) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._selectedSymptoms, _selectedSymptoms) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hospital,
      doctor,
      slot,
      date,
      const DeepCollectionEquality().hash(_selectedSymptoms),
      const DeepCollectionEquality().hash(_symptoms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookAppointmentFormImplCopyWith<_$BookAppointmentFormImpl> get copyWith =>
      __$$BookAppointmentFormImplCopyWithImpl<_$BookAppointmentFormImpl>(
          this, _$identity);
}

abstract class _BookAppointmentForm implements BookAppointmentForm {
  const factory _BookAppointmentForm(
          {@RfControl(validators: [RequiredValidator()])
          final LookUpResponse? hospital,
          @RfControl(validators: [RequiredValidator()])
          final LookUpResponse? doctor,
          @RfControl(validators: [RequiredValidator()]) final DoctorSlot? slot,
          @RfControl(validators: [RequiredValidator()]) final DateTime? date,
          @RfControl(validators: [RequiredValidator()])
          final List<LookUpResponse>? selectedSymptoms,
          @RfArray() final List<SymptomEvidence> symptoms}) =
      _$BookAppointmentFormImpl;

  @override
  @RfControl(validators: [RequiredValidator()])
  LookUpResponse? get hospital;
  @override
  @RfControl(validators: [RequiredValidator()])
  LookUpResponse? get doctor;
  @override
  @RfControl(validators: [RequiredValidator()])
  DoctorSlot? get slot;
  @override
  @RfControl(validators: [RequiredValidator()])
  DateTime? get date;
  @override

  /// just an helper field
  @RfControl(validators: [RequiredValidator()])
  List<LookUpResponse>? get selectedSymptoms;
  @override
  @RfArray()
  List<SymptomEvidence> get symptoms;
  @override
  @JsonKey(ignore: true)
  _$$BookAppointmentFormImplCopyWith<_$BookAppointmentFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

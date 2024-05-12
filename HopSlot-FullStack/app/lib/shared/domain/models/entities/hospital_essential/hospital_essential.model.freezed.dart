// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital_essential.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HospitalEssential _$HospitalEssentialFromJson(Map<String, dynamic> json) {
  return _HospitalEssential.fromJson(json);
}

/// @nodoc
mixin _$HospitalEssential {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HospitalEssentialCopyWith<HospitalEssential> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalEssentialCopyWith<$Res> {
  factory $HospitalEssentialCopyWith(
          HospitalEssential value, $Res Function(HospitalEssential) then) =
      _$HospitalEssentialCopyWithImpl<$Res, HospitalEssential>;
  @useResult
  $Res call(
      {String id, String name, String address, String? email, String? phone});
}

/// @nodoc
class _$HospitalEssentialCopyWithImpl<$Res, $Val extends HospitalEssential>
    implements $HospitalEssentialCopyWith<$Res> {
  _$HospitalEssentialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HospitalEssentialImplCopyWith<$Res>
    implements $HospitalEssentialCopyWith<$Res> {
  factory _$$HospitalEssentialImplCopyWith(_$HospitalEssentialImpl value,
          $Res Function(_$HospitalEssentialImpl) then) =
      __$$HospitalEssentialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String address, String? email, String? phone});
}

/// @nodoc
class __$$HospitalEssentialImplCopyWithImpl<$Res>
    extends _$HospitalEssentialCopyWithImpl<$Res, _$HospitalEssentialImpl>
    implements _$$HospitalEssentialImplCopyWith<$Res> {
  __$$HospitalEssentialImplCopyWithImpl(_$HospitalEssentialImpl _value,
      $Res Function(_$HospitalEssentialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$HospitalEssentialImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HospitalEssentialImpl implements _HospitalEssential {
  const _$HospitalEssentialImpl(
      {required this.id,
      required this.name,
      required this.address,
      this.email,
      this.phone});

  factory _$HospitalEssentialImpl.fromJson(Map<String, dynamic> json) =>
      _$$HospitalEssentialImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'HospitalEssential(id: $id, name: $name, address: $address, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalEssentialImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalEssentialImplCopyWith<_$HospitalEssentialImpl> get copyWith =>
      __$$HospitalEssentialImplCopyWithImpl<_$HospitalEssentialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HospitalEssentialImplToJson(
      this,
    );
  }
}

abstract class _HospitalEssential implements HospitalEssential {
  const factory _HospitalEssential(
      {required final String id,
      required final String name,
      required final String address,
      final String? email,
      final String? phone}) = _$HospitalEssentialImpl;

  factory _HospitalEssential.fromJson(Map<String, dynamic> json) =
      _$HospitalEssentialImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$HospitalEssentialImplCopyWith<_$HospitalEssentialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

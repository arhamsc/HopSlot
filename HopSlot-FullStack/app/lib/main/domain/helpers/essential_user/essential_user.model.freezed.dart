// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'essential_user.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EssentialUser _$EssentialUserFromJson(Map<String, dynamic> json) {
  return _EssentialUser.fromJson(json);
}

/// @nodoc
mixin _$EssentialUser {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EssentialUserCopyWith<EssentialUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EssentialUserCopyWith<$Res> {
  factory $EssentialUserCopyWith(
          EssentialUser value, $Res Function(EssentialUser) then) =
      _$EssentialUserCopyWithImpl<$Res, EssentialUser>;
  @useResult
  $Res call({String id, String firstName, String lastName, String? email});
}

/// @nodoc
class _$EssentialUserCopyWithImpl<$Res, $Val extends EssentialUser>
    implements $EssentialUserCopyWith<$Res> {
  _$EssentialUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EssentialUserImplCopyWith<$Res>
    implements $EssentialUserCopyWith<$Res> {
  factory _$$EssentialUserImplCopyWith(
          _$EssentialUserImpl value, $Res Function(_$EssentialUserImpl) then) =
      __$$EssentialUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String firstName, String lastName, String? email});
}

/// @nodoc
class __$$EssentialUserImplCopyWithImpl<$Res>
    extends _$EssentialUserCopyWithImpl<$Res, _$EssentialUserImpl>
    implements _$$EssentialUserImplCopyWith<$Res> {
  __$$EssentialUserImplCopyWithImpl(
      _$EssentialUserImpl _value, $Res Function(_$EssentialUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
  }) {
    return _then(_$EssentialUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EssentialUserImpl implements _EssentialUser {
  const _$EssentialUserImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.email});

  factory _$EssentialUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$EssentialUserImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? email;

  @override
  String toString() {
    return 'EssentialUser(id: $id, firstName: $firstName, lastName: $lastName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EssentialUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EssentialUserImplCopyWith<_$EssentialUserImpl> get copyWith =>
      __$$EssentialUserImplCopyWithImpl<_$EssentialUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EssentialUserImplToJson(
      this,
    );
  }
}

abstract class _EssentialUser implements EssentialUser {
  const factory _EssentialUser(
      {required final String id,
      required final String firstName,
      required final String lastName,
      final String? email}) = _$EssentialUserImpl;

  factory _EssentialUser.fromJson(Map<String, dynamic> json) =
      _$EssentialUserImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$EssentialUserImplCopyWith<_$EssentialUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

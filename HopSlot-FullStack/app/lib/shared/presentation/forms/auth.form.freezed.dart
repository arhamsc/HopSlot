// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginForm _$LoginFormFromJson(Map<String, dynamic> json) {
  return _LoginForm.fromJson(json);
}

/// @nodoc
mixin _$LoginForm {
  @RfControl(validators: [RequiredValidator()])
  String? get identity => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginFormCopyWith<LoginForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormCopyWith<$Res> {
  factory $LoginFormCopyWith(LoginForm value, $Res Function(LoginForm) then) =
      _$LoginFormCopyWithImpl<$Res, LoginForm>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String? identity,
      @RfControl(validators: [RequiredValidator()]) String? password});
}

/// @nodoc
class _$LoginFormCopyWithImpl<$Res, $Val extends LoginForm>
    implements $LoginFormCopyWith<$Res> {
  _$LoginFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormImplCopyWith<$Res>
    implements $LoginFormCopyWith<$Res> {
  factory _$$LoginFormImplCopyWith(
          _$LoginFormImpl value, $Res Function(_$LoginFormImpl) then) =
      __$$LoginFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator()]) String? identity,
      @RfControl(validators: [RequiredValidator()]) String? password});
}

/// @nodoc
class __$$LoginFormImplCopyWithImpl<$Res>
    extends _$LoginFormCopyWithImpl<$Res, _$LoginFormImpl>
    implements _$$LoginFormImplCopyWith<$Res> {
  __$$LoginFormImplCopyWithImpl(
      _$LoginFormImpl _value, $Res Function(_$LoginFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identity = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginFormImpl(
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginFormImpl implements _LoginForm {
  const _$LoginFormImpl(
      {@RfControl(validators: [RequiredValidator()]) this.identity,
      @RfControl(validators: [RequiredValidator()]) this.password});

  factory _$LoginFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginFormImplFromJson(json);

  @override
  @RfControl(validators: [RequiredValidator()])
  final String? identity;
  @override
  @RfControl(validators: [RequiredValidator()])
  final String? password;

  @override
  String toString() {
    return 'LoginForm(identity: $identity, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormImpl &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identity, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      __$$LoginFormImplCopyWithImpl<_$LoginFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginFormImplToJson(
      this,
    );
  }
}

abstract class _LoginForm implements LoginForm {
  const factory _LoginForm(
      {@RfControl(validators: [RequiredValidator()]) final String? identity,
      @RfControl(validators: [RequiredValidator()])
      final String? password}) = _$LoginFormImpl;

  factory _LoginForm.fromJson(Map<String, dynamic> json) =
      _$LoginFormImpl.fromJson;

  @override
  @RfControl(validators: [RequiredValidator()])
  String? get identity;
  @override
  @RfControl(validators: [RequiredValidator()])
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormImplCopyWith<_$LoginFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpForm _$SignUpFormFromJson(Map<String, dynamic> json) {
  return _SignUpForm.fromJson(json);
}

/// @nodoc
mixin _$SignUpForm {
  @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
  String? get firstName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
  String? get lastName => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email => throw _privateConstructorUsedError;
  @RfControl(validators: [
    RequiredValidator(),
    MinLengthValidator(4),
    MaxLengthValidator(10)
  ])
  String? get username => throw _privateConstructorUsedError;
  @RfControl(validators: [NumberValidator(allowNegatives: false)])
  int? get age => throw _privateConstructorUsedError;
  @RfControl(validators: [
    RequiredValidator(),
    MinLengthValidator(5),
    MaxLengthValidator(8)
  ])
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpFormCopyWith<SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormCopyWith<$Res> {
  factory $SignUpFormCopyWith(
          SignUpForm value, $Res Function(SignUpForm) then) =
      _$SignUpFormCopyWithImpl<$Res, SignUpForm>;
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      String? firstName,
      @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      String? lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(4),
        MaxLengthValidator(10)
      ])
      String? username,
      @RfControl(validators: [NumberValidator(allowNegatives: false)]) int? age,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(5),
        MaxLengthValidator(8)
      ])
      String? password});
}

/// @nodoc
class _$SignUpFormCopyWithImpl<$Res, $Val extends SignUpForm>
    implements $SignUpFormCopyWith<$Res> {
  _$SignUpFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? age = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpFormImplCopyWith<$Res>
    implements $SignUpFormCopyWith<$Res> {
  factory _$$SignUpFormImplCopyWith(
          _$SignUpFormImpl value, $Res Function(_$SignUpFormImpl) then) =
      __$$SignUpFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      String? firstName,
      @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      String? lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      String? email,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(4),
        MaxLengthValidator(10)
      ])
      String? username,
      @RfControl(validators: [NumberValidator(allowNegatives: false)]) int? age,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(5),
        MaxLengthValidator(8)
      ])
      String? password});
}

/// @nodoc
class __$$SignUpFormImplCopyWithImpl<$Res>
    extends _$SignUpFormCopyWithImpl<$Res, _$SignUpFormImpl>
    implements _$$SignUpFormImplCopyWith<$Res> {
  __$$SignUpFormImplCopyWithImpl(
      _$SignUpFormImpl _value, $Res Function(_$SignUpFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? age = freezed,
    Object? password = freezed,
  }) {
    return _then(_$SignUpFormImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpFormImpl implements _SignUpForm {
  const _$SignUpFormImpl(
      {@RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      this.firstName,
      @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      this.lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      this.email,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(4),
        MaxLengthValidator(10)
      ])
      this.username,
      @RfControl(validators: [NumberValidator(allowNegatives: false)]) this.age,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(5),
        MaxLengthValidator(8)
      ])
      this.password});

  factory _$SignUpFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpFormImplFromJson(json);

  @override
  @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
  final String? firstName;
  @override
  @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
  final String? lastName;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  final String? email;
  @override
  @RfControl(validators: [
    RequiredValidator(),
    MinLengthValidator(4),
    MaxLengthValidator(10)
  ])
  final String? username;
  @override
  @RfControl(validators: [NumberValidator(allowNegatives: false)])
  final int? age;
  @override
  @RfControl(validators: [
    RequiredValidator(),
    MinLengthValidator(5),
    MaxLengthValidator(8)
  ])
  final String? password;

  @override
  String toString() {
    return 'SignUpForm(firstName: $firstName, lastName: $lastName, email: $email, username: $username, age: $age, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, email, username, age, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFormImplCopyWith<_$SignUpFormImpl> get copyWith =>
      __$$SignUpFormImplCopyWithImpl<_$SignUpFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpFormImplToJson(
      this,
    );
  }
}

abstract class _SignUpForm implements SignUpForm {
  const factory _SignUpForm(
      {@RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      final String? firstName,
      @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
      final String? lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      final String? email,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(4),
        MaxLengthValidator(10)
      ])
      final String? username,
      @RfControl(validators: [NumberValidator(allowNegatives: false)])
      final int? age,
      @RfControl(validators: [
        RequiredValidator(),
        MinLengthValidator(5),
        MaxLengthValidator(8)
      ])
      final String? password}) = _$SignUpFormImpl;

  factory _SignUpForm.fromJson(Map<String, dynamic> json) =
      _$SignUpFormImpl.fromJson;

  @override
  @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
  String? get firstName;
  @override
  @RfControl(validators: [RequiredValidator(), MinLengthValidator(4)])
  String? get lastName;
  @override
  @RfControl(validators: [RequiredValidator(), EmailValidator()])
  String? get email;
  @override
  @RfControl(validators: [
    RequiredValidator(),
    MinLengthValidator(4),
    MaxLengthValidator(10)
  ])
  String? get username;
  @override
  @RfControl(validators: [NumberValidator(allowNegatives: false)])
  int? get age;
  @override
  @RfControl(validators: [
    RequiredValidator(),
    MinLengthValidator(5),
    MaxLengthValidator(8)
  ])
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpFormImplCopyWith<_$SignUpFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

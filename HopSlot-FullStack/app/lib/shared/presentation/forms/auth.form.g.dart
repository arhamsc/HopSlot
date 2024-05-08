// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'auth.form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginFormImpl _$$LoginFormImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LoginFormImpl',
      json,
      ($checkedConvert) {
        final val = _$LoginFormImpl(
          identity: $checkedConvert('identity', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LoginFormImplToJson(_$LoginFormImpl instance) =>
    <String, dynamic>{
      'identity': instance.identity,
      'password': instance.password,
    };

_$SignUpFormImpl _$$SignUpFormImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SignUpFormImpl',
      json,
      ($checkedConvert) {
        final val = _$SignUpFormImpl(
          firstName: $checkedConvert('firstName', (v) => v as String?),
          lastName: $checkedConvert('lastName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          username: $checkedConvert('username', (v) => v as String?),
          age: $checkedConvert('age', (v) => (v as num?)?.toInt()),
          password: $checkedConvert('password', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SignUpFormImplToJson(_$SignUpFormImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'username': instance.username,
      'age': instance.age,
      'password': instance.password,
    };

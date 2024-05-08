// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$UserImpl',
      json,
      ($checkedConvert) {
        final val = _$UserImpl(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          username: $checkedConvert('username', (v) => v as String),
          firstName: $checkedConvert('firstName', (v) => v as String),
          lastName: $checkedConvert('lastName', (v) => v as String),
          role: $checkedConvert('role', (v) => v as String),
          fcmToken: $checkedConvert('fcmToken', (v) => v as String?),
          tokens: $checkedConvert(
              'tokens', (v) => Tokens.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'role': instance.role,
      'fcmToken': instance.fcmToken,
      'tokens': instance.tokens.toJson(),
    };

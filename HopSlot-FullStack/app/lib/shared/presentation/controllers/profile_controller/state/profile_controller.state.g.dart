// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'profile_controller.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileStateImpl _$$ProfileStateImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileStateImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileStateImpl(
          actionResult: $checkedConvert(
              'actionResult',
              (v) => v == null
                  ? const ActionResult.idle()
                  : ActionResult.fromJson(v as Map<String, dynamic>)),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
          doctor: $checkedConvert(
              'doctor',
              (v) => v == null
                  ? null
                  : Doctor.fromJson(v as Map<String, dynamic>)),
          patient: $checkedConvert(
              'patient',
              (v) => v == null
                  ? null
                  : Patient.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$ProfileStateImplToJson(_$ProfileStateImpl instance) =>
    <String, dynamic>{
      'actionResult': instance.actionResult.toJson(),
      'user': instance.user.toJson(),
      'doctor': instance.doctor?.toJson(),
      'patient': instance.patient?.toJson(),
    };

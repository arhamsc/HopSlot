// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'tokens.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokensImpl _$$TokensImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$TokensImpl',
      json,
      ($checkedConvert) {
        final val = _$TokensImpl(
          at: $checkedConvert('at', (v) => v as String),
          rt: $checkedConvert('rt', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$TokensImplToJson(_$TokensImpl instance) =>
    <String, dynamic>{
      'at': instance.at,
      'rt': instance.rt,
    };

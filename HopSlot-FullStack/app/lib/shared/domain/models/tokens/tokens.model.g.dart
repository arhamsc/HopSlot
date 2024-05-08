// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'tokens.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokensAdapter extends TypeAdapter<Tokens> {
  @override
  final int typeId = 1;

  @override
  Tokens read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tokens(
      at: fields[0] as String,
      rt: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Tokens obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.at)
      ..writeByte(1)
      ..write(obj.rt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokensAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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

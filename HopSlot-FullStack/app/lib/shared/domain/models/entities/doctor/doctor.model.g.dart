// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'doctor.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoctorAdapter extends TypeAdapter<Doctor> {
  @override
  final int typeId = 2;

  @override
  Doctor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doctor(
      hospitalId: fields[0] as String,
      userId: fields[1] as String,
      cabinNumber: fields[2] as int,
      cabinFloor: fields[3] as int,
      cabinLat: fields[4] as double,
      cabinLng: fields[5] as double,
      cabinAlt: fields[6] as double,
      noOfPatientsConsulted: fields[7] as int,
      lastClockIn: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, Doctor obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.hospitalId)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.cabinNumber)
      ..writeByte(3)
      ..write(obj.cabinFloor)
      ..writeByte(4)
      ..write(obj.cabinLat)
      ..writeByte(5)
      ..write(obj.cabinLng)
      ..writeByte(6)
      ..write(obj.cabinAlt)
      ..writeByte(7)
      ..write(obj.noOfPatientsConsulted)
      ..writeByte(8)
      ..write(obj.lastClockIn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$DoctorImpl',
      json,
      ($checkedConvert) {
        final val = _$DoctorImpl(
          hospitalId: $checkedConvert('hospitalId', (v) => v as String),
          userId: $checkedConvert('userId', (v) => v as String),
          cabinNumber:
              $checkedConvert('cabinNumber', (v) => (v as num).toInt()),
          cabinFloor: $checkedConvert('cabinFloor', (v) => (v as num).toInt()),
          cabinLat: $checkedConvert('cabinLat',
              (v) => const StringToDoubleTransformer().fromJson(v as String)),
          cabinLng: $checkedConvert('cabinLng',
              (v) => const StringToDoubleTransformer().fromJson(v as String)),
          cabinAlt: $checkedConvert('cabinAlt',
              (v) => const StringToDoubleTransformer().fromJson(v as String)),
          noOfPatientsConsulted: $checkedConvert(
              'noOfPatientsConsulted', (v) => (v as num).toInt()),
          lastClockIn: $checkedConvert('lastClockIn',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'hospitalId': instance.hospitalId,
      'userId': instance.userId,
      'cabinNumber': instance.cabinNumber,
      'cabinFloor': instance.cabinFloor,
      'cabinLat': const StringToDoubleTransformer().toJson(instance.cabinLat),
      'cabinLng': const StringToDoubleTransformer().toJson(instance.cabinLng),
      'cabinAlt': const StringToDoubleTransformer().toJson(instance.cabinAlt),
      'noOfPatientsConsulted': instance.noOfPatientsConsulted,
      'lastClockIn': instance.lastClockIn?.toIso8601String(),
    };

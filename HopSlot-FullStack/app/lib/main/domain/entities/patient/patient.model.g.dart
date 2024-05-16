// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'patient.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientAdapter extends TypeAdapter<Patient> {
  @override
  final int typeId = 3;

  @override
  Patient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Patient(
      userId: fields[0] as String,
      age: fields[1] as int,
      lastAppointmentId: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Patient obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.lastAppointmentId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PatientImpl',
      json,
      ($checkedConvert) {
        final val = _$PatientImpl(
          userId: $checkedConvert('userId', (v) => v as String),
          age: $checkedConvert('age', (v) => (v as num).toInt()),
          lastAppointmentId:
              $checkedConvert('appointmentId', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'lastAppointmentId': 'appointmentId'},
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'age': instance.age,
      'appointmentId': instance.lastAppointmentId,
    };

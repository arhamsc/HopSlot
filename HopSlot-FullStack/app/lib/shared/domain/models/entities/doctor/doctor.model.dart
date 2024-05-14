/*
model Doctor {
  hospitalId String /// @z.string().uuid()
  hospital   Hospital @relation(fields: [hospitalId], references: [id], onDelete: Cascade)

  userId String @id /// @z.string().uuid()
  user   User   @relation(fields: [userId], references: [id], onDelete: Cascade)

  cabinNumber           Int
  cabinFloor            Int
  cabinLat              Decimal
  cabinLng              Decimal
  cabinAlt              Decimal
  noOfPatientsConsulted Int
  lastClockIn           DateTime?

  createdAt    DateTime       @default(now()) /// @z.date().optional()
  updatedAt    DateTime       @updatedAt /// @z.date().optional()
  Appointment  Appointment[]
  Report       Report[]
  DoctorSlots  DoctorSlot[]
  Prescription Prescription[]

  @@map("doctors")
}

 */

import 'package:app/utils/transformations/string_to_double_transformer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'doctor.model.freezed.dart';

part 'doctor.model.g.dart';

@freezed
@HiveType(typeId: 2)
class Doctor with _$Doctor {
  const factory Doctor({
    @HiveField(0) required String hospitalId,
    @HiveField(1) required String userId,
    @HiveField(2) required int cabinNumber,
    @HiveField(3) required int cabinFloor,
    @HiveField(4) @StringToDoubleTransformer() required double cabinLat,
    @HiveField(5) @StringToDoubleTransformer() required double cabinLng,
    @HiveField(6) @StringToDoubleTransformer() required double cabinAlt,
    @HiveField(7) required int noOfPatientsConsulted,
    @HiveField(8) DateTime? lastClockIn,
  }) = _Doctor;

  factory Doctor.empty() => const _Doctor(
        hospitalId: "",
        userId: "",
        cabinNumber: 0,
        cabinFloor: 0,
        cabinLat: 0,
        cabinLng: 0,
        cabinAlt: 0,
        noOfPatientsConsulted: 0,
      );

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

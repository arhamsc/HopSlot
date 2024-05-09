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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.model.freezed.dart';
part 'doctor.model.g.dart';

@freezed
class Doctor with _$Doctor {
  const factory Doctor({
    required String hospitalId,
    required String userId,
    required int cabinNumber,
    required int cabinFloor,
    required double cabinLat,
    required double cabinLng,
    required double cabinAlt,
    required int noOfPatientsConsulted,
    DateTime? lastClockIn,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

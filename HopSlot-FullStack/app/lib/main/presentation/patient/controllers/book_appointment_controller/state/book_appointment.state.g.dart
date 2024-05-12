// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'book_appointment.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookAppointmentStateImpl _$$BookAppointmentStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BookAppointmentStateImpl',
      json,
      ($checkedConvert) {
        final val = _$BookAppointmentStateImpl(
          hospitalItems: $checkedConvert(
              'hospitalItems',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          LookUpResponse.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          doctorItems: $checkedConvert(
              'doctorItems',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          LookUpResponse.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          symptomItems: $checkedConvert(
              'symptomItems',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          SymptomEvidence.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          availableSlots: $checkedConvert(
              'availableSlots',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map(
                          (e) => DoctorSlot.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          selectedHospitalId:
              $checkedConvert('selectedHospitalId', (v) => v as String),
          selectedDoctorId:
              $checkedConvert('selectedDoctorId', (v) => v as String),
          selectedSymptoms: $checkedConvert(
              'selectedSymptoms',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      SymptomEvidence.fromJson(e as Map<String, dynamic>))
                  .toList()),
          selectedSlotId: $checkedConvert('selectedSlotId', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BookAppointmentStateImplToJson(
        _$BookAppointmentStateImpl instance) =>
    <String, dynamic>{
      'hospitalItems': instance.hospitalItems.map((e) => e.toJson()).toList(),
      'doctorItems': instance.doctorItems.map((e) => e.toJson()).toList(),
      'symptomItems': instance.symptomItems.map((e) => e.toJson()).toList(),
      'availableSlots': instance.availableSlots.map((e) => e.toJson()).toList(),
      'selectedHospitalId': instance.selectedHospitalId,
      'selectedDoctorId': instance.selectedDoctorId,
      'selectedSymptoms':
          instance.selectedSymptoms.map((e) => e.toJson()).toList(),
      'selectedSlotId': instance.selectedSlotId,
    };

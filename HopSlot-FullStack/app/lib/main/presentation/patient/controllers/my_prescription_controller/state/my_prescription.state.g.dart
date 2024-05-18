// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'my_prescription.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyPrescriptionStateImpl _$$MyPrescriptionStateImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MyPrescriptionStateImpl',
      json,
      ($checkedConvert) {
        final val = _$MyPrescriptionStateImpl(
          appointmentDetail: $checkedConvert('appointmentDetail',
              (v) => AppointmentDetail.fromJson(v as Map<String, dynamic>)),
          prescriptions: $checkedConvert(
              'prescriptions',
              (v) => (v as List<dynamic>)
                  .map((e) => Prescription.fromJson(e as Map<String, dynamic>))
                  .toList()),
          selectedPrescription: $checkedConvert(
              'selectedPrescription',
              (v) => v == null
                  ? null
                  : Prescription.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MyPrescriptionStateImplToJson(
        _$MyPrescriptionStateImpl instance) =>
    <String, dynamic>{
      'appointmentDetail': instance.appointmentDetail.toJson(),
      'prescriptions': instance.prescriptions.map((e) => e.toJson()).toList(),
      'selectedPrescription': instance.selectedPrescription?.toJson(),
    };

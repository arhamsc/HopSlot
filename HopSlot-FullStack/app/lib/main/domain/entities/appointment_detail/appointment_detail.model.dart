import 'package:app/main/domain/enums/appointment_status/appointment_status.enum.dart';
import 'package:app/main/domain/entities/hospital_essential/hospital_essential.model.dart';
import 'package:app/main/domain/helpers/essential_user/essential_user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_detail.model.g.dart';

part 'appointment_detail.model.freezed.dart';

/*
"id": "31616a3b-21ef-4cf8-a58e-e4eba966f14f",
        "status": "CONFIRMED",
        "additionalDelay": 0,
        "hospital": {
            "id": "c6dc3268-ea81-23be-7ee2-4c73e02905e8",
            "name": "Gulgowski - Nikolaus",
            "address": "61752 Lesly Drive",
            "email": "Brandi27@hotmail.com",
            "phone": "9880151166"
        },
        "appointmentStart": "2024-05-13T23:00:36.000Z",
        "appointmentStartDelay": 60,
        "patient": {
            "id": "52fd1acc-5d0b-4a67-bac8-87f6cc42ce4c",
            "firstName": "Rayees",
            "lastName": "Hussain"
        },
        "doctor": {

                "id": "1be17445-0584-48df-a729-7757490486c5",
                "firstName": "Ursula",
                "lastName": "Reilly",
                "email": "Madisen.Lesch@hotmail.com"

        }
 */

@freezed
class AppointmentDetail with _$AppointmentDetail {
  const factory AppointmentDetail({
    required String id,
    required EAppointmentStatus status,
    required int additionalDelay,
    required HospitalEssential hospital,
    required DateTime appointmentStart,
    required int? appointmentStartDelay,
    required EssentialUser patient,
    required EssentialUser doctor,
  }) = _AppointmentDetail;

  factory AppointmentDetail.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDetailFromJson(json);
}

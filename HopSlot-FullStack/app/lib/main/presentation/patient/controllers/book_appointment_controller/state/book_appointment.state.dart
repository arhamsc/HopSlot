import 'package:app/shared/domain/models/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/shared/domain/models/entities/symptom_evidence/symptom_evidence.model.dart';
import 'package:app/shared/domain/models/helpers/look_up_response/look_up_response.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_appointment.state.freezed.dart';

part 'book_appointment.state.g.dart';

@freezed
class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState({
    @Default([]) List<LookUpResponse> hospitalItems,
    @Default([]) List<LookUpResponse> doctorItems,
    @Default([]) List<SymptomEvidence> symptomItems,
    @Default([]) List<DoctorSlot> availableSlots,
    required String selectedHospitalId,
    required String selectedDoctorId,
    required List<SymptomEvidence> selectedSymptoms,
    required String selectedSlotId,
  }) = _BookAppointmentState;

  factory BookAppointmentState.fromJson(Map<String, dynamic> json) =>
      _$BookAppointmentStateFromJson(json);
}

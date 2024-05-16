import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/main/domain/entities/symptom_evidence/symptom_evidence.model.dart';
import 'package:app/main/domain/helpers/look_up_response/look_up_response.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import '../../../../domain/entities/point_of_interest_value/point_of_interest_value.model.dart';

part 'book_appointment.form.freezed.dart';

part 'book_appointment.form.gform.dart';

@freezed
@Rf()
class BookAppointmentForm with _$BookAppointmentForm {
  const factory BookAppointmentForm({
    @RfControl(validators: [
      RequiredValidator(),
    ])
    LookUpResponse? hospital,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    LookUpResponse? doctor,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    DoctorSlot? slot,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    DateTime? date,

    /// just an helper field
    @RfControl(validators: [
      RequiredValidator(),
    ])
    List<LookUpResponse>? selectedSymptoms,
    @RfArray() @Default([]) List<SymptomEvidence> symptoms,
  }) = _BookAppointmentForm;
}

// @freezed
// @RfGroup()
// class SymptomForm with _$SymptomForm {
//   const factory SymptomForm({
//     @RfControl(validators: [
//       RequiredValidator(),
//     ])
//     String? name,
//     @RfControl(validators: [
//       RequiredValidator(),
//     ])
//     String? desc,
//     @RfControl(validators: [
//       RequiredValidator(),
//     ])
//     String? type,
//     @RfControl(validators: [
//       RequiredValidator(),
//     ])
//     List<String>? values,
//   }) = _SymptomForm;
// }

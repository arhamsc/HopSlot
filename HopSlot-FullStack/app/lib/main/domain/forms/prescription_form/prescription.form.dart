import 'package:app/utils/transformations/multi_file_transform.util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_file_picker/multi_file.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'prescription.form.g.dart';

part 'prescription.form.freezed.dart';

part 'prescription.form.gform.dart';

@freezed
@Rf()
class PrescriptionForm with _$PrescriptionForm {
  const factory PrescriptionForm({
    @RfControl(validators: [RequiredValidator()]) String? doctorId,
    @RfControl(validators: [RequiredValidator()]) String? appointmentId,
    @RfControl(validators: [RequiredValidator()]) String? patientId,
    @RfControl(validators: [RequiredValidator()]) String? body,
    @RfControl(validators: [RequiredValidator()]) String? docSign,
    @RfControl(validators: [RequiredValidator()]) String? otherNotes,
    @RfControl(validators: [RequiredValidator()])
    @MultiFileTransformer()
    MultiFile<String>? report,
  }) = _PrescriptionForm;

  factory PrescriptionForm.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFormFromJson(json);
}

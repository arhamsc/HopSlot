import 'package:app/main/domain/forms/prescription_form/prescription.form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forms.providers.g.dart';

@riverpod
PrescriptionForm prescriptionForm(PrescriptionFormRef ref) {
  return const PrescriptionForm();
}

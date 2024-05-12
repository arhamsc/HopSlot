import 'package:app/main/presentation/patient/forms/book_appointment_form/book_appointment.form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forms.providers.g.dart';

@riverpod
BookAppointmentForm bookAppointmentForm(BookAppointmentFormRef ref) {
  return const BookAppointmentForm();
}

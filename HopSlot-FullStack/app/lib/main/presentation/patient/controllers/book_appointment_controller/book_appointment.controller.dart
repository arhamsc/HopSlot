import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/patient/controllers/book_appointment_controller/state/book_appointment.state.dart';
import 'package:app/main/presentation/patient/forms/book_appointment_form/book_appointment.form.dart';
import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:app/main/domain/entities/symptom_evidence/symptom_evidence.model.dart';
import 'package:app/main/domain/helpers/look_up_response/look_up_response.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'book_appointment.controller.g.dart';

@riverpod
class BookAppointmentController extends _$BookAppointmentController {
  @override
  FutureOr<BookAppointmentState> build() async {
    final hospitals =
        await ref.read(appointmentLookUpUCProvider).callHospitals();
    final symptoms =
        await ref.read(appointmentLookUpUCProvider).callSymptoms("");
    return BookAppointmentState(
      hospitalItems: hospitals.getOrElse(
        (l) => [],
      ),
      symptomItems: symptoms.getOrElse(
        (l) => [],
      ),
      selectedDoctorId: '',
      selectedHospitalId: '',
      selectedSlotId: '',
      selectedSymptoms: [],
    );
  }

  Future<void> fetchHospitals() async {
    final hospitals =
        await ref.read(appointmentLookUpUCProvider).callHospitals();
    final oldState = state.requireValue;
    state = hospitals.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(
        oldState.copyWith(
          hospitalItems: r,
        ),
      ),
    );
  }

  Future<void> fetchDoctors(String hospitalId) async {
    final doctors =
        await ref.read(appointmentLookUpUCProvider).callDoctors(hospitalId);
    final oldState = state.requireValue;
    state = doctors.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(
        oldState.copyWith(
          doctorItems: r,
        ),
      ),
    );
  }

  Future<void> fetchSymptoms(String query) async {
    final symptoms =
        await ref.read(appointmentLookUpUCProvider).callSymptoms(query);
    final oldState = state.requireValue;
    state = symptoms.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(
        oldState.copyWith(
          symptomItems: r,
        ),
      ),
    );
  }

  Future<List<LookUpResponse>> fetchBinarySymptoms(String query) async {
    // final symptoms =
    //     await ref.read(appointmentLookUpUCProvider).callSymptoms(query);
    final symptoms = state.requireValue.symptomItems;
    return symptoms
        .where((e) => e.dataType == "B")
        .map((e) => LookUpResponse(id: e.id, name: e.question))
        .toList();
    // );return symptoms.fold(
    //   (l) => [],
    //   (r) => r
    //       .where((e) => e.dataType == "B")
    //       .map((e) => LookUpResponse(id: e.id, name: e.question))
    //       .toList(),
    // );
  }

  Future<List<DoctorSlot>> fetchSlots(String doctorId, DateTime date) async {
    final slots = await ref
        .read(appointmentLookUpUCProvider)
        .callDoctorsSlots(date: date, doctorId: doctorId);
    final oldState = state.requireValue;
    state = slots.fold(
      (l) => AsyncValue.error(l, StackTrace.current),
      (r) => AsyncValue.data(
        oldState.copyWith(
          availableSlots: r,
        ),
      ),
    );

    return slots.getOrElse((l) => []);
  }

  List<SymptomEvidence> onAddSymptom(
      List<LookUpResponse> list, LookUpResponse item) {
    final symptoms = state.requireValue.symptomItems
            .where(
              (element) => list.contains(
                LookUpResponse(
                  id: element.id,
                  name: element.question,
                ),
              ),
            )
            .toList() ??
        [];
    final dependentSymptoms = state.requireValue.symptomItems
            .where(
              (element) =>
                  element.codeQuestion ==
                  state.requireValue.symptomItems
                      .firstWhere(
                        (e) => e.id == item.id,
                      )
                      .name,
            )
            .toList() ??
        [];
    final updatedList = List<SymptomEvidence>.from(symptoms);
    updatedList.addAll(dependentSymptoms);
    return updatedList.toSet().toList();
  }

  List<SymptomEvidence> onRemoveSymptom(
      List<LookUpResponse> list, LookUpResponse item) {
    final updatedList = list.map(
      (e) => state.requireValue.symptomItems
          .firstWhere((element) => element.id == e.id),
    );
    final val = updatedList
        .whereType<SymptomEvidence>()
        .where(
          (element) =>
              element.codeQuestion !=
              state.requireValue.symptomItems
                  .firstWhere(
                    (e) => e.id == item.id,
                  )
                  .name,
        )
        .toList();
    return val;
  }

  Future<void> bookAppointment(
      BookAppointmentForm form, Function() onSuccess) async {
    final result = await ref.read(bookAppointmentUCProvider).call(form);
    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
    }, (r) => onSuccess());
  }
}

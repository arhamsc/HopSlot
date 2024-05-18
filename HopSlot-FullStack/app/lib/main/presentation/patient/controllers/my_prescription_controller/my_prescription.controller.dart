import 'package:app/main/domain/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/patient/controllers/my_prescription_controller/state/my_prescription.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_prescription.controller.g.dart';

@riverpod
class MyPrescriptionController extends _$MyPrescriptionController {
  @override
  FutureOr<MyPrescriptionState> build({
    required AppointmentDetail appointmentDetail,
  }) async {
    final prescriptions = await ref
        .read(getPrescriptionUCProvider)
        .callMy(appointmentId: appointmentDetail.id);
    return MyPrescriptionState(
      appointmentDetail: appointmentDetail,
      prescriptions: prescriptions.getOrElse((_) => []),
    );
  }

  showDetails(String id) {
    final oldState = state.requireValue;
    state = AsyncValue.data(
      oldState.copyWith(
        selectedPrescription:
            oldState.prescriptions.firstWhere((p) => p.id == id),
      ),
    );
  }

  closeDetails() {
    final oldState = state.requireValue;
    state = AsyncValue.data(
      oldState.copyWith(
        selectedPrescription: null,
      ),
    );
  }
}

import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/doctor/controllers/edit_slot_controller/state/edit_slot.state.dart';
import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_slot.controller.g.dart';

@riverpod
class EditSlotController extends _$EditSlotController {
  @override
  FutureOr<EditSlotState> build(
      {DoctorSlot? slot, required bool isEdit}) async {
    return EditSlotState(doctorSlot: slot, isEdit: isEdit);
  }

  Future<void> editSlot(DoctorSlot slot, Function() onSuccess) async {
    state = const AsyncLoading();
    final updatedSlot =
        await ref.read(updateDocSlotUCProvider).call(doctorSlot: slot);
    final oldValue = state.value;
    state = updatedSlot.fold(
      (l) => AsyncError(l, l.stackTrace ?? StackTrace.current),
      (r) {
        onSuccess();

        return AsyncValue.data(
          EditSlotState(
            doctorSlot: r,
            isEdit: oldValue?.isEdit ?? false,
          ),
        );
      },
    );
  }

  Future<void> createSlot(DoctorSlot slot, Function() onSuccess) async {
    state = const AsyncLoading();
    final updatedSlot =
        await ref.read(createDocSlotUCProvider).call(doctorSlot: slot);
    final oldValue = state.value;
    state = updatedSlot.fold(
      (l) => AsyncError(l, l.stackTrace ?? StackTrace.current),
      (r) {
        onSuccess();

        return AsyncValue.data(
          EditSlotState(
            doctorSlot: r,
            isEdit: oldValue?.isEdit ?? false,
          ),
        );
      },
    );
  }
}

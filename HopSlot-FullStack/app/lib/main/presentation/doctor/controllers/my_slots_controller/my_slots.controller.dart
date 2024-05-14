import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/presentation/doctor/controllers/my_slots_controller/my_slots_state/my_slots.state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_slots.controller.g.dart';

@riverpod
class MySlotsController extends _$MySlotsController {
  @override
  FutureOr<MySlotsState> build() async {
    final doctorSlots = await ref.read(getDocSlotUCProvider).callMySlots();
    return MySlotsState(mySlots: doctorSlots.fold((l) => throw l, (r) => r));
  }
}

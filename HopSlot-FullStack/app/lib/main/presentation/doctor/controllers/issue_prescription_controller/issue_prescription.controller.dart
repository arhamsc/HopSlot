
import 'package:app/main/domain/forms/prescription_form/prescription.form.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'issue_prescription.controller.g.dart';

@riverpod
class IssuePrescriptionController extends _$IssuePrescriptionController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<void> issuePrescription(
      PrescriptionForm form, Function() callback) async {
    state = const AsyncLoading();
    final prescription = await ref.read(issuePrescriptionUCProvider).call(form);

    state = prescription.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) {
        callback();
        return AsyncValue.data(r);
      },
    );
    return;
  }
}

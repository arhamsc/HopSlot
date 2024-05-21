import 'package:app/core/api/app_api.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/doctor_provider/doctor.provider.dart';
import 'package:app/main/domain/providers/patient_provider/patient.provider.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_user_data.listener.g.dart';

@Riverpod(keepAlive: true)
class FetchUserDataListener extends _$FetchUserDataListener {
  @override
  void build() {
    listenToProvider();
  }

  void listenToProvider() {
    ref.listen(apiProvider, (previous, next) async {
      await _fetchData(next);
    });

    ref.listen(userNotifierProvider, (previous, next) async {
      await _fetchData();
    });
  }

  _fetchData([API? next]) async {
    final user = ref.read(userNotifierProvider);
    if (user == User.empty()) {
      return;
    }

    if (next != null) {
      final header = next.nestApi.options.headers['Authorization'] as String?;
      if (header == null || (header.split(" ")[1].isEmpty)) {
        return;
      }
    }

    if (user.role == "DOCTOR") {
      final doc = await ref.read(getDocDetailsUCProvider).call(user.id);
      final doctor = doc.fold((l) => null, (r) {
        return r;
      });

      if (doctor != null) {
        ref.read(doctorNotifierProvider.notifier).update(doctor);
      }

      return;
    }

    if (user.role == "PATIENT") {
      final patUC = ref.read(getPatientDetailsUCProvider);
      final pat = await patUC.call(user.id);
      pat.fold((l) => null, (r) {
        ref.read(patientNotifierProvider.notifier).update(r);
        return null;
      });

      return;
    }
  }
}

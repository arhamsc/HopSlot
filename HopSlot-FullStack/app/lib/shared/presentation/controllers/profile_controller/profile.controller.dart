import 'package:app/core/logger/talker.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/domain/providers/doctor_provider/doctor.provider.dart';
import 'package:app/shared/domain/providers/patient_provider/patient.provider.dart';
import 'package:app/shared/presentation/controllers/profile_controller/state/profile_controller.state.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/providers/user_provider/user.provider.dart';

part 'profile.controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<ProfileState> build() async {
    final user = ref.watch(userNotifierProvider);
    if (user.role == "DOCTOR") {
      final doctor = ref.watch(doctorNotifierProvider);
      return ProfileState(user: user, doctor: doctor);
    } else if (user.role == "PATIENT") {
      final patient = ref.watch(patientNotifierProvider);
      return ProfileState(user: user, patient: patient);
    }
    return ProfileState(user: user);
  }

  Future<void> updateDocRoomLoc(Function() onSuccess) async {
    state = const AsyncLoading();
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    final response = await ref.read(docUpdateRoomLocProvider).call(
          lat: position.latitude,
          lng: position.longitude,
          alt: position.altitude,
        );
    final oldValue = state.requireValue;
    state = response.fold((l) => AsyncError(l, StackTrace.current), (r) {
      onSuccess();
      return AsyncValue.data(oldValue);
    });
  }
}

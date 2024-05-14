import 'package:app/shared/domain/models/entities/doctor/doctor.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'doctor.provider.g.dart';

@Riverpod(keepAlive: true)
class DoctorNotifier extends _$DoctorNotifier {
  Box<Doctor> box = Hive.box<Doctor>('doctor');

  @override
  Doctor build() {
    if (box.containsKey('doctor')) {
      final doctor = box.get('doctor');
      return doctor ?? Doctor.empty();
    }
    return Doctor.empty();
  }

  void update(Doctor doc) {
    state = doc;
    box.put('doctor', doc);
  }

  void setNull() {
    box.delete('doctor');
    state = Doctor.empty();
  }
}

import 'package:app/main/domain/entities/patient/patient.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'patient.provider.g.dart';

@Riverpod(keepAlive: true)
class PatientNotifier extends _$PatientNotifier {
  Box<Patient> box = Hive.box<Patient>('patient');

  @override
  Patient build() {
    if (box.containsKey('patient')) {
      final user = box.get('patient');
      return user ?? Patient.empty();
    }
    return Patient.empty();
  }

  void update(Patient doc) {
    state = doc;
    box.put('patient', doc);
  }

  void setNull() {
    box.delete('patient');
    state = Patient.empty();
  }
}

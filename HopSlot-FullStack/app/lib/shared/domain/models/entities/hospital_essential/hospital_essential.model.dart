/*
"hospital": {
            "id": "c6dc3268-ea81-23be-7ee2-4c73e02905e8",
            "name": "Gulgowski - Nikolaus",
            "address": "61752 Lesly Drive",
            "email": "Brandi27@hotmail.com",
            "phone": "9880151166"
        },
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hospital_essential.model.g.dart';

part 'hospital_essential.model.freezed.dart';

@freezed
class HospitalEssential with _$HospitalEssential {
  const factory HospitalEssential({
    required String id,
    required String name,
    required String address,
    String? email,
    String? phone,
  }) = _HospitalEssential;

  factory HospitalEssential.fromJson(Map<String, dynamic> json) =>
      _$HospitalEssentialFromJson(json);
}

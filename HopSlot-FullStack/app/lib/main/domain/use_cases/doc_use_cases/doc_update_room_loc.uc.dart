import 'package:app/main/data/repositories/doc.repo.dart';
import 'package:app/shared/domain/providers/doctor_provider/doctor.provider.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DocUpdateRoomLocUC {
  final DocRepo _docRepository;
  final Ref _ref;

  DocUpdateRoomLocUC(this._docRepository, this._ref);

  Future<Either<AppException, String>> call({
    required double lat,
    required double lng,
    required double alt,
  }) async {
    final response = await _docRepository
        .updateRoomLocation(lat: lat, lng: lng, alt: alt)
        .run();

    return response.fold((l) => left(l), (r) {
      if (r.data == null) {
        return left(AppException(message: "Error updating room location"));
      }

      if (r.data!["userId"].toString().isEmpty) {
        return left(AppException(message: "Error updating room location"));
      }

      final oldDoc = _ref.read(doctorNotifierProvider).copyWith(
            cabinAlt: double.parse(r.data!["cabinAlt"]),
            cabinLat: double.parse(r.data!["cabinLat"]),
            cabinLng: double.parse(r.data!["cabinLng"]),
          );

      _ref.read(doctorNotifierProvider.notifier).update(oldDoc);

      return right(r.message);
    });
  }
}

import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/application/location.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service.providers.g.dart';

@riverpod
LocationService locationService(LocationServiceRef ref) {
  return LocationService(ref.watch(iAmLateUCProvider), ref);
}

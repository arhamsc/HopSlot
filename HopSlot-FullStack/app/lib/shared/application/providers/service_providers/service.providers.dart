import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/application/services/fb_messaging.service.dart';
import 'package:app/shared/application/services/location.service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service.providers.g.dart';

@riverpod
LocationService locationService(LocationServiceRef ref) {
  return LocationService(ref.watch(iAmLateUCProvider), ref);
}

@riverpod
FBMessagingService fbMessagingService(FbMessagingServiceRef ref) {
  return FBMessagingService(
      FirebaseMessaging.instance, ref.read(updateTokenUCProvider), ref);
}

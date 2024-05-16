import 'package:app/core/logger/talker.dart';
import 'package:app/main/data/providers/repo_providers/repo.providers.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/application/services/notification.service.dart';
import 'package:app/main/application/services/location.service.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'service.providers.g.dart';

@riverpod
LocationService locationService(LocationServiceRef ref) {
  return LocationService(ref.watch(iAmLateUCProvider), ref);
}

@riverpod
FBMessagingService fbMessagingService(FbMessagingServiceRef ref) {
  final fln = FlutterLocalNotificationsPlugin();
  return FBMessagingService(
    fcm: ref.watch(fcmRepoProvider),
    fln: ref.watch(
      flutterLocalNotificationRepoProvider(fln),
    ),
    talker: ref.watch(talkerProvider).talker,
    updateTokenUC: ref.watch(updateTokenUCProvider),
    user: ref.watch(userNotifierProvider),
  );
}

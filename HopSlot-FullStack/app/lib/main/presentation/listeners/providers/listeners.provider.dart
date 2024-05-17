import 'package:app/main/presentation/listeners/fcm_token.listener.dart';
import 'package:app/main/presentation/listeners/fetch_user_data.listener.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'listeners.provider.g.dart';

@riverpod
FetchUserDataListener fetchUserDataListener(FetchUserDataListenerRef ref) {
  return FetchUserDataListener(ref);
}

@riverpod
FCMTokenListener fcmTokenListener(FcmTokenListenerRef ref) {
  return FCMTokenListener(ref);
}

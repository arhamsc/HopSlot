import 'package:app/config/app_config.dart';
import 'package:app/core/logger/talker.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/main/application/providers/service_providers/service.providers.dart';
import 'package:app/main/presentation/handlers/providers/handler.providers.dart';
import 'package:app/main/presentation/listeners/providers/listeners.provider.dart';
import 'package:app/utils/observers/auto_route_observer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

//IMPORTANT: This container should'nt be access anywhere inside the app apart from validators which is dart only use_case.
final container = ProviderContainer();

Future<void> main() async {
  final appConfig = AppConfig();

  await appConfig.loadEnvs();

  await appConfig.configureHive();

  await appConfig.configureFirebase();

  final talker = container.read(talkerProvider);
  container.observers.add(talker.talkerRiverpodObserver);

  container.read(appRouterProvider);
  container.read(locationServiceProvider);
  container.read(fbMessagingServiceProvider);
  container.read(routeRefreshHandlerProvider);
  container.read(fetchUserDataListenerProvider);
  container.read(fcmTokenListenerProvider);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      FirebaseMessaging.instance.requestPermission();

      return () {};
    });
    final appRouter = ref.watch(appRouterProvider);
    final talker = ref.watch(talkerProvider);

    return ReactiveFormConfig(
      validationMessages: {
        ValidationMessage.email: (_) => 'Please enter a valid email address',
        ValidationMessage.required: (error) {
          return 'This field is required';
        },
        ValidationMessage.maxLength: (e) =>
            'Required ${(e as Map<String, dynamic>)['requiredLength']} characters but got ${(e)['actualLength']}',
        ValidationMessage.minLength: (e) =>
            'Required ${(e as Map<String, dynamic>)['requiredLength']} characters but got ${(e)['actualLength']}',
        'unique': (e) => (e as Map<String, dynamic>)['message'],
      },
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (_, child) {
          return KeyboardDismissOnTap(
            child: MaterialApp.router(
              routerConfig: appRouter.config(
                navigatorObservers: () => [
                  TalkerAutoRouteObserver(talker: talker.talker),
                ],
              ),
              theme: AppTheme.lightTheme,
            ),
          );
        },
      ),
    );
  }
}

import "package:app/core/pragma_func.dart";
import 'package:app/config/app_config.dart';
import 'package:app/core/api/app_api.dart';
import 'package:app/core/logger/talker.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/application/providers/service_providers/service.providers.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/patient_provider/patient.provider.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:app/utils/observers/auto_route_observer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'main/domain/providers/doctor_provider/doctor.provider.dart';

//IMPORTANT: This container should'nt be access anywhere inside the app apart from validators which is dart only use_case.
final container = ProviderContainer();

Future<void> main() async {
  final appConfig = AppConfig();

  await appConfig.loadEnvs();

  await appConfig.configureHive();

  await appConfig.configureFirebase();

  final talker = container.read(talkerProvider);
  container.read(appRouterProvider);
  container.read(locationServiceProvider);
  container.read(fbMessagingServiceProvider);

  container.observers.add(talker.talkerRiverpodObserver);

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

    // Listener to fetch doctor info if role is DOCTOR and there is token in api
    ref.listen(apiProvider, (previous, next) async {
      final user = ref.read(userNotifierProvider);

      if (user == User.empty()) {
        return;
      }

      final header = next.nestApi.options.headers['Authorization'] as String?;
      if (header == null || (header.split(" ")[1].isEmpty)) {
        return;
      }

      if (user.role == "DOCTOR") {
        final doc = await ref.read(getDocDetailsUCProvider).call(user.id);
        final doctor = doc.fold((l) => null, (r) {
          return r;
        });

        if (doctor != null) {
          ref.read(doctorNotifierProvider.notifier).update(doctor);
        }
        return;
      }

      if (user.role == "PATIENT") {
        final patUC = ref.read(getPatientDetailsUCProvider);
        final pat = await patUC.call(user.id);
        pat.fold((l) => null, (r) {
          ref.read(patientNotifierProvider.notifier).update(r);
          return null;
        });
      }
    });

    ref.listen(userNotifierProvider, (previous, next) async {
      ref
          .read(talkerProvider)
          .talker
          .debug("USER LISTENER: $previous to $next");
      if (next == User.empty()) {
        return;
      }

      if (next.tokens.at.isEmpty) {
        return;
      }

      if (next.fcmToken == null || (next.fcmToken?.isEmpty ?? false)) {
        final token = await FirebaseMessaging.instance.getToken();
        final res = await ref.read(updateTokenUCProvider).call(token ?? "");
        if (res.isRight()) {
          ref
              .read(userNotifierProvider.notifier)
              .update(next.copyWith(fcmToken: token));
        }
      }
    });

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

import 'package:app/config/app_config.dart';
import 'package:app/core/api/app_api.dart';
import 'package:app/core/logger/talker.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/application/providers/service_providers/service.providers.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/utils/observers/auto_route_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

import 'shared/domain/providers/doctor_provider/doctor.provider.dart';

Future<void> main() async {
  final appConfig = AppConfig();

  await appConfig.loadEnvs();

  await appConfig.configureHive();

  final container = ProviderContainer();

  final talker = container.read(talkerProvider);
  container.read(appRouterProvider);
  container.read(locationServiceProvider);

  container.observers.add(talker.talkerRiverpodObserver);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final talker = ref.watch(talkerProvider);

    ref.listen(apiProvider, (previous, next) async {
      final _doc = ref.read(getDocDetailsUCProvider);
      final header = next.nestApi.options.headers['Authorization'] as String?;
      if (header != null && (header.split(" ")[1].isNotEmpty)) {
        final r = ref.read(userNotifierProvider);
        if (r.role == "DOCTOR") {
          final doc = await _doc.call(r.id);
          doc.fold((l) => null, (r) {
            ref.read(doctorNotifierProvider.notifier).update(r);
            return null;
          });
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

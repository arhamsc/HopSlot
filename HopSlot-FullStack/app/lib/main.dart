import 'package:app/config/app_config.dart';
import 'package:app/config/injectable/injectable.dart';
import 'package:app/core/logger/talker.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/theme/app_theme.dart';
import 'package:app/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  final appConfig = AppConfig();

  await appConfig.configureGetIt();

  await appConfig.loadEnvs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = getIt.get<AppRouter>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ResponsiveSizer(builder: (context, _, __) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(navigatorObservers: () => [
            getIt.get<CTalker>().talkerRouteObserver,
          ]),
          theme: AppTheme.lightTheme,
        );
      }),
    );
  }
}

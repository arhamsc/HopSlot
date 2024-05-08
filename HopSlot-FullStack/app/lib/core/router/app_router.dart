import 'package:app/shared/domain/models/user/user.model.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_router.gr.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter(ref);
}

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter implements AutoRouteGuard {
  AppRouterRef ref;

  AppRouter(this.ref);

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: AuthRoute.page, initial: true, path: "/auth"),
        AutoRoute(
          page: DocEmptyRoute.page,
          path: "/doctor",
          children: [
            AutoRoute(
              page: DocHomeRoute.page,
              path: "",
            ),
          ],
        ),
        AutoRoute(
          page: PatientEmptyRoute.page,
          path: "/patient",
          children: [
            AutoRoute(
              page: PatientHomeRoute.page,
              path: "",
            ),
          ],
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final user = ref.read(userNotifierProvider);
    if (user != User.empty() || resolver.route.name == AuthRoute.name) {
      resolver.next(true);
    } else {
      resolver.redirect(AuthRoute());
    }
  }
}

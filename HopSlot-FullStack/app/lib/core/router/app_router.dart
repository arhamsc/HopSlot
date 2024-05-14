import 'package:app/core/logger/talker.dart';
import 'package:app/shared/domain/models/entities/user/user.model.dart';
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

  AppRouter(this.ref) {
    ref.listen(userNotifierProvider, (previous, next) {
      if (next == User.empty()) {
        reevaluateGuards();
      }
    });
  }

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
            AutoRoute(
              page: AppointmentHistoryRoute.page,
              path: "appointment-history",
            ),
            AutoRoute(
              page: IssuePrescriptionRoute.page,
              path: "issue-prescription",
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
            AutoRoute(
              page: BookAppointmentRoute.page,
              path: "book-appointment",
            ),
          ],
        ),
        AutoRoute(page: ProfileRoute.page, path: "/profile"),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final user = ref.read(userNotifierProvider);
    if (user != User.empty() || resolver.route.name == AuthRoute.name) {
      if (resolver.route.name == AuthRoute.name) {
        if (user.role == 'PATIENT') {
          resolver.redirect(const PatientHomeRoute());
        } else if (user.role == 'DOCTOR') {
          resolver.redirect(const DocHomeRoute());
        } else {
          resolver.next(true);
        }
      } else {
        resolver.next(true);
      }
    } else {
      ref.read(talkerProvider).talker.info("Reached to redirect");
      resolver.redirect(AuthRoute());
    }
  }
}

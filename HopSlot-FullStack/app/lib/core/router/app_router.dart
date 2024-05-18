import 'package:app/main/presentation/handlers/providers/handler.providers.dart';
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
          usesPathAsKey: true,
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
            AutoRoute(
              page: DocEmptyRoute.page,
              path: "my-slots",
              children: [
                AutoRoute(
                  page: MyDocSlotsRoute.page,
                  path: "",
                ),
                AutoRoute(
                  page: EditSlotRoute.page,
                  path: "edit",
                ),
              ],
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
            AutoRoute(
              page: MyPrescriptionRoute.page,
              path: "my-prescriptions",
            ),
            AutoRoute(
              page: AllAppointmentsRoute.page,
              path: "all-appointments",
            ),
          ],
        ),
        AutoRoute(page: ProfileRoute.page, path: "/profile"),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    ref.read(routeRefreshHandlerProvider).handleNavigation(resolver, router);
  }
}

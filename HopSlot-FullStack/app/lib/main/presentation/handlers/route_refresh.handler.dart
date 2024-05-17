import 'package:app/core/constants/enums.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouteRefreshHandler {
  final AppRouter _autoRoute;
  final Ref _ref;

  RouteRefreshHandler(
    this._ref,
  ) : _autoRoute = _ref.read(appRouterProvider) {
    _listenToUserChanges();
  }

  void _listenToUserChanges() {
    _ref.listen(userNotifierProvider, (previous, next) {
      // Skip token changes
      if (previous?.tokens != next.tokens) return;

      if (next == User.empty()) {
        _navigateToAuth();
        return;
      }

      if (next.role == 'PATIENT') {
        _autoRoute.replaceAll([const PatientHomeRoute()]);
      } else if (next.role == 'DOCTOR') {
        _autoRoute.replaceAll([const DocHomeRoute()]);
      } else {
        _ref.read(snackBarMessengerProvider.notifier).showSnackBar(
              message: "We are working on new roles, stay tuned!!",
              type: SnackbarType.info,
            );
        _navigateToAuth();
      }
    });
  }

  void _navigateToAuth() {
    _autoRoute.replaceAll([AuthRoute()]);
  }

  void handleNavigation(NavigationResolver resolver, StackRouter router) {
    final user = _ref.read(userNotifierProvider);
    if (user != User.empty() || resolver.route.name == AuthRoute.name) {
      resolver.next(true);
    } else {
      _navigateToAuth();
    }
  }
}

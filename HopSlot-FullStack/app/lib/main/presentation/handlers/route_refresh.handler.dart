import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
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
      if (next == User.empty()) {
        _navigateToAuth();
        return;
      }
    });
  }

  void _roleBasedNavigation(User user) {
    if (user.role == 'PATIENT') {
      _autoRoute.pushAndPopUntil(const PatientHomeRoute(),
          predicate: (_) => false);
    } else if (user.role == 'DOCTOR') {
      _autoRoute.pushAndPopUntil(const DocHomeRoute(), predicate: (_) => false);
    } else {
      _navigateToAuth();
    }
  }

  void _navigateToAuth() {
    _autoRoute.pushAndPopUntil(AuthRoute(), predicate: (_) => false);
  }

  void handleNavigation(NavigationResolver resolver, StackRouter router) {
    final user = _ref.read(userNotifierProvider);
    if (user != User.empty() && resolver.route.name == AuthRoute.name) {
      // We are authenticated
      if (resolver.route.name == AuthRoute.name) {
        // Only when we are coming from auth route we will do role based navigation
        _roleBasedNavigation(user);
      }
    } else if (user != User.empty() || resolver.route.name == AuthRoute.name) {
      resolver.next(true);
    } else {
      _navigateToAuth();
    }
  }
}

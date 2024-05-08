// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/presentation/auth/screens/auth.screen.dart' as _i2;
import 'package:app/shared/presentation/shared/widgets/utility/empty_screens/auth_empty.screen.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthEmptyRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthEmptyScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthScreen(
          key: args.key,
          authType: args.authType,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthEmptyScreen]
class AuthEmptyRoute extends _i3.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i3.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i4.Key? key,
    String authType = "login",
    List<_i3.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            authType: authType,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i3.PageInfo<AuthRouteArgs> page =
      _i3.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.authType = "login",
  });

  final _i4.Key? key;

  final String authType;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, authType: $authType}';
  }
}

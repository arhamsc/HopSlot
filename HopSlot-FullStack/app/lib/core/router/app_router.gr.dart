// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/main/presentation/auth/screens/auth.screen.dart' as _i2;
import 'package:app/main/presentation/doctor/presentation/screens/doc_home.screen.dart'
    as _i5;
import 'package:app/main/presentation/patient/screens/book_appointment.screen.dart'
    as _i3;
import 'package:app/main/presentation/patient/screens/patient_home.screen.dart'
    as _i7;
import 'package:app/shared/presentation/widgets/utility/empty_screens/auth_empty.screen.dart'
    as _i1;
import 'package:app/shared/presentation/widgets/utility/empty_screens/doctor_empty.screen.dart'
    as _i4;
import 'package:app/shared/presentation/widgets/utility/empty_screens/patient_empty.screen.dart'
    as _i6;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthEmptyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthEmptyScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthScreen(
          key: args.key,
          authType: args.authType,
        ),
      );
    },
    BookAppointmentRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BookAppointmentScreen(),
      );
    },
    DocEmptyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DocEmptyScreen(),
      );
    },
    DocHomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DocHomeScreen(),
      );
    },
    PatientEmptyRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PatientEmptyScreen(),
      );
    },
    PatientHomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PatientHomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthEmptyScreen]
class AuthEmptyRoute extends _i8.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i8.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i9.Key? key,
    String authType = "login",
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            authType: authType,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i8.PageInfo<AuthRouteArgs> page =
      _i8.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.authType = "login",
  });

  final _i9.Key? key;

  final String authType;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, authType: $authType}';
  }
}

/// generated route for
/// [_i3.BookAppointmentScreen]
class BookAppointmentRoute extends _i8.PageRouteInfo<void> {
  const BookAppointmentRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BookAppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookAppointmentRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DocEmptyScreen]
class DocEmptyRoute extends _i8.PageRouteInfo<void> {
  const DocEmptyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DocEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocEmptyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DocHomeScreen]
class DocHomeRoute extends _i8.PageRouteInfo<void> {
  const DocHomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DocHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocHomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PatientEmptyScreen]
class PatientEmptyRoute extends _i8.PageRouteInfo<void> {
  const PatientEmptyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PatientEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientEmptyRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PatientHomeScreen]
class PatientHomeRoute extends _i8.PageRouteInfo<void> {
  const PatientHomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PatientHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientHomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

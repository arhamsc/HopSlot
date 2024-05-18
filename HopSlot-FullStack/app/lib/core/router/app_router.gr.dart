// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/main/domain/entities/appointment/appointment.model.dart'
    as _i18;
import 'package:app/main/domain/entities/appointment_detail/appointment_detail.model.dart'
    as _i19;
import 'package:app/main/domain/entities/doctor_slot/doctor_slot.model.dart'
    as _i17;
import 'package:app/main/presentation/auth/screens/auth.screen.dart' as _i4;
import 'package:app/main/presentation/doctor/screens/appointment_history.screen.dart'
    as _i2;
import 'package:app/main/presentation/doctor/screens/doc_home.screen.dart'
    as _i7;
import 'package:app/main/presentation/doctor/screens/edit_slot.screen.dart'
    as _i8;
import 'package:app/main/presentation/doctor/screens/issue_prescription.screen.dart'
    as _i9;
import 'package:app/main/presentation/doctor/screens/my_slots.screen.dart'
    as _i10;
import 'package:app/main/presentation/patient/screens/all_appointments.screen.dart'
    as _i1;
import 'package:app/main/presentation/patient/screens/book_appointment.screen.dart'
    as _i5;
import 'package:app/main/presentation/patient/screens/my_prescription.screen.dart'
    as _i11;
import 'package:app/main/presentation/patient/screens/patient_home.screen.dart'
    as _i13;
import 'package:app/shared/presentation/screens/profile.screen.dart' as _i14;
import 'package:app/shared/presentation/widgets/utility/empty_screens/auth_empty.screen.dart'
    as _i3;
import 'package:app/shared/presentation/widgets/utility/empty_screens/doctor_empty.screen.dart'
    as _i6;
import 'package:app/shared/presentation/widgets/utility/empty_screens/patient_empty.screen.dart'
    as _i12;
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AllAppointmentsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllAppointmentsScreen(),
      );
    },
    AppointmentHistoryRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AppointmentHistoryScreen(),
      );
    },
    AuthEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthEmptyScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.AuthScreen(
          key: args.key,
          authType: args.authType,
        ),
      );
    },
    BookAppointmentRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.BookAppointmentScreen(),
      );
    },
    DocEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DocEmptyScreen(),
      );
    },
    DocHomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.DocHomeScreen(),
      );
    },
    EditSlotRoute.name: (routeData) {
      final args = routeData.argsAs<EditSlotRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.EditSlotScreen(
          key: args.key,
          doctorSlot: args.doctorSlot,
          isEdit: args.isEdit,
        ),
      );
    },
    IssuePrescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<IssuePrescriptionRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.IssuePrescriptionScreen(
          key: args.key,
          appointment: args.appointment,
        ),
      );
    },
    MyDocSlotsRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyDocSlotsScreen(),
      );
    },
    MyPrescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<MyPrescriptionRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.MyPrescriptionScreen(
          key: args.key,
          appointmentDetail: args.appointmentDetail,
        ),
      );
    },
    PatientEmptyRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PatientEmptyScreen(),
      );
    },
    PatientHomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PatientHomeScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllAppointmentsScreen]
class AllAppointmentsRoute extends _i15.PageRouteInfo<void> {
  const AllAppointmentsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AllAppointmentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllAppointmentsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppointmentHistoryScreen]
class AppointmentHistoryRoute extends _i15.PageRouteInfo<void> {
  const AppointmentHistoryRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AppointmentHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppointmentHistoryRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthEmptyScreen]
class AuthEmptyRoute extends _i15.PageRouteInfo<void> {
  const AuthEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AuthEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AuthScreen]
class AuthRoute extends _i15.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i16.Key? key,
    String authType = "login",
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            authType: authType,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i15.PageInfo<AuthRouteArgs> page =
      _i15.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.authType = "login",
  });

  final _i16.Key? key;

  final String authType;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, authType: $authType}';
  }
}

/// generated route for
/// [_i5.BookAppointmentScreen]
class BookAppointmentRoute extends _i15.PageRouteInfo<void> {
  const BookAppointmentRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BookAppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookAppointmentRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DocEmptyScreen]
class DocEmptyRoute extends _i15.PageRouteInfo<void> {
  const DocEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DocEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DocHomeScreen]
class DocHomeRoute extends _i15.PageRouteInfo<void> {
  const DocHomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DocHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DocHomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.EditSlotScreen]
class EditSlotRoute extends _i15.PageRouteInfo<EditSlotRouteArgs> {
  EditSlotRoute({
    _i16.Key? key,
    required _i17.DoctorSlot doctorSlot,
    required bool isEdit,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          EditSlotRoute.name,
          args: EditSlotRouteArgs(
            key: key,
            doctorSlot: doctorSlot,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'EditSlotRoute';

  static const _i15.PageInfo<EditSlotRouteArgs> page =
      _i15.PageInfo<EditSlotRouteArgs>(name);
}

class EditSlotRouteArgs {
  const EditSlotRouteArgs({
    this.key,
    required this.doctorSlot,
    required this.isEdit,
  });

  final _i16.Key? key;

  final _i17.DoctorSlot doctorSlot;

  final bool isEdit;

  @override
  String toString() {
    return 'EditSlotRouteArgs{key: $key, doctorSlot: $doctorSlot, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i9.IssuePrescriptionScreen]
class IssuePrescriptionRoute
    extends _i15.PageRouteInfo<IssuePrescriptionRouteArgs> {
  IssuePrescriptionRoute({
    _i16.Key? key,
    required _i18.Appointment appointment,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          IssuePrescriptionRoute.name,
          args: IssuePrescriptionRouteArgs(
            key: key,
            appointment: appointment,
          ),
          initialChildren: children,
        );

  static const String name = 'IssuePrescriptionRoute';

  static const _i15.PageInfo<IssuePrescriptionRouteArgs> page =
      _i15.PageInfo<IssuePrescriptionRouteArgs>(name);
}

class IssuePrescriptionRouteArgs {
  const IssuePrescriptionRouteArgs({
    this.key,
    required this.appointment,
  });

  final _i16.Key? key;

  final _i18.Appointment appointment;

  @override
  String toString() {
    return 'IssuePrescriptionRouteArgs{key: $key, appointment: $appointment}';
  }
}

/// generated route for
/// [_i10.MyDocSlotsScreen]
class MyDocSlotsRoute extends _i15.PageRouteInfo<void> {
  const MyDocSlotsRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MyDocSlotsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyDocSlotsRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MyPrescriptionScreen]
class MyPrescriptionRoute extends _i15.PageRouteInfo<MyPrescriptionRouteArgs> {
  MyPrescriptionRoute({
    _i16.Key? key,
    required _i19.AppointmentDetail appointmentDetail,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MyPrescriptionRoute.name,
          args: MyPrescriptionRouteArgs(
            key: key,
            appointmentDetail: appointmentDetail,
          ),
          initialChildren: children,
        );

  static const String name = 'MyPrescriptionRoute';

  static const _i15.PageInfo<MyPrescriptionRouteArgs> page =
      _i15.PageInfo<MyPrescriptionRouteArgs>(name);
}

class MyPrescriptionRouteArgs {
  const MyPrescriptionRouteArgs({
    this.key,
    required this.appointmentDetail,
  });

  final _i16.Key? key;

  final _i19.AppointmentDetail appointmentDetail;

  @override
  String toString() {
    return 'MyPrescriptionRouteArgs{key: $key, appointmentDetail: $appointmentDetail}';
  }
}

/// generated route for
/// [_i12.PatientEmptyScreen]
class PatientEmptyRoute extends _i15.PageRouteInfo<void> {
  const PatientEmptyRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PatientEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientEmptyRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PatientHomeScreen]
class PatientHomeRoute extends _i15.PageRouteInfo<void> {
  const PatientHomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PatientHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientHomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i15.PageRouteInfo<void> {
  const ProfileRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

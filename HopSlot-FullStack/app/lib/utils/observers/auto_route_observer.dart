import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

class TalkerAutoRouteObserver extends AutoRouterObserver {
  late final Talker _talker;

  TalkerAutoRouteObserver({required Talker talker}) : _talker = talker;

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);
    _talker.logTyped(AutoRouteTalkerLog(
      tabRoute: route,
      tabPrevRoute: previousRoute,
      type: "tab",
      isTabInit: false,
    ));
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);

    _talker.logTyped(AutoRouteTalkerLog(
      tabRoute: route,
      tabPrevRoute: previousRoute,
      type: "tab",
      isTabInit: true,
    ));
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);

    if (route.settings.name == null) {
      return;
    }

    _talker.logTyped(AutoRouteTalkerLog(
      route: route,
      prevRoute: previousRoute,
      type: "page",
      isPush: false,
    ));
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);

    if (route.settings.name == null) {
      return;
    }

    _talker.logTyped(AutoRouteTalkerLog(
      route: route,
      prevRoute: previousRoute,
      type: "page",
      isPush: true,
    ));
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);

    if (route.settings.name == null) {
      return;
    }

    _talker.logTyped(AutoRouteTalkerLog(
      route: route,
      prevRoute: previousRoute,
      type: "remove",
      isRemoved: true,
    ));
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);

    if (newRoute?.settings.name == null) {
      return;
    }

    _talker.logTyped(AutoRouteTalkerLog(
      route: newRoute,
      prevRoute: oldRoute,
      type: "replace",
      isReplace: true,
    ));
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    super.didStartUserGesture(route, previousRoute);

    if (route.settings.name == null) {
      return;
    }

    _talker.logTyped(AutoRouteTalkerLog(
      route: route,
      prevRoute: previousRoute,
      type: "gesture",
      userGestureStart: true,
    ));
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();

    _talker.logTyped(AutoRouteTalkerLog(
      type: "gesture",
      userGestureEnd: true,
    ));
  }
}

class AutoRouteTalkerLog extends TalkerLog {
  AutoRouteTalkerLog({
    required String type,
    Route? route,
    TabPageRoute? tabRoute,
    TabPageRoute? tabPrevRoute,
    Route? prevRoute,
    bool isPush = false,
    bool isChangeTab = false,
    bool isTabInit = false,
    bool isReplace = false,
    bool isRemoved = false,
    bool userGestureStart = false,
    bool userGestureEnd = false,
  }) : super(
          _createMessage(
            route,
            prevRoute,
            tabRoute,
            tabPrevRoute,
            type,
            isPush,
            isTabInit,
            userGestureStart,
            userGestureEnd,
          ),
        );

  @override
  String? get title => "auto_route_log";

  @override
  AnsiPen? get pen => AnsiPen()..xterm(135);

  static String _createMessage(
    Route? prevRoute,
    Route<dynamic>? route,
    TabPageRoute? tabRoute,
    TabPageRoute? tabPrevRoute,
    String type,
    bool isPush,
    bool isTabInit,
    bool userGestureStart,
    bool userGestureEnd,
  ) {
    final buffer = StringBuffer();

    if (type == "page") {
      buffer.write(isPush ? 'Open' : 'Close');
      buffer.write(' route named ');
      buffer.write(prevRoute?.settings.name ?? 'null');
    } else if (type == "tab") {
      buffer.write(isTabInit ? 'Change' : 'Init');
      buffer.write(' tab named ');
      buffer.write(tabRoute?.name ?? 'null');
    } else if (type == "replace") {
      buffer.write('Replace');
      buffer.write(' route named ');
      buffer.write(route?.settings.name ?? 'null');
    } else if (type == "remove") {
      buffer.write('Remove');
      buffer.write(' route named ');
      buffer.write(route?.settings.name ?? 'null');
    } else if (type == "gesture") {
      buffer
          .write(userGestureStart ? 'User gesture start' : 'User gesture end');
    }

    if (prevRoute != null) {
      buffer.write(' from route named ');
      buffer
          .write((type == "page" ? route : prevRoute)?.settings.name ?? 'null');
    } else if (tabPrevRoute != null) {
      buffer.write(' from tab named ');
      buffer.write(tabPrevRoute.name);
    }

    final args = type == "page" ? prevRoute?.settings.arguments : route?.settings.arguments;
    if (args != null) {
      buffer.write('\nArguments: $args');
    }
    return buffer.toString();
  }
}

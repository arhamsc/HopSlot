import 'package:app/shared/presentation/widgets/layout/listeners/snack_bar.listener.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CScaffold extends StatelessWidget {
  CScaffold({
    super.key,
    required this.body,
    this.topGradient = true,
    this.bottomGradient = false,
    this.requireKeyboardPadding = false,
    this.noTopPadding = true,
    this.showBottomNavigation,
    this.tabsRouter,
    this.showAppBar = false,
    this.appBarTitle,
    this.appBarAvatar,
  });

  final Widget body;
  final bool topGradient;
  final bool bottomGradient;
  final bool requireKeyboardPadding;
  final bool noTopPadding;
  final bool? showBottomNavigation;
  final TabsRouter? tabsRouter;
  final bool showAppBar;
  final Widget? appBarTitle;
  final String? appBarAvatar;

  final sU = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    assert(
      showBottomNavigation == null || tabsRouter != null,
      "showBottomNavigation and tabsRouter must be provided together",
    );

    assert(
      showAppBar == false || appBarTitle != null,
      "showAppBar and appBarTitle must be provided together",
    );
    return Scaffold(
      appBar: showAppBar ? AppBar() : null,
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Home"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: SnackBarListener(
        child: SizedBox(
          height: sU.screenHeight,
          width: sU.screenWidth,
          child: KeyboardVisibilityBuilder(
            builder: (context, isKeyboardVisible) {
              return PopScope(
                canPop: !isKeyboardVisible,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: noTopPadding ? 0.h : 36.h,
                  ),
                  child: !requireKeyboardPadding
                      ? body
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: sU.screenHeight, child: body),
                              if (isKeyboardVisible)
                                Gap(
                                  MediaQuery.of(context).viewInsets.bottom,
                                ),
                            ],
                          ),
                        ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/shared/presentation/widgets/layout/listeners/snack_bar.listener.dart';
import 'package:app/shared/presentation/widgets/layout/patient_drawer.layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CScaffold extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    assert(
      showBottomNavigation == null || tabsRouter != null,
      "showBottomNavigation and tabsRouter must be provided together",
    );

    assert(
      showAppBar == false || appBarTitle != null,
      "showAppBar and appBarTitle must be provided together",
    );

    final user = ref.watch(userNotifierProvider);

    return Scaffold(
      appBar: showAppBar ? AppBar() : null,
      drawer: user.role == 'PATIENT' ? const PatientDrawer() : null,
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

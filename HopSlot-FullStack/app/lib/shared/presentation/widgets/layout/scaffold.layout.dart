import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/shared/presentation/widgets/layout/doctor_drawer.layout.dart';
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
    this.requireKeyboardPadding = false,
    this.noTopPadding = true,
    this.showAppBar = false,
    this.extendBodyBehindAppBar = false,
    this.noHorizontalPadding = false,
  });

  final Widget body;
  final bool requireKeyboardPadding;
  final bool noTopPadding;
  final bool showAppBar;
  final bool extendBodyBehindAppBar;
  final bool noHorizontalPadding;

  final sU = ScreenUtil();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);

    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      appBar: showAppBar
          ? AppBar(
              backgroundColor: Colors.transparent,
            )
          : null,
      drawer: user.role == 'PATIENT'
          ? const PatientDrawer()
          : user.role == "DOCTOR"
              ? const DoctorDrawer()
              : null,
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
                    left: noHorizontalPadding ? 0 : 16.w,
                    right: noHorizontalPadding ? 0 : 16.w,
                    top: noTopPadding ? 0.h : 36.h,
                  ),
                  child: !requireKeyboardPadding
                      ? body
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                  height: sU.screenHeight -
                                      (showAppBar ? 100.h : 0),
                                  child: body),
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

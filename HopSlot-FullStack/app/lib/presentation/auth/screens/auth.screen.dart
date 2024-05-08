import 'package:app/presentation/auth/widgets/login_form.widget.dart';
import 'package:app/presentation/auth/widgets/sign_up_form.widget.dart';
import 'package:app/shared/presentation/shared/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/shared/widgets/ui/typography/headline.typo.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key, this.authType = "login"});

  final String authType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CScaffold(
      requireKeyboardPadding: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(96.h),
              Text(authType == "login" ? 'Login' : "Sign Up").headline3(),
            ],
          ),
          if (authType == "login")
            Expanded(
              child: SvgPicture.asset(
                'assets/logos/hopslot_bg_white.svg',
                width: 300.w,
                height: 300.h,
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (authType == "login")
                const LoginFormWidget()
              else
                const SignUpFormWidget(),
              Gap(40.h),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:app/core/constants/enums.dart';
import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/presentation/auth/controllers/auth.controller.dart';
import 'package:app/main/presentation/auth/widgets/login_form.widget.dart';
import 'package:app/main/presentation/auth/widgets/sign_up_form.widget.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/widgets/layout/scaffold.layout.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/show_snack_bar_on_error.ext.dart';
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
    ref.listen(authControllerProvider, (previous, next) {
      if (!next.isLoading && next.hasError) {
        next.showSnackbarOnAppError(context, ref);
      } else if (next.hasValue && next.value != null) {
        if (next.value!.role == "PATIENT") {
          ref.read(appRouterProvider).pushAndPopUntil(const PatientHomeRoute(),
              predicate: (_) => false);
        } else if (next.value!.role == "DOCTOR") {
          ref
              .read(appRouterProvider)
              .pushAndPopUntil(const DocHomeRoute(), predicate: (_) => false);
        } else {
          ref.read(snackBarMessengerProvider.notifier).showSnackBar(
                message: "Role not yet implemented, stay tuned!!",
                type: SnackbarType.warning,
              );
        }
      }
    });
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

import 'package:app/core/router/app_router.dart';
import 'package:app/core/router/app_router.gr.dart';
import 'package:app/main/presentation/auth/controllers/auth.controller.dart';
import 'package:app/shared/presentation/forms/auth.form.dart';
import 'package:app/shared/presentation/providers/forms.providers.dart';
import 'package:app/shared/presentation/shared/widgets/ui/buttons/button.ui.dart';
import 'package:app/shared/presentation/shared/widgets/ui/inputs/c_text_field.ui.dart';
import 'package:app/shared/presentation/shared/widgets/utility/styles/variants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginFormWidget extends ConsumerWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerState = ref.watch(authControllerProvider);
    return LoginFormFormBuilder(
      model: ref.watch(loginFormProvider),
      builder: (context, form, _) {
        return Column(
          children: [
            CTextField(
              formControlName: form.identityControlPath(),
              placeholder: "username/email",
            ),
            Gap(16.h),
            CTextField(
              formControlName: form.passwordControlPath(),
              placeholder: "password",
              obscureText: true,
            ),
            Gap(46.h),
            ReactiveLoginFormFormConsumer(builder: (context, form, _) {
              return CButton(
                onPressed: controllerState.isLoading
                    ? null
                    : () {
                        form.submit(onValid: (value) {
                          ref
                              .read(authControllerProvider.notifier)
                              .login(value.identity!, value.password!);
                        });
                      },
                buttonText:
                    controllerState.isLoading ? 'Logging in....' : 'Login',
              );
            }),
            Gap(16.h),
            CButton(
              onPressed: controllerState.isLoading
                  ? null
                  : () {
                      ref
                          .read(appRouterProvider)
                          .replace(AuthRoute(authType: 'signup'));
                    },
              variant: ButtonVariants.secondary,
              buttonText: 'Sign Up',
            ),
          ],
        );
      },
    );
  }
}

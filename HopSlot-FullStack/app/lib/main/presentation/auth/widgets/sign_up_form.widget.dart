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

class SignUpFormWidget extends ConsumerWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);
    return SignUpFormFormBuilder(
      model: ref.watch(signUpFormProvider),
      builder: (context, form, _) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ...getFormFields(form).map(
                (e) => Column(
                  children: [
                    CTextField(
                      formControlName: e['formControlName'],
                      placeholder: e['placeholder'],
                      obscureText: e['obscureText'] ?? false,
                    ),
                    Gap(16.h),
                  ],
                ),
              ),
              Gap(46.h),
              ReactiveSignUpFormFormConsumer(builder: (context, form, _) {
                return CButton(
                  onPressed: authState.isLoading
                      ? null
                      : () {
                          form.submit(onValid: (value) {
                            ref.read(authControllerProvider.notifier).signUp(
                                  email: value.email!,
                                  password: value.password!,
                                  firstName: value.firstName!,
                                  lastName: value.lastName!,
                                  username: value.username!,
                                  age: value.age!,
                                );
                          });
                        },
                  buttonText: authState.isLoading
                      ? 'Creating your account..'
                      : 'Sign Up',
                );
              }),
              Gap(16.h),
              CButton(
                onPressed: authState.isLoading
                    ? null
                    : () {
                        ref
                            .read(appRouterProvider)
                            .replace(AuthRoute(authType: 'login'));
                      },
                variant: ButtonVariants.secondary,
                buttonText: 'Login',
              ),
            ],
          ),
        );
      },
    );
  }

  List<Map<String, dynamic>> getFormFields(SignUpFormForm form) {
    return [
      {
        'formControlName': form.firstNameControlPath(),
        'placeholder': 'first name',
      },
      {
        'formControlName': form.lastNameControlPath(),
        'placeholder': 'last name',
      },
      {
        'formControlName': form.usernameControlPath(),
        'placeholder': 'username',
      },
      {
        'formControlName': form.emailControlPath(),
        'placeholder': 'email',
      },
      {
        'formControlName': form.ageControlPath(),
        'placeholder': 'age',
      },
      {
        'formControlName': form.passwordControlPath(),
        'placeholder': 'password',
        'obscureText': true,
      },
    ];
  }
}

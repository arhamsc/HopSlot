import 'package:app/shared/presentation/forms/auth.form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'forms.providers.g.dart';

@riverpod
LoginForm loginForm(LoginFormRef ref) {
  return const LoginForm();
}

@riverpod
SignUpForm signUpForm(SignUpFormRef ref) {
  return const SignUpForm();
}
import 'package:app/main/data/providers/repo_providers/repo.providers.dart';
import 'package:app/main/domain/use_cases/auth_ucs/login.uc.dart';
import 'package:app/main/domain/use_cases/auth_ucs/logout.uc.dart';
import 'package:app/main/domain/use_cases/auth_ucs/sign_up.uc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'use_case.provides.g.dart';

@riverpod
LoginUC loginUC(LoginUCRef ref) {
  return LoginUC(ref.watch(authRepoProvider), ref);
}

@riverpod
SignUpUC signUpUC(SignUpUCRef ref) {
  return SignUpUC(ref.watch(authRepoProvider), ref);
}

@riverpod
LogoutUC logoutUC(LogoutUCRef ref) {
  return LogoutUC(ref.watch(authRepoProvider), ref);
}

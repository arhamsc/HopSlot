import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/domain/models/user/user.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<User?> build() async {
    return null;
  }

  Future<void> login(String email, String password) async {
    final uc = ref.read(loginUCProvider);
    state = const AsyncLoading();
    final res = await uc.call(email, password);
    state = res.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncValue.data(r),
    );
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String username,
    required int age,
  }) async {
    final uc = ref.read(signUpUCProvider);
    state = const AsyncLoading();
    final res = await uc.call(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      username: username,
      age: age,
    );
    state = res.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncValue.data(r),
    );
  }
}

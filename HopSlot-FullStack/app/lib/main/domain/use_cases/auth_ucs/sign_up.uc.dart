import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/domain/models/entities/user/user.model.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/utils/exceptions/auth_exception.dart';
import 'package:fpdart/fpdart.dart';

class SignUpUC {
  final AuthRepo _authRepository;
  final SignUpUCRef ref;

  SignUpUC(this._authRepository, this.ref);

  Future<Either<AuthExceptions, User>> call({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String username,
    required int age,
    String? fcmToken,
  }) async {
    final res = await _authRepository
        .patientSignUp(
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
          username: username,
          age: age,
          fcmToken: fcmToken,
        )
        .run();
    return res.fold((l) => left(l), (r) {
      ref.read(userNotifierProvider.notifier).update(r);
      return right(r);
    });
  }
}

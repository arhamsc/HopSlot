import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/shared/domain/models/entities/user/user.model.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/utils/exceptions/auth_exception.dart';
import 'package:fpdart/fpdart.dart';

class LoginUC {
  final AuthRepo _authRepository;
  final LoginUCRef ref;

  LoginUC(this._authRepository, this.ref);

  Future<Either<AuthExceptions, User>> call(
      String email, String password) async {
    final result = await _authRepository.login(email, password).run();
    return result.fold((l) => left(l), (r) {
      ref.read(userNotifierProvider.notifier).update(r);
      return right(r);
    });
  }
}

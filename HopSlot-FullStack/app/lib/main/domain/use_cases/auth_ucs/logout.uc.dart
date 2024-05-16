import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:app/utils/exceptions/auth_exception.dart';
import 'package:fpdart/fpdart.dart';

class LogoutUC {
  final AuthRepo _authRepository;
  final LogoutUCRef ref;

  LogoutUC(this._authRepository, this.ref);

  Future<Either<AuthExceptions, void>> call() async {
    final result = await _authRepository.logout().run();
    return result.fold((l) => left(l), (r) {
      ref.read(userNotifierProvider.notifier).setNull();
      return right(r);
    });
  }
}

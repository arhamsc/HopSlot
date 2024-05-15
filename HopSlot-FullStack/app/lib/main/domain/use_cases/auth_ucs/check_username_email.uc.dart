import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class CheckUsernameEmailUC {
  final AuthRepo _authRepository;

  CheckUsernameEmailUC(this._authRepository);

  Future<Either<AppException, bool>> callUsernameCheck(String username) async {
    final result = await _authRepository
        .checkUsernameOrEmail(
          username: username,
        )
        .run();

    return result.fold(
      (l) => left(l),
      (r) => right(r.data!),
    );
  }

  Future<Either<AppException, bool>> callEmailCheck(String email) async {
    final result = await _authRepository
        .checkUsernameOrEmail(
          email: email,
        )
        .run();

    return result.fold(
      (l) => left(l),
      (r) => right(r.data!),
    );
  }
}

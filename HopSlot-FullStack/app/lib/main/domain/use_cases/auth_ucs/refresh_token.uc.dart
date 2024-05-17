import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/main/domain/helpers/tokens/tokens.model.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class RefreshTokenUC {
  final AuthRepo _authRepo;

  RefreshTokenUC(this._authRepo);

  Future<Either<AppException, Tokens>> call(String refreshToken) async {
    final res = await _authRepo.refreshToken(refreshToken).run();

    return res.fold((l) => left(l), (r) => right(r));
  }
}

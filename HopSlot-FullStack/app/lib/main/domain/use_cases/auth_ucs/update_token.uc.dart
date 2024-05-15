import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class UpdateTokenUC {
  final AuthRepo _authRepo;

  UpdateTokenUC(this._authRepo);

  Future<Either<AppException, String>> call(String token) async {
    final response = await _authRepo.updateToken(token).run();
    return response.fold((l) => left(l), (r) => right(r.message));
  }
}

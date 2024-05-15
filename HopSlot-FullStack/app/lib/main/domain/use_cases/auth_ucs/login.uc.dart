import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/use_cases/doc_use_cases/get_doc_details.uc.dart';
import 'package:app/shared/domain/models/entities/user/user.model.dart';
import 'package:app/shared/domain/providers/doctor_provider/doctor.provider.dart';
import 'package:app/shared/domain/providers/user_provider/user.provider.dart';
import 'package:app/utils/exceptions/auth_exception.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fpdart/fpdart.dart';

class LoginUC {
  final AuthRepo _authRepository;
  final LoginUCRef ref;
  final GetDocDetailsUseCase _doc;

  LoginUC(this._authRepository, this.ref, this._doc);

  Future<Either<AuthExceptions, User>> call(
      String email, String password) async {
    final result = await _authRepository.login(email, password).run();
    return result.fold((l) => left(l), (r) async {
      final token = await FirebaseMessaging.instance.getToken();
      ref.read(updateTokenUCProvider).call(token ?? "");
      ref
          .read(userNotifierProvider.notifier)
          .update(r.copyWith(fcmToken: token));
      return right(r);
    });
  }
}

import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/helpers/tokens/tokens.model.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:app/main/domain/use_cases/auth_ucs/refresh_token.uc.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

class RefreshTokenHandler {
  final RefreshTokenUC _refreshTokenUC;
  final User _user;
  final UserNotifier _userNotifier;

  RefreshTokenHandler(
    this._refreshTokenUC,
    this._user,
    this._userNotifier,
  );

  Future<Either<AppException, Tokens>> handle() async {
    final refreshToken = _user.tokens.rt;

    final response = await _refreshTokenUC.call(refreshToken);

    return response.fold((l) {
      print("EXCEPTION: $l");
      // Triggers re-evaluating guards in the auto route
      _userNotifier.update(User.empty());
      return left(l);
    }, (r) {
      _userNotifier.update(_user.copyWith(
        tokens: r,
      ));
      print("New Tokens: $r, New User: $_user}");
      return right(r);
    });
  }

  void handleExpired() {
    _userNotifier.update(User.empty());
  }
}

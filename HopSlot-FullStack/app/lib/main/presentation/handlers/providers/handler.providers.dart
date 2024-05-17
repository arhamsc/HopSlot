import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:app/main/presentation/handlers/refresh_token.handler.dart';
import 'package:app/main/presentation/handlers/route_refresh.handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'handler.providers.g.dart';

@Riverpod(keepAlive: true)
RouteRefreshHandler routeRefreshHandler(RouteRefreshHandlerRef ref) {
  return RouteRefreshHandler(ref);
}

@riverpod
RefreshTokenHandler refreshTokenHandler(RefreshTokenHandlerRef ref) {
  return RefreshTokenHandler(
    ref.read(refreshTokenUCProvider),
    ref.watch(userNotifierProvider),
    ref.read(userNotifierProvider.notifier),
  );
}

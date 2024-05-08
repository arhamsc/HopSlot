import 'package:app/core/api/app_api.dart';
import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo.providers.g.dart';

@riverpod
AuthRepo authRepo(AuthRepoRef ref) {
  final api = ref.watch(apiProvider).nestApi;
  return AuthRepo(api);
}

import 'package:app/core/logger/talker.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_api.g.dart';

@Riverpod(keepAlive: true)
API api(ApiRef ref) {
  return API(ref: ref);
}

class API {
  final Dio nestApi = Dio();
  final ApiRef ref;

  API({required this.ref}) {
    nestApi.options.baseUrl = dotenv.get("NEST_SERVER");
    nestApi.options.connectTimeout = const Duration(seconds: 5);
    nestApi.options.receiveTimeout = const Duration(seconds: 10);
    nestApi.interceptors.add(ref.read(talkerProvider).talkerDioLogger);
    nestApi.options.headers['Accept'] = "application/json";
    nestApi.options.headers['ContentType'] = "application/json";

    nestApi.options.headers['Authorization'] =
        'Bearer ${ref.watch(userNotifierProvider).tokens.at}';
  }

  String? _nestBearerToken;

  set nestBearerToken(String? token) {
    _nestBearerToken = token;
    nestApi.options.headers['Authorization'] = 'Bearer $_nestBearerToken';
  }
}

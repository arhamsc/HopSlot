import 'package:app/config/injectable/injectable.dart';
import 'package:app/core/logger/talker.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@singleton
class API {
  final Dio nestApi = Dio();

  API() {
    nestApi.options.baseUrl = dotenv.get("NEST_SERVER");
    nestApi.options.connectTimeout = const Duration(seconds: 5).inMilliseconds;
    nestApi.options.receiveTimeout = const Duration(seconds: 10).inMilliseconds;
    nestApi.interceptors.add(getIt.get<CTalker>().talkerDioLogger);
    nestApi.options.headers['Accept'] = "application/json";
    nestApi.options.headers['ContentType'] = "application/json";

    nestApi.options.headers['Authorization'] = 'Bearer $_nestBearerToken';
  }

  String? _nestBearerToken;

  set nestBearerToken(String? token) {
    _nestBearerToken = token;
    nestApi.options.headers['Authorization'] = 'Bearer $_nestBearerToken';
  }
}

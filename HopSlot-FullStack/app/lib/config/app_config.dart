import 'package:app/config/injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  Future<void> configureGetIt() async {
    await configureGetItDependencies();
  }

  Future<void> loadEnvs() async {
    await dotenv.load(fileName: ".env");
  }
}

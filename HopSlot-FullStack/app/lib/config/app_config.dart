
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {

  Future<void> loadEnvs() async {
    await dotenv.load(fileName: ".env");
  }
}

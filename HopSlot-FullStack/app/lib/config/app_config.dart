import 'package:app/shared/domain/models/entities/user/user.model.dart';
import 'package:app/shared/domain/models/helpers/tokens/tokens.model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AppConfig {
  Future<void> loadEnvs() async {
    await dotenv.load(fileName: ".env");
  }

  Future<void> configureHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(TokensAdapter());
    await Hive.openBox<User>('currentUser');
  }
}

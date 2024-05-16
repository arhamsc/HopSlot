import 'dart:async';

import 'package:app/firebase_options.dart';
import 'package:app/main/domain/entities/doctor/doctor.model.dart';
import 'package:app/main/domain/entities/patient/patient.model.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/helpers/tokens/tokens.model.dart';
import 'package:app/utils/get_position.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:geolocator/geolocator.dart';

class AppConfig {
  Future<void> loadEnvs() async {
    await dotenv.load(fileName: ".env");
  }

  Future<void> configureHive() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(TokensAdapter());
    Hive.registerAdapter(DoctorAdapter());
    Hive.registerAdapter(PatientAdapter());
    await Hive.openBox<User>('currentUser');
    await Hive.openBox<Doctor>('doctor');
    await Hive.openBox<Patient>('patient');
  }

  Future<void> configureGeoLocation() async {
    await determinePosition();
    LocationSettings locationSettings;

    if (defaultTargetPlatform == TargetPlatform.android) {
      locationSettings = AndroidSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 100,
          forceLocationManager: true,
          intervalDuration: const Duration(seconds: 10),
          //(Optional) Set foreground notification config to keep the app alive
          //when going to the background
          foregroundNotificationConfig: const ForegroundNotificationConfig(
            notificationText:
                "Hopslot app will continue to receive your location even when you aren't using it",
            notificationTitle: "Running in Background",
            enableWakeLock: true,
          ));
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.fitness,
        distanceFilter: 100,
        pauseLocationUpdatesAutomatically: true,
        // Only set to true if our app will be started up in the background.
        showBackgroundLocationIndicator: false,
      );
    } else {
      locationSettings = const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );
    }

    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) {
      print(position == null
          ? 'Unknown'
          : '${position.latitude.toString()}, ${position.longitude.toString()}');
    });
  }

  Future<void> configureFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  }
}

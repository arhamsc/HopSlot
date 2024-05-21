import 'dart:async';

import 'package:app/main/domain/providers/use_case_providers/use_case.provides.dart';
import 'package:app/main/domain/entities/user/user.model.dart';
import 'package:app/main/domain/providers/doctor_provider/doctor.provider.dart';
import 'package:app/main/domain/providers/user_provider/user.provider.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location.service.g.dart';

@Riverpod(keepAlive: true)
class LocationService extends _$LocationService {
  late final LocationSettings locationSettings;

  @override
  Future<void> build() async {
    await requestPermission();

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

    _init();
  }

  StreamSubscription<Position> _init() {
    final iAmLateUC = ref.read(iAmLateUCProvider);
    StreamSubscription<Position> positionStream =
        Geolocator.getPositionStream(locationSettings: locationSettings)
            .listen((Position? position) async {
      final user = ref.watch(userNotifierProvider);
      if (user == User.empty()) {
        return;
      }
      final closest = await iAmLateUC.callClosestAppointment();
      if (closest.isLeft()) {
        return;
      } else {
        final appointment = closest.getOrElse((l) => null);
        if (appointment == null) {
          return;
        }
        final doc = ref.read(doctorNotifierProvider);
        final distance = Geolocator.distanceBetween(
          position?.latitude ?? 0,
          position?.longitude ?? 0,
          doc.cabinLat,
          doc.cabinLng,
        );
        if (distance > 50 &&
            (appointment.appointmentStart
                        ?.difference(DateTime.now())
                        .inMinutes ??
                    0) <
                0) {
          await iAmLateUC.call();
        }
      }
    });
    return positionStream;
  }

  Future<void> requestPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
  }

  Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}

import 'package:app/utils/observers/talker_riverpod_observer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'talker.g.dart';

@riverpod
CTalker talker(TalkerRef ref) {
  return CTalker();
}

class CTalker {
  late final Talker talker;
  late final TalkerDioLogger talkerDioLogger;
  late final TalkerRiverpodObserver talkerRiverpodObserver;

  CTalker() {
    talker = TalkerFlutter.init();
    talkerDioLogger = TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
      ),
    );
    talkerRiverpodObserver = TalkerRiverpodObserver(talker: talker);
  }
}

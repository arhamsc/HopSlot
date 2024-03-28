import 'package:injectable/injectable.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';

@Singleton()
class CTalker {
  late final Talker talker;
  late final TalkerDioLogger talkerDioLogger;
  late final TalkerRouteObserver talkerRouteObserver;

  CTalker() {
    talker = Talker();
    talkerDioLogger = TalkerDioLogger(talker: talker);
    talkerRouteObserver = TalkerRouteObserver(talker);
  }
}

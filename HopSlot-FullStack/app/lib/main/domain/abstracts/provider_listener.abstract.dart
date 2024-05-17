import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class ProviderListener {
  final Ref ref;

  ProviderListener(this.ref) {
    listenToProvider();
  }

  void listenToProvider() {}
}

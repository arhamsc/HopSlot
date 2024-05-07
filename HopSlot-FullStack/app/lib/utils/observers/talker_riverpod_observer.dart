import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

class TalkerRiverpodObserver extends ProviderObserver {
  TalkerRiverpodObserver({required Talker talker}) : _talker = talker;

  late final Talker _talker;

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value,
      ProviderContainer container) {
    _talker.info(
        "[Provider added]: ${provider.name} \n Value: $value ${provider.argument != null ? '\nArguments: ${provider.argument}\n' : ''} ${provider.from != null ? 'From: ${provider.from}\n' : ''}");

    super.didAddProvider(provider, value, container);
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    _talker.warning(
        "[Provider disposed]: ${provider.name} ${provider.argument != null ? '\nArguments: ${provider.argument}\n' : ''} ${provider.from != null ? 'From: ${provider.from}\n' : ''}");

    super.didDisposeProvider(provider, container);
  }

  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    _talker.info(
        "[Provider updated]: ${provider.name} \n Previous Value: $previousValue \n New Value: $newValue ${provider.argument != null ? '\nArguments: ${provider.argument}\n' : ''} ${provider.from != null ? 'From: ${provider.from}\n' : ''}");

    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'interceptor.providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenExpiredInterceptorHash() =>
    r'f6ee8e539b8c894eb101b3c1d9f6507fd82f50f8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [tokenExpiredInterceptor].
@ProviderFor(tokenExpiredInterceptor)
const tokenExpiredInterceptorProvider = TokenExpiredInterceptorFamily();

/// See also [tokenExpiredInterceptor].
class TokenExpiredInterceptorFamily extends Family<TokenExpiredInterceptor> {
  /// See also [tokenExpiredInterceptor].
  const TokenExpiredInterceptorFamily();

  /// See also [tokenExpiredInterceptor].
  TokenExpiredInterceptorProvider call(
    Dio dio,
  ) {
    return TokenExpiredInterceptorProvider(
      dio,
    );
  }

  @override
  TokenExpiredInterceptorProvider getProviderOverride(
    covariant TokenExpiredInterceptorProvider provider,
  ) {
    return call(
      provider.dio,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tokenExpiredInterceptorProvider';
}

/// See also [tokenExpiredInterceptor].
class TokenExpiredInterceptorProvider
    extends AutoDisposeProvider<TokenExpiredInterceptor> {
  /// See also [tokenExpiredInterceptor].
  TokenExpiredInterceptorProvider(
    Dio dio,
  ) : this._internal(
          (ref) => tokenExpiredInterceptor(
            ref as TokenExpiredInterceptorRef,
            dio,
          ),
          from: tokenExpiredInterceptorProvider,
          name: r'tokenExpiredInterceptorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tokenExpiredInterceptorHash,
          dependencies: TokenExpiredInterceptorFamily._dependencies,
          allTransitiveDependencies:
              TokenExpiredInterceptorFamily._allTransitiveDependencies,
          dio: dio,
        );

  TokenExpiredInterceptorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dio,
  }) : super.internal();

  final Dio dio;

  @override
  Override overrideWith(
    TokenExpiredInterceptor Function(TokenExpiredInterceptorRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TokenExpiredInterceptorProvider._internal(
        (ref) => create(ref as TokenExpiredInterceptorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dio: dio,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<TokenExpiredInterceptor> createElement() {
    return _TokenExpiredInterceptorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenExpiredInterceptorProvider && other.dio == dio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dio.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TokenExpiredInterceptorRef
    on AutoDisposeProviderRef<TokenExpiredInterceptor> {
  /// The parameter `dio` of this provider.
  Dio get dio;
}

class _TokenExpiredInterceptorProviderElement
    extends AutoDisposeProviderElement<TokenExpiredInterceptor>
    with TokenExpiredInterceptorRef {
  _TokenExpiredInterceptorProviderElement(super.provider);

  @override
  Dio get dio => (origin as TokenExpiredInterceptorProvider).dio;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

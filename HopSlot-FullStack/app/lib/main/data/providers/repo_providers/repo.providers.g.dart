// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'repo.providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepoHash() => r'42cba55aa1302aa9371b026e00c06c28de4a3be5';

/// See also [authRepo].
@ProviderFor(authRepo)
final authRepoProvider = AutoDisposeProvider<AuthRepo>.internal(
  authRepo,
  name: r'authRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepoRef = AutoDisposeProviderRef<AuthRepo>;
String _$appointmentsRepoHash() => r'ab54cffc42b484442847bfba677c5fd850f528f2';

/// See also [appointmentsRepo].
@ProviderFor(appointmentsRepo)
final appointmentsRepoProvider = AutoDisposeProvider<AppointmentsRepo>.internal(
  appointmentsRepo,
  name: r'appointmentsRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appointmentsRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppointmentsRepoRef = AutoDisposeProviderRef<AppointmentsRepo>;
String _$appointmentLookupRepoHash() =>
    r'69cfce96171210471e37dbd886849292fecbd9f3';

/// See also [appointmentLookupRepo].
@ProviderFor(appointmentLookupRepo)
final appointmentLookupRepoProvider =
    AutoDisposeProvider<AppointmentLookupRepo>.internal(
  appointmentLookupRepo,
  name: r'appointmentLookupRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appointmentLookupRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppointmentLookupRepoRef
    = AutoDisposeProviderRef<AppointmentLookupRepo>;
String _$docInfoRepoHash() => r'beefe29e417cd9621d8e497c923c14e7f14ab615';

/// See also [docInfoRepo].
@ProviderFor(docInfoRepo)
final docInfoRepoProvider = AutoDisposeProvider<DocInfoRepo>.internal(
  docInfoRepo,
  name: r'docInfoRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$docInfoRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DocInfoRepoRef = AutoDisposeProviderRef<DocInfoRepo>;
String _$docRepoHash() => r'2e4cb1d67da8f9dd49c93e61f0aae4c527714c9d';

/// See also [docRepo].
@ProviderFor(docRepo)
final docRepoProvider = AutoDisposeProvider<DocRepo>.internal(
  docRepo,
  name: r'docRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$docRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DocRepoRef = AutoDisposeProviderRef<DocRepo>;
String _$prescriptionRepoHash() => r'b5c8592aff1405ec3407296b2d58fecdc6675beb';

/// See also [prescriptionRepo].
@ProviderFor(prescriptionRepo)
final prescriptionRepoProvider = AutoDisposeProvider<PrescriptionRepo>.internal(
  prescriptionRepo,
  name: r'prescriptionRepoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$prescriptionRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PrescriptionRepoRef = AutoDisposeProviderRef<PrescriptionRepo>;
String _$patientRepoHash() => r'97cb10af1bff798018f79df504ba0f091dc52d92';

/// See also [patientRepo].
@ProviderFor(patientRepo)
final patientRepoProvider = AutoDisposeProvider<PatientRepo>.internal(
  patientRepo,
  name: r'patientRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$patientRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PatientRepoRef = AutoDisposeProviderRef<PatientRepo>;
String _$docSlotRepoHash() => r'bbe27cd7f8b33c28cafd78db9e8e9d59b264bd50';

/// See also [docSlotRepo].
@ProviderFor(docSlotRepo)
final docSlotRepoProvider = AutoDisposeProvider<DocSlotRepo>.internal(
  docSlotRepo,
  name: r'docSlotRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$docSlotRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DocSlotRepoRef = AutoDisposeProviderRef<DocSlotRepo>;
String _$flutterLocalNotificationRepoHash() =>
    r'90bc4b28f6349b90a39981763fa28375e8395b55';

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

/// See also [flutterLocalNotificationRepo].
@ProviderFor(flutterLocalNotificationRepo)
const flutterLocalNotificationRepoProvider =
    FlutterLocalNotificationRepoFamily();

/// See also [flutterLocalNotificationRepo].
class FlutterLocalNotificationRepoFamily
    extends Family<FlutterLocalNotificationRepo> {
  /// See also [flutterLocalNotificationRepo].
  const FlutterLocalNotificationRepoFamily();

  /// See also [flutterLocalNotificationRepo].
  FlutterLocalNotificationRepoProvider call(
    FlutterLocalNotificationsPlugin plugin,
  ) {
    return FlutterLocalNotificationRepoProvider(
      plugin,
    );
  }

  @override
  FlutterLocalNotificationRepoProvider getProviderOverride(
    covariant FlutterLocalNotificationRepoProvider provider,
  ) {
    return call(
      provider.plugin,
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
  String? get name => r'flutterLocalNotificationRepoProvider';
}

/// See also [flutterLocalNotificationRepo].
class FlutterLocalNotificationRepoProvider
    extends AutoDisposeProvider<FlutterLocalNotificationRepo> {
  /// See also [flutterLocalNotificationRepo].
  FlutterLocalNotificationRepoProvider(
    FlutterLocalNotificationsPlugin plugin,
  ) : this._internal(
          (ref) => flutterLocalNotificationRepo(
            ref as FlutterLocalNotificationRepoRef,
            plugin,
          ),
          from: flutterLocalNotificationRepoProvider,
          name: r'flutterLocalNotificationRepoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$flutterLocalNotificationRepoHash,
          dependencies: FlutterLocalNotificationRepoFamily._dependencies,
          allTransitiveDependencies:
              FlutterLocalNotificationRepoFamily._allTransitiveDependencies,
          plugin: plugin,
        );

  FlutterLocalNotificationRepoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plugin,
  }) : super.internal();

  final FlutterLocalNotificationsPlugin plugin;

  @override
  Override overrideWith(
    FlutterLocalNotificationRepo Function(
            FlutterLocalNotificationRepoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FlutterLocalNotificationRepoProvider._internal(
        (ref) => create(ref as FlutterLocalNotificationRepoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plugin: plugin,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<FlutterLocalNotificationRepo> createElement() {
    return _FlutterLocalNotificationRepoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FlutterLocalNotificationRepoProvider &&
        other.plugin == plugin;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plugin.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FlutterLocalNotificationRepoRef
    on AutoDisposeProviderRef<FlutterLocalNotificationRepo> {
  /// The parameter `plugin` of this provider.
  FlutterLocalNotificationsPlugin get plugin;
}

class _FlutterLocalNotificationRepoProviderElement
    extends AutoDisposeProviderElement<FlutterLocalNotificationRepo>
    with FlutterLocalNotificationRepoRef {
  _FlutterLocalNotificationRepoProviderElement(super.provider);

  @override
  FlutterLocalNotificationsPlugin get plugin =>
      (origin as FlutterLocalNotificationRepoProvider).plugin;
}

String _$fcmRepoHash() => r'289096e32af58342e8086e93ef51a86bb0fee25c';

/// See also [fcmRepo].
@ProviderFor(fcmRepo)
final fcmRepoProvider = AutoDisposeProvider<FCMRepo>.internal(
  fcmRepo,
  name: r'fcmRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fcmRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FcmRepoRef = AutoDisposeProviderRef<FCMRepo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

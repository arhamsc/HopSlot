// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'my_prescription.controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myPrescriptionControllerHash() =>
    r'5d6136a639a9c962f2fba479c0c5ca51accbb1c2';

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

abstract class _$MyPrescriptionController
    extends BuildlessAutoDisposeAsyncNotifier<MyPrescriptionState> {
  late final AppointmentDetail appointmentDetail;

  FutureOr<MyPrescriptionState> build({
    required AppointmentDetail appointmentDetail,
  });
}

/// See also [MyPrescriptionController].
@ProviderFor(MyPrescriptionController)
const myPrescriptionControllerProvider = MyPrescriptionControllerFamily();

/// See also [MyPrescriptionController].
class MyPrescriptionControllerFamily
    extends Family<AsyncValue<MyPrescriptionState>> {
  /// See also [MyPrescriptionController].
  const MyPrescriptionControllerFamily();

  /// See also [MyPrescriptionController].
  MyPrescriptionControllerProvider call({
    required AppointmentDetail appointmentDetail,
  }) {
    return MyPrescriptionControllerProvider(
      appointmentDetail: appointmentDetail,
    );
  }

  @override
  MyPrescriptionControllerProvider getProviderOverride(
    covariant MyPrescriptionControllerProvider provider,
  ) {
    return call(
      appointmentDetail: provider.appointmentDetail,
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
  String? get name => r'myPrescriptionControllerProvider';
}

/// See also [MyPrescriptionController].
class MyPrescriptionControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MyPrescriptionController,
        MyPrescriptionState> {
  /// See also [MyPrescriptionController].
  MyPrescriptionControllerProvider({
    required AppointmentDetail appointmentDetail,
  }) : this._internal(
          () =>
              MyPrescriptionController()..appointmentDetail = appointmentDetail,
          from: myPrescriptionControllerProvider,
          name: r'myPrescriptionControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myPrescriptionControllerHash,
          dependencies: MyPrescriptionControllerFamily._dependencies,
          allTransitiveDependencies:
              MyPrescriptionControllerFamily._allTransitiveDependencies,
          appointmentDetail: appointmentDetail,
        );

  MyPrescriptionControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.appointmentDetail,
  }) : super.internal();

  final AppointmentDetail appointmentDetail;

  @override
  FutureOr<MyPrescriptionState> runNotifierBuild(
    covariant MyPrescriptionController notifier,
  ) {
    return notifier.build(
      appointmentDetail: appointmentDetail,
    );
  }

  @override
  Override overrideWith(MyPrescriptionController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MyPrescriptionControllerProvider._internal(
        () => create()..appointmentDetail = appointmentDetail,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        appointmentDetail: appointmentDetail,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MyPrescriptionController,
      MyPrescriptionState> createElement() {
    return _MyPrescriptionControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyPrescriptionControllerProvider &&
        other.appointmentDetail == appointmentDetail;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, appointmentDetail.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyPrescriptionControllerRef
    on AutoDisposeAsyncNotifierProviderRef<MyPrescriptionState> {
  /// The parameter `appointmentDetail` of this provider.
  AppointmentDetail get appointmentDetail;
}

class _MyPrescriptionControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MyPrescriptionController,
        MyPrescriptionState> with MyPrescriptionControllerRef {
  _MyPrescriptionControllerProviderElement(super.provider);

  @override
  AppointmentDetail get appointmentDetail =>
      (origin as MyPrescriptionControllerProvider).appointmentDetail;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

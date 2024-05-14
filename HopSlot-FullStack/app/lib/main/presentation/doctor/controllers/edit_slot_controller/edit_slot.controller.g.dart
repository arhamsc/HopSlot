// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, invalid_annotation_target

part of 'edit_slot.controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editSlotControllerHash() =>
    r'5057d3a1a14219a60164ed00e2c9ccb5648f26f4';

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

abstract class _$EditSlotController
    extends BuildlessAutoDisposeAsyncNotifier<EditSlotState> {
  late final DoctorSlot? slot;
  late final bool isEdit;

  FutureOr<EditSlotState> build({
    DoctorSlot? slot,
    required bool isEdit,
  });
}

/// See also [EditSlotController].
@ProviderFor(EditSlotController)
const editSlotControllerProvider = EditSlotControllerFamily();

/// See also [EditSlotController].
class EditSlotControllerFamily extends Family<AsyncValue<EditSlotState>> {
  /// See also [EditSlotController].
  const EditSlotControllerFamily();

  /// See also [EditSlotController].
  EditSlotControllerProvider call({
    DoctorSlot? slot,
    required bool isEdit,
  }) {
    return EditSlotControllerProvider(
      slot: slot,
      isEdit: isEdit,
    );
  }

  @override
  EditSlotControllerProvider getProviderOverride(
    covariant EditSlotControllerProvider provider,
  ) {
    return call(
      slot: provider.slot,
      isEdit: provider.isEdit,
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
  String? get name => r'editSlotControllerProvider';
}

/// See also [EditSlotController].
class EditSlotControllerProvider extends AutoDisposeAsyncNotifierProviderImpl<
    EditSlotController, EditSlotState> {
  /// See also [EditSlotController].
  EditSlotControllerProvider({
    DoctorSlot? slot,
    required bool isEdit,
  }) : this._internal(
          () => EditSlotController()
            ..slot = slot
            ..isEdit = isEdit,
          from: editSlotControllerProvider,
          name: r'editSlotControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editSlotControllerHash,
          dependencies: EditSlotControllerFamily._dependencies,
          allTransitiveDependencies:
              EditSlotControllerFamily._allTransitiveDependencies,
          slot: slot,
          isEdit: isEdit,
        );

  EditSlotControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.slot,
    required this.isEdit,
  }) : super.internal();

  final DoctorSlot? slot;
  final bool isEdit;

  @override
  FutureOr<EditSlotState> runNotifierBuild(
    covariant EditSlotController notifier,
  ) {
    return notifier.build(
      slot: slot,
      isEdit: isEdit,
    );
  }

  @override
  Override overrideWith(EditSlotController Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditSlotControllerProvider._internal(
        () => create()
          ..slot = slot
          ..isEdit = isEdit,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        slot: slot,
        isEdit: isEdit,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<EditSlotController, EditSlotState>
      createElement() {
    return _EditSlotControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditSlotControllerProvider &&
        other.slot == slot &&
        other.isEdit == isEdit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, slot.hashCode);
    hash = _SystemHash.combine(hash, isEdit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EditSlotControllerRef
    on AutoDisposeAsyncNotifierProviderRef<EditSlotState> {
  /// The parameter `slot` of this provider.
  DoctorSlot? get slot;

  /// The parameter `isEdit` of this provider.
  bool get isEdit;
}

class _EditSlotControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<EditSlotController,
        EditSlotState> with EditSlotControllerRef {
  _EditSlotControllerProviderElement(super.provider);

  @override
  DoctorSlot? get slot => (origin as EditSlotControllerProvider).slot;
  @override
  bool get isEdit => (origin as EditSlotControllerProvider).isEdit;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

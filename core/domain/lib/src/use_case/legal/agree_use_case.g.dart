// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agree_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$agreeUseCaseHash() => r'34b1bed10dbe8bcdb4e3a9f3dac13465026fd35f';

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

/// 同意する
///
/// Copied from [agreeUseCase].
@ProviderFor(agreeUseCase)
const agreeUseCaseProvider = AgreeUseCaseFamily();

/// 同意する
///
/// Copied from [agreeUseCase].
class AgreeUseCaseFamily extends Family<Raw<FutureResult<void>>> {
  /// 同意する
  ///
  /// Copied from [agreeUseCase].
  const AgreeUseCaseFamily();

  /// 同意する
  ///
  /// Copied from [agreeUseCase].
  AgreeUseCaseProvider call({
    required RuleVersion agreeRuleVersion,
  }) {
    return AgreeUseCaseProvider(
      agreeRuleVersion: agreeRuleVersion,
    );
  }

  @override
  AgreeUseCaseProvider getProviderOverride(
    covariant AgreeUseCaseProvider provider,
  ) {
    return call(
      agreeRuleVersion: provider.agreeRuleVersion,
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
  String? get name => r'agreeUseCaseProvider';
}

/// 同意する
///
/// Copied from [agreeUseCase].
class AgreeUseCaseProvider
    extends AutoDisposeProvider<Raw<FutureResult<void>>> {
  /// 同意する
  ///
  /// Copied from [agreeUseCase].
  AgreeUseCaseProvider({
    required RuleVersion agreeRuleVersion,
  }) : this._internal(
          (ref) => agreeUseCase(
            ref as AgreeUseCaseRef,
            agreeRuleVersion: agreeRuleVersion,
          ),
          from: agreeUseCaseProvider,
          name: r'agreeUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$agreeUseCaseHash,
          dependencies: AgreeUseCaseFamily._dependencies,
          allTransitiveDependencies:
              AgreeUseCaseFamily._allTransitiveDependencies,
          agreeRuleVersion: agreeRuleVersion,
        );

  AgreeUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.agreeRuleVersion,
  }) : super.internal();

  final RuleVersion agreeRuleVersion;

  @override
  Override overrideWith(
    Raw<FutureResult<void>> Function(AgreeUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AgreeUseCaseProvider._internal(
        (ref) => create(ref as AgreeUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        agreeRuleVersion: agreeRuleVersion,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<FutureResult<void>>> createElement() {
    return _AgreeUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AgreeUseCaseProvider &&
        other.agreeRuleVersion == agreeRuleVersion;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, agreeRuleVersion.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AgreeUseCaseRef on AutoDisposeProviderRef<Raw<FutureResult<void>>> {
  /// The parameter `agreeRuleVersion` of this provider.
  RuleVersion get agreeRuleVersion;
}

class _AgreeUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<FutureResult<void>>>
    with AgreeUseCaseRef {
  _AgreeUseCaseProviderElement(super.provider);

  @override
  RuleVersion get agreeRuleVersion =>
      (origin as AgreeUseCaseProvider).agreeRuleVersion;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

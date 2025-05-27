// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_theme_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateThemeUseCaseHash() =>
    r'e9003d481cd5766f847d10667480b305dc75e7e5';

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

/// テーマ設定を更新する ユースケース
///
/// Copied from [updateThemeUseCase].
@ProviderFor(updateThemeUseCase)
const updateThemeUseCaseProvider = UpdateThemeUseCaseFamily();

/// テーマ設定を更新する ユースケース
///
/// Copied from [updateThemeUseCase].
class UpdateThemeUseCaseFamily extends Family<Raw<Future<void>>> {
  /// テーマ設定を更新する ユースケース
  ///
  /// Copied from [updateThemeUseCase].
  const UpdateThemeUseCaseFamily();

  /// テーマ設定を更新する ユースケース
  ///
  /// Copied from [updateThemeUseCase].
  UpdateThemeUseCaseProvider call({
    required Theme theme,
  }) {
    return UpdateThemeUseCaseProvider(
      theme: theme,
    );
  }

  @override
  UpdateThemeUseCaseProvider getProviderOverride(
    covariant UpdateThemeUseCaseProvider provider,
  ) {
    return call(
      theme: provider.theme,
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
  String? get name => r'updateThemeUseCaseProvider';
}

/// テーマ設定を更新する ユースケース
///
/// Copied from [updateThemeUseCase].
class UpdateThemeUseCaseProvider
    extends AutoDisposeProvider<Raw<Future<void>>> {
  /// テーマ設定を更新する ユースケース
  ///
  /// Copied from [updateThemeUseCase].
  UpdateThemeUseCaseProvider({
    required Theme theme,
  }) : this._internal(
          (ref) => updateThemeUseCase(
            ref as UpdateThemeUseCaseRef,
            theme: theme,
          ),
          from: updateThemeUseCaseProvider,
          name: r'updateThemeUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateThemeUseCaseHash,
          dependencies: UpdateThemeUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateThemeUseCaseFamily._allTransitiveDependencies,
          theme: theme,
        );

  UpdateThemeUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.theme,
  }) : super.internal();

  final Theme theme;

  @override
  Override overrideWith(
    Raw<Future<void>> Function(UpdateThemeUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateThemeUseCaseProvider._internal(
        (ref) => create(ref as UpdateThemeUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        theme: theme,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<Future<void>>> createElement() {
    return _UpdateThemeUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateThemeUseCaseProvider && other.theme == theme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, theme.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateThemeUseCaseRef on AutoDisposeProviderRef<Raw<Future<void>>> {
  /// The parameter `theme` of this provider.
  Theme get theme;
}

class _UpdateThemeUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<Future<void>>>
    with UpdateThemeUseCaseRef {
  _UpdateThemeUseCaseProviderElement(super.provider);

  @override
  Theme get theme => (origin as UpdateThemeUseCaseProvider).theme;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

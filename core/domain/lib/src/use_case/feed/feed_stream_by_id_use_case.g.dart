// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_stream_by_id_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$feedStreamByIdUseCaseHash() =>
    r'0ca4dbb759cd99983267f2617a13ebaddbbce61a';

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

/// 該当のお知らせを取得する ユースケース
///
/// Copied from [feedStreamByIdUseCase].
@ProviderFor(feedStreamByIdUseCase)
const feedStreamByIdUseCaseProvider = FeedStreamByIdUseCaseFamily();

/// 該当のお知らせを取得する ユースケース
///
/// Copied from [feedStreamByIdUseCase].
class FeedStreamByIdUseCaseFamily extends Family<AsyncValue<Feed?>> {
  /// 該当のお知らせを取得する ユースケース
  ///
  /// Copied from [feedStreamByIdUseCase].
  const FeedStreamByIdUseCaseFamily();

  /// 該当のお知らせを取得する ユースケース
  ///
  /// Copied from [feedStreamByIdUseCase].
  FeedStreamByIdUseCaseProvider call({
    required String id,
  }) {
    return FeedStreamByIdUseCaseProvider(
      id: id,
    );
  }

  @override
  FeedStreamByIdUseCaseProvider getProviderOverride(
    covariant FeedStreamByIdUseCaseProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'feedStreamByIdUseCaseProvider';
}

/// 該当のお知らせを取得する ユースケース
///
/// Copied from [feedStreamByIdUseCase].
class FeedStreamByIdUseCaseProvider extends AutoDisposeStreamProvider<Feed?> {
  /// 該当のお知らせを取得する ユースケース
  ///
  /// Copied from [feedStreamByIdUseCase].
  FeedStreamByIdUseCaseProvider({
    required String id,
  }) : this._internal(
          (ref) => feedStreamByIdUseCase(
            ref as FeedStreamByIdUseCaseRef,
            id: id,
          ),
          from: feedStreamByIdUseCaseProvider,
          name: r'feedStreamByIdUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedStreamByIdUseCaseHash,
          dependencies: FeedStreamByIdUseCaseFamily._dependencies,
          allTransitiveDependencies:
              FeedStreamByIdUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  FeedStreamByIdUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Stream<Feed?> Function(FeedStreamByIdUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FeedStreamByIdUseCaseProvider._internal(
        (ref) => create(ref as FeedStreamByIdUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<Feed?> createElement() {
    return _FeedStreamByIdUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeedStreamByIdUseCaseProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FeedStreamByIdUseCaseRef on AutoDisposeStreamProviderRef<Feed?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FeedStreamByIdUseCaseProviderElement
    extends AutoDisposeStreamProviderElement<Feed?>
    with FeedStreamByIdUseCaseRef {
  _FeedStreamByIdUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as FeedStreamByIdUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

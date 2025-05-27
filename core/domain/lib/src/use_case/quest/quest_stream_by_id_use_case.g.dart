// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_stream_by_id_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questStreamByIdUseCaseHash() =>
    r'72163c06f90abe5f168bea9b0b710aa2e7fb4147';

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

/// 該当のクエストを取得する ユースケース
///
/// Copied from [questStreamByIdUseCase].
@ProviderFor(questStreamByIdUseCase)
const questStreamByIdUseCaseProvider = QuestStreamByIdUseCaseFamily();

/// 該当のクエストを取得する ユースケース
///
/// Copied from [questStreamByIdUseCase].
class QuestStreamByIdUseCaseFamily extends Family<AsyncValue<Quest?>> {
  /// 該当のクエストを取得する ユースケース
  ///
  /// Copied from [questStreamByIdUseCase].
  const QuestStreamByIdUseCaseFamily();

  /// 該当のクエストを取得する ユースケース
  ///
  /// Copied from [questStreamByIdUseCase].
  QuestStreamByIdUseCaseProvider call({
    required String id,
  }) {
    return QuestStreamByIdUseCaseProvider(
      id: id,
    );
  }

  @override
  QuestStreamByIdUseCaseProvider getProviderOverride(
    covariant QuestStreamByIdUseCaseProvider provider,
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
  String? get name => r'questStreamByIdUseCaseProvider';
}

/// 該当のクエストを取得する ユースケース
///
/// Copied from [questStreamByIdUseCase].
class QuestStreamByIdUseCaseProvider extends AutoDisposeStreamProvider<Quest?> {
  /// 該当のクエストを取得する ユースケース
  ///
  /// Copied from [questStreamByIdUseCase].
  QuestStreamByIdUseCaseProvider({
    required String id,
  }) : this._internal(
          (ref) => questStreamByIdUseCase(
            ref as QuestStreamByIdUseCaseRef,
            id: id,
          ),
          from: questStreamByIdUseCaseProvider,
          name: r'questStreamByIdUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$questStreamByIdUseCaseHash,
          dependencies: QuestStreamByIdUseCaseFamily._dependencies,
          allTransitiveDependencies:
              QuestStreamByIdUseCaseFamily._allTransitiveDependencies,
          id: id,
        );

  QuestStreamByIdUseCaseProvider._internal(
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
    Stream<Quest?> Function(QuestStreamByIdUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: QuestStreamByIdUseCaseProvider._internal(
        (ref) => create(ref as QuestStreamByIdUseCaseRef),
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
  AutoDisposeStreamProviderElement<Quest?> createElement() {
    return _QuestStreamByIdUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestStreamByIdUseCaseProvider && other.id == id;
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
mixin QuestStreamByIdUseCaseRef on AutoDisposeStreamProviderRef<Quest?> {
  /// The parameter `id` of this provider.
  String get id;
}

class _QuestStreamByIdUseCaseProviderElement
    extends AutoDisposeStreamProviderElement<Quest?>
    with QuestStreamByIdUseCaseRef {
  _QuestStreamByIdUseCaseProviderElement(super.provider);

  @override
  String get id => (origin as QuestStreamByIdUseCaseProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_quest_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addQuestUseCaseHash() => r'00b281604c13559d89c08ee05cb7f4c782daf4d5';

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

/// クエストを追加する ユースケース
///
/// Copied from [addQuestUseCase].
@ProviderFor(addQuestUseCase)
const addQuestUseCaseProvider = AddQuestUseCaseFamily();

/// クエストを追加する ユースケース
///
/// Copied from [addQuestUseCase].
class AddQuestUseCaseFamily extends Family<Raw<FutureResult<void>>> {
  /// クエストを追加する ユースケース
  ///
  /// Copied from [addQuestUseCase].
  const AddQuestUseCaseFamily();

  /// クエストを追加する ユースケース
  ///
  /// Copied from [addQuestUseCase].
  AddQuestUseCaseProvider call({
    required String title,
    required String description,
    required String note,
  }) {
    return AddQuestUseCaseProvider(
      title: title,
      description: description,
      note: note,
    );
  }

  @override
  AddQuestUseCaseProvider getProviderOverride(
    covariant AddQuestUseCaseProvider provider,
  ) {
    return call(
      title: provider.title,
      description: provider.description,
      note: provider.note,
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
  String? get name => r'addQuestUseCaseProvider';
}

/// クエストを追加する ユースケース
///
/// Copied from [addQuestUseCase].
class AddQuestUseCaseProvider
    extends AutoDisposeProvider<Raw<FutureResult<void>>> {
  /// クエストを追加する ユースケース
  ///
  /// Copied from [addQuestUseCase].
  AddQuestUseCaseProvider({
    required String title,
    required String description,
    required String note,
  }) : this._internal(
          (ref) => addQuestUseCase(
            ref as AddQuestUseCaseRef,
            title: title,
            description: description,
            note: note,
          ),
          from: addQuestUseCaseProvider,
          name: r'addQuestUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addQuestUseCaseHash,
          dependencies: AddQuestUseCaseFamily._dependencies,
          allTransitiveDependencies:
              AddQuestUseCaseFamily._allTransitiveDependencies,
          title: title,
          description: description,
          note: note,
        );

  AddQuestUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
    required this.description,
    required this.note,
  }) : super.internal();

  final String title;
  final String description;
  final String note;

  @override
  Override overrideWith(
    Raw<FutureResult<void>> Function(AddQuestUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddQuestUseCaseProvider._internal(
        (ref) => create(ref as AddQuestUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
        description: description,
        note: note,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Raw<FutureResult<void>>> createElement() {
    return _AddQuestUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddQuestUseCaseProvider &&
        other.title == title &&
        other.description == description &&
        other.note == note;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, note.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddQuestUseCaseRef on AutoDisposeProviderRef<Raw<FutureResult<void>>> {
  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `description` of this provider.
  String get description;

  /// The parameter `note` of this provider.
  String get note;
}

class _AddQuestUseCaseProviderElement
    extends AutoDisposeProviderElement<Raw<FutureResult<void>>>
    with AddQuestUseCaseRef {
  _AddQuestUseCaseProviderElement(super.provider);

  @override
  String get title => (origin as AddQuestUseCaseProvider).title;
  @override
  String get description => (origin as AddQuestUseCaseProvider).description;
  @override
  String get note => (origin as AddQuestUseCaseProvider).note;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

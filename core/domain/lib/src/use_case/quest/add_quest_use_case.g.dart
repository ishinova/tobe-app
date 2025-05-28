// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_quest_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addQuestUseCaseHash() => r'092a576fdc1a76edaf2eb36ee28d46506db4d718';

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
    required DateTime? begunAt,
    required DateTime? endedAt,
    required String? categoryId,
    required File? coverImage,
  }) {
    return AddQuestUseCaseProvider(
      title: title,
      description: description,
      note: note,
      begunAt: begunAt,
      endedAt: endedAt,
      categoryId: categoryId,
      coverImage: coverImage,
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
      begunAt: provider.begunAt,
      endedAt: provider.endedAt,
      categoryId: provider.categoryId,
      coverImage: provider.coverImage,
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
    required DateTime? begunAt,
    required DateTime? endedAt,
    required String? categoryId,
    required File? coverImage,
  }) : this._internal(
         (ref) => addQuestUseCase(
           ref as AddQuestUseCaseRef,
           title: title,
           description: description,
           note: note,
           begunAt: begunAt,
           endedAt: endedAt,
           categoryId: categoryId,
           coverImage: coverImage,
         ),
         from: addQuestUseCaseProvider,
         name: r'addQuestUseCaseProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$addQuestUseCaseHash,
         dependencies: AddQuestUseCaseFamily._dependencies,
         allTransitiveDependencies:
             AddQuestUseCaseFamily._allTransitiveDependencies,
         title: title,
         description: description,
         note: note,
         begunAt: begunAt,
         endedAt: endedAt,
         categoryId: categoryId,
         coverImage: coverImage,
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
    required this.begunAt,
    required this.endedAt,
    required this.categoryId,
    required this.coverImage,
  }) : super.internal();

  final String title;
  final String description;
  final String note;
  final DateTime? begunAt;
  final DateTime? endedAt;
  final String? categoryId;
  final File? coverImage;

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
        begunAt: begunAt,
        endedAt: endedAt,
        categoryId: categoryId,
        coverImage: coverImage,
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
        other.note == note &&
        other.begunAt == begunAt &&
        other.endedAt == endedAt &&
        other.categoryId == categoryId &&
        other.coverImage == coverImage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);
    hash = _SystemHash.combine(hash, note.hashCode);
    hash = _SystemHash.combine(hash, begunAt.hashCode);
    hash = _SystemHash.combine(hash, endedAt.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);
    hash = _SystemHash.combine(hash, coverImage.hashCode);

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

  /// The parameter `begunAt` of this provider.
  DateTime? get begunAt;

  /// The parameter `endedAt` of this provider.
  DateTime? get endedAt;

  /// The parameter `categoryId` of this provider.
  String? get categoryId;

  /// The parameter `coverImage` of this provider.
  File? get coverImage;
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
  @override
  DateTime? get begunAt => (origin as AddQuestUseCaseProvider).begunAt;
  @override
  DateTime? get endedAt => (origin as AddQuestUseCaseProvider).endedAt;
  @override
  String? get categoryId => (origin as AddQuestUseCaseProvider).categoryId;
  @override
  File? get coverImage => (origin as AddQuestUseCaseProvider).coverImage;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

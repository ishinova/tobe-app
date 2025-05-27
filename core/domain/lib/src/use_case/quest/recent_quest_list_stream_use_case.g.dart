// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_quest_list_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recentQuestListStreamUseCaseHash() =>
    r'db61ed658bf040ea58be3faa41f7b89ded19d956';

/// 直近のクエスト一覧を取得する ユースケース
///
/// Copied from [recentQuestListStreamUseCase].
@ProviderFor(recentQuestListStreamUseCase)
final recentQuestListStreamUseCaseProvider =
    AutoDisposeStreamProvider<List<Quest>>.internal(
  recentQuestListStreamUseCase,
  name: r'recentQuestListStreamUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$recentQuestListStreamUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RecentQuestListStreamUseCaseRef
    = AutoDisposeStreamProviderRef<List<Quest>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

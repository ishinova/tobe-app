// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_feed_list_stream_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsFeedListStreamUseCaseHash() =>
    r'c2a36df90a46a9783a3c24901bdfe325af97cbd4';

/// サービスのお知らせ一覧を取得する ユースケース
///
/// Copied from [newsFeedListStreamUseCase].
@ProviderFor(newsFeedListStreamUseCase)
final newsFeedListStreamUseCaseProvider =
    AutoDisposeStreamProvider<List<NewsFeed>>.internal(
  newsFeedListStreamUseCase,
  name: r'newsFeedListStreamUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newsFeedListStreamUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NewsFeedListStreamUseCaseRef
    = AutoDisposeStreamProviderRef<List<NewsFeed>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

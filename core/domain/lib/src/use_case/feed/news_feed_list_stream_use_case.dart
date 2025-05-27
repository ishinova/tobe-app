import 'package:core_data/repository.dart';
import 'package:core_model/feed.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_feed_list_stream_use_case.g.dart';

/// サービスのお知らせ一覧を取得する ユースケース
@riverpod
Stream<List<NewsFeed>> newsFeedListStreamUseCase(Ref ref) async* {
  final repository = ref.watch(newsRepositoryProvider);
  yield* repository.getAll().asStream();
}

import 'package:core_model/feed.dart';
import 'package:core_network/news.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

@riverpod
NewsRepository newsRepository(Ref ref) =>
    NewsRepository(remote: ref.watch(newsRemoteDataSourceProvider));

/// ニュースのリポジトリ
class NewsRepository {
  NewsRepository({required NewsRemoteDataSource remote}) : _remote = remote;

  final NewsRemoteDataSource _remote;

  Future<List<NewsFeed>> getAll() async =>
      (await _remote.getNewsList()).map((e) => e.toNewsFeed()).toList();
}

extension on NetworkNews {
  NewsFeed toNewsFeed() => NewsFeed(
    slug: slug,
    title: title,
    publishedAt: publishedAt,
    excerpt: excerpt,
    coverImageUrl: coverImageUrl,
  );
}

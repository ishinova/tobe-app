import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_feed.freezed.dart';

typedef NewsFeedSlug = String;

/// サービスのお知らせ
///
/// {@category Model}
@freezed
abstract class NewsFeed with _$NewsFeed {
  const factory NewsFeed({
    required String title,
    required NewsFeedSlug slug,
    required DateTime publishedAt,
    required String excerpt,
    required String? coverImageUrl,
  }) = _NewsFeed;
}

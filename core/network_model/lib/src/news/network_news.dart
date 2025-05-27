import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_news.freezed.dart';

part 'network_news.g.dart';

/// サービスのお知らせ
///
/// {@category Model}
@freezed
abstract class NetworkNews with _$NetworkNews {
  const factory NetworkNews({
    required String title,
    required String slug,
    required DateTime publishedAt,
    required String excerpt,
    required String? coverImageUrl,
  }) = _NetworkNews;

  factory NetworkNews.fromJson(Map<String, Object?> json) =>
      _$NetworkNewsFromJson(json);
}

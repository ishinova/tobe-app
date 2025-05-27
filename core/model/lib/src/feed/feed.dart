import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';

typedef FeedId = String;

/// お知らせ
///
/// {@category Model}
@freezed
abstract class Feed with _$Feed {
  const factory Feed({
    required FeedId id,
    required String name,
    required String description,
    required String content,
  }) = _Feed;
}

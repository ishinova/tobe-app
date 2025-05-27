import 'package:core_model/feed.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_list_stream_use_case.g.dart';

/// お知らせ一覧を取得する ユースケース
@riverpod
Stream<List<Feed>> feedListStreamUseCase(Ref ref) => Stream.value([
  const Feed(
    id: 'id1',
    name: 'name',
    description: 'description',
    content: 'content',
  ),
  const Feed(
    id: 'id2',
    name: 'name',
    description: 'description',
    content: 'content',
  ),
]);

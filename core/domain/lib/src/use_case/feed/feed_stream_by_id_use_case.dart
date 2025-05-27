import 'package:core_model/feed.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feed_stream_by_id_use_case.g.dart';

/// 該当のお知らせを取得する ユースケース
@riverpod
Stream<Feed?> feedStreamByIdUseCase(Ref ref, {required FeedId id}) =>
    Stream.value(
      const Feed(
        id: 'id1',
        name: 'name',
        description: 'description',
        content: 'content',
      ),
    );

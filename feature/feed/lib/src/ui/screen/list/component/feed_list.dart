import 'package:core_domain/feed_use_case.dart';
import 'package:core_model/feed.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// お知らせ一覧
final class FeedList extends HookConsumerWidget {
  const FeedList({
    required void Function(Feed feed) onTapFeedListItem,
    super.key,
  }) : _onTapFeedListItem = onTapFeedListItem;

  final void Function(Feed feed) _onTapFeedListItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quests = ref.watch(feedListStreamUseCaseProvider);

    return quests.when(
      data: (data) {
        return Column(
          children: [
            ...data.map(
              (feed) => ListTile(
                key: ValueKey(feed.id),
                title: Text(feed.name),
                onTap: () => _onTapFeedListItem(feed),
              ),
            ),
          ],
        );
      },
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

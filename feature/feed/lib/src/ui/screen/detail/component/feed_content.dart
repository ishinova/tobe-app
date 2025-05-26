import 'package:core_domain/feed_use_case.dart';
import 'package:core_model/feed.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// お知らせ内容
final class FeedContent extends HookConsumerWidget {
  const FeedContent({required FeedId feedId, super.key}) : _feedId = feedId;

  final FeedId _feedId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feed = ref.watch(feedStreamByIdUseCaseProvider(id: _feedId));

    return feed.when(
      data: (data) {
        return const SizedBox.shrink();
      },
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

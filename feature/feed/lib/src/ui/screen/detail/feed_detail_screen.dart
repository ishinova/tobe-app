import 'package:core_designsystem/component.dart';
import 'package:core_model/feed.dart';
import 'package:feature_feed/src/gen/l10n/l10n.dart';
import 'package:feature_feed/src/ui/screen/detail/component/feed_content.dart';
import 'package:flutter/material.dart';

/// フィード詳細画面
final class FeedDetailScreen extends StatelessWidget {
  const FeedDetailScreen({required FeedId id, super.key}) : _id = id;

  final FeedId _id;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.feedDetailAppBarTitle)),
      body: FeedContent(feedId: _id),
    );
  }
}

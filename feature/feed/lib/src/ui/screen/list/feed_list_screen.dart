import 'package:core_designsystem/component.dart';
import 'package:core_model/feed.dart';
import 'package:feature_feed/src/gen/l10n/l10n.dart';
import 'package:feature_feed/src/ui/screen/list/component/feed_list.dart';
import 'package:flutter/material.dart';

/// フィード一覧画面
final class FeedListScreen extends StatelessWidget {
  const FeedListScreen({
    required void Function(Feed) onTapFeedListItem,
    super.key,
  }) : _onTapFeedListItem = onTapFeedListItem;

  final void Function(Feed feed) _onTapFeedListItem;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.feedListAppBarTitle)),
      body: SingleChildScrollView(
        child: Column(
          children: [FeedList(onTapFeedListItem: _onTapFeedListItem)],
        ),
      ),
    );
  }
}

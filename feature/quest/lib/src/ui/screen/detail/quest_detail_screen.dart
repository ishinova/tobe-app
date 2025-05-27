import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:feature_quest/src/ui/screen/detail/component/quest_content.dart';
import 'package:flutter/material.dart';

/// クエスト詳細画面
final class QuestDetailScreen extends StatelessWidget {
  const QuestDetailScreen({required QuestId id, super.key}) : _id = id;

  final QuestId _id;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.questDetailAppBarTitle)),
      body: SafeArea(child: QuestContent(questId: _id)),
    );
  }
}

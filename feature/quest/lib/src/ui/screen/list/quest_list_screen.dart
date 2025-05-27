import 'package:core_designsystem/component.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:feature_quest/src/ui/screen/list/component/quest_list.dart';
import 'package:flutter/material.dart';

/// クエスト一覧画面
final class QuestListScreen extends StatelessWidget {
  const QuestListScreen({
    required void Function(Quest) onTapQuestListItem,
    required void Function() onTapQuestAddButton,
    super.key,
  }) : _onTapQuestListItem = onTapQuestListItem,
       _onTapQuestAddButton = onTapQuestAddButton;

  final void Function(Quest quest) _onTapQuestListItem;
  final VoidCallback _onTapQuestAddButton;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return TobeScaffold(
      appBar: TobeAppBar(title: Text(l10n.questListAppBarTitle)),
      body: QuestList(onTapQuestListItem: _onTapQuestListItem),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onTapQuestAddButton,
        label: Text(l10n.questListAddQuest),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

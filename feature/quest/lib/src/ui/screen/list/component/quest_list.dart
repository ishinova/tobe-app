import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト一覧
final class QuestList extends HookConsumerWidget {
  const QuestList({
    required void Function(Quest quest) onTapQuestListItem,
    super.key,
  }) : _onTapQuestListItem = onTapQuestListItem;

  final void Function(Quest quest) _onTapQuestListItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quests = ref.watch(questListStreamUseCaseProvider);

    return quests.when(
      data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => QuestListTile(
            key: ValueKey(data[index].id),
            quest: data[index],
            onTap: _onTapQuestListItem,
          ),
        );
      },
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

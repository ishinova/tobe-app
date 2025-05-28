import 'package:core_model/quest.dart';
import 'package:core_ui/quest_list_title.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestListTile',
  type: QuestListTile,
  path: '[UI]/components',
)
Widget tobeScaffoldUseCase(BuildContext context) {
  return QuestListTile(
    quest: Quest(
      id: '1',
      title: 'title',
      description: 'description',
      begunAt: DateTime.now(),
      endedAt: DateTime.now(),
      categoryId: null,
      status: QuestStatus.backlog,
      coverImageUrl:
          'https://raw.githubusercontent.com/ishinova/tobe-app/main/.idea/icon.svg',
      note: 'note',
    ),
    onTap: (quest) {},
  );
}

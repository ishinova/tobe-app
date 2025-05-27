import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestAddScreen',
  type: QuestAddScreen,
  path: '[Feature]/quest',
)
QuestAddScreen questAddScreenUseCase(BuildContext context) {
  return QuestAddScreen(onAddQuestCompleted: () {});
}

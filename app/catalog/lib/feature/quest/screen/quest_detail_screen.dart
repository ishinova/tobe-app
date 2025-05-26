import 'package:feature_quest/feature_quest.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'QuestDetailScreen',
  type: QuestDetailScreen,
  path: '[Feature]/quest',
)
QuestDetailScreen questDetailScreenUseCase(BuildContext context) {
  return const QuestDetailScreen(id: 'quest_id');
}

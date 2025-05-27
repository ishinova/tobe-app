import 'package:core_model/quest.dart';
import 'package:flutter/material.dart';

final class QuestListTile extends StatelessWidget {
  const QuestListTile({
    required Quest quest,
    required void Function(Quest quest) onTap,
    super.key,
  }) : _quest = quest,
       _onTap = onTap;

  final Quest _quest;
  final void Function(Quest quest) _onTap;

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(_quest.title),
    subtitle: Text(_quest.description),
    trailing: const Icon(Icons.arrow_forward_ios),
    onTap: () => _onTap(_quest),
  );
}

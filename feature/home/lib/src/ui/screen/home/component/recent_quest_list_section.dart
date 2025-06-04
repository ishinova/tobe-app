import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 直近のクエスト一覧を表示するセクション
final class RecentQuestListSection extends HookConsumerWidget {
  const RecentQuestListSection({
    required void Function(Quest quest) onTapQuestListItem,
    required void Function() onMoreButtonPressed,
    super.key,
  }) : _onTapQuestListItem = onTapQuestListItem,
       _onMoreButtonPressed = onMoreButtonPressed;

  final void Function(Quest quest) _onTapQuestListItem;
  final VoidCallback _onMoreButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final questList = ref.watch(recentQuestListStreamUseCaseProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.homeRecentQuestListSectionYourQuestList,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: _onMoreButtonPressed,
              child: Text(l10n.homeRecentQuestListSectionMore),
            ),
          ],
        ),
        const Gap(TobeSpace.m),
        questList.when(
          data: (data) {
            if (data.isEmpty) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(TobeSpace.xl),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.assignment_outlined,
                          size: 48,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        const Gap(TobeSpace.m),
                        Text(
                          l10n.homeNoQuestsMessage,
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return SizedBox(
              height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                separatorBuilder: (context, index) => const Gap(TobeSpace.m),
                itemBuilder: (context, index) {
                  final quest = data[index];
                  return _QuestCard(
                    quest: quest,
                    onTap: () => _onTapQuestListItem(quest),
                  );
                },
              ),
            );
          },
          error: (error, stackTrace) => Card(
            child: Padding(
              padding: const EdgeInsets.all(TobeSpace.l),
              child: Center(
                child: Text(
                  l10n.homeErrorMessage,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ),
          ),
          loading: () => const SizedBox(
            height: 180,
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}

final class _QuestCard extends StatelessWidget {
  const _QuestCard({required this.quest, required this.onTap});

  final Quest quest;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = L10n.of(context);

    return SizedBox(
      width: 200,
      child: TappableCard(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(TobeSpace.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status indicator
              Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: quest.status == QuestStatus.completed
                          ? colorScheme.primary
                          : quest.status == QuestStatus.inProgress
                          ? colorScheme.secondary
                          : colorScheme.outline,
                    ),
                  ),
                  const Gap(TobeSpace.s),
                  Text(
                    _getStatusText(quest.status, l10n),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              const Gap(TobeSpace.m),
              // Title
              Text(
                quest.title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const Gap(TobeSpace.s),
              // Description
              Expanded(
                child: Text(
                  quest.description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // Date info
              if (quest.begunAt != null) ...[
                const Gap(TobeSpace.s),
                Text(
                  _formatDate(quest.begunAt!, l10n),
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.outline,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _getStatusText(QuestStatus status, L10n l10n) {
    switch (status) {
      case QuestStatus.backlog:
        return l10n.homeQuestStatusBacklog;
      case QuestStatus.ready:
        return l10n.homeQuestStatusReady;
      case QuestStatus.inProgress:
        return l10n.homeQuestStatusInProgress;
      case QuestStatus.suspend:
        return l10n.homeQuestStatusSuspend;
      case QuestStatus.completed:
        return l10n.homeQuestStatusCompleted;
      case QuestStatus.abort:
        return l10n.homeQuestStatusAbort;
    }
  }

  String _formatDate(DateTime date, L10n l10n) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return l10n.homeDateToday;
    } else if (difference.inDays == 1) {
      return l10n.homeDateYesterday;
    } else if (difference.inDays < 7) {
      return l10n.homeDateDaysAgo(difference.inDays);
    } else {
      return '${date.month}/${date.day}';
    }
  }
}

import 'package:core_designsystem/space.dart';
import 'package:core_model/quest.dart';
import 'package:feature_my/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuestStatisticsSection extends StatelessWidget {
  const QuestStatisticsSection({required this.questCount, super.key});

  final QuestCount questCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = FeatureMyL10n.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n?.myPageQuestStatistics ?? 'Quest Statistics',
          style: theme.textTheme.titleMedium,
        ),
        const Gap(TobeSpace.m),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                title: l10n?.myPageCompletedQuests ?? 'Completed',
                count: questCount.completed,
                color: theme.colorScheme.primary,
                icon: Icons.check_circle_outline,
              ),
            ),
            const Gap(TobeSpace.m),
            Expanded(
              child: _StatCard(
                title: l10n?.myPageActiveQuests ?? 'Active',
                count: questCount.inProgress,
                color: theme.colorScheme.secondary,
                icon: Icons.play_circle_outline,
              ),
            ),
            const Gap(TobeSpace.m),
            Expanded(
              child: _StatCard(
                title: l10n?.myPageTotalQuests ?? 'Total',
                count: questCount.total,
                color: theme.colorScheme.tertiary,
                icon: Icons.stars_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.count,
    required this.color,
    required this.icon,
  });

  final String title;
  final int count;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(TobeSpace.m),
        child: Column(
          children: [
            Icon(icon, color: color, size: 32),
            const Gap(TobeSpace.s),
            Text(
              count.toString(),
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            const Gap(TobeSpace.xs),
            Text(
              title,
              style: theme.textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:core_designsystem/component.dart';
import 'package:core_designsystem/space.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:feature_home/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト内容
final class QuestOverviewSection extends HookConsumerWidget {
  const QuestOverviewSection({
    required void Function() onQuickAddButtonPressed,
    super.key,
  }) : _onQuickAddButtonPressed = onQuickAddButtonPressed;

  final VoidCallback _onQuickAddButtonPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final countStream = ref.watch(questCountStreamUseCaseProvider);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          countStream.when(
            data: (data) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    l10n.homeQuestOverviewSectionTitle,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(TobeSpace.m),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _StatCard(
                          title: l10n.homeQuestOverviewSectionTotalQuests,
                          count: '${data.total}',
                        ),
                      ),
                      const Gap(TobeSpace.m),
                      Expanded(
                        child: _StatCard(
                          title: l10n.homeQuestOverviewSectionQuestsCompleted,
                          count: '${data.completed}',
                        ),
                      ),
                    ],
                  ),
                  const Gap(TobeSpace.m),
                  SizedBox(
                    width: double.infinity,
                    child: _StatCard(
                      title: l10n.homeQuestOverviewSectionPendingQuests,
                      count: '${data.pending}',
                    ),
                  ),
                ],
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
            loading: () => const Card(
              child: Padding(
                padding: EdgeInsets.all(TobeSpace.l),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
          const Gap(TobeSpace.m),
          Hero(
            tag: 'quick-add-quest-button',
            child: FilledButton.icon(
              onPressed: _onQuickAddButtonPressed,
              icon: const Icon(Icons.add),
              label: Text(l10n.homeQuestOverviewSectionQuickAddQuest),
            ),
          ),
        ],
      );
  }
}

final class _StatCard extends StatelessWidget {
  const _StatCard({required this.title, required this.count});

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Material(
      child: InkWell(
        onTap: () {}, // Makes the card feel interactive
        borderRadius: BorderRadius.circular(12),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: colorScheme.outlineVariant,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: TobeSpace.l,
              horizontal: TobeSpace.m,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder: (child, animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    );
                  },
                  child: Text(
                    count,
                    key: ValueKey(count),
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
                const Gap(TobeSpace.s),
                Text(
                  title,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:core_designsystem/component.dart';
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

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          countStream.when(
            data: (data) {
              return Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      l10n.homeQuestOverviewSectionTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: _StatCard(
                          title: l10n.homeQuestOverviewSectionTotalQuests,
                          count: '${data.total}',
                        ),
                      ),
                      const Gap(16),
                      Expanded(
                        child: _StatCard(
                          title: l10n.homeQuestOverviewSectionQuestsCompleted,
                          count: '${data.completed}',
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
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
            error: (error, stackTrace) => Center(child: Text(error.toString())),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _onQuickAddButtonPressed,
                child: Text(l10n.homeQuestOverviewSectionQuickAddQuest),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final class _StatCard extends StatelessWidget {
  const _StatCard({required this.title, required this.count});

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            count,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }
}

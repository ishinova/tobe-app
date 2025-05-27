import 'package:core_designsystem/component.dart';
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

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              l10n.homeRecentQuestListSectionYourQuestList,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Gap(16),
          questList.when(
            data: (data) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: data
                      .map(
                        (quest) => Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: InkWell(
                            onTap: () => _onTapQuestListItem(quest),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    quest.title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Gap(8),
                                  Text(
                                    quest.description,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .expand((widget) => [widget, const Gap(16)])
                      .toList(),
                ),
              );
            },
            error: (error, stackTrace) => Center(child: Text(error.toString())),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextButton(
                onPressed: _onMoreButtonPressed,
                child: Text(l10n.homeRecentQuestListSectionMore),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

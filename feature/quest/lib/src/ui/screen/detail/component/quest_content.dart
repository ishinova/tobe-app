import 'package:core_designsystem/component.dart';
import 'package:core_domain/quest_use_case.dart';
import 'package:core_model/quest.dart';
import 'package:feature_quest/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// クエスト内容
final class QuestContent extends HookConsumerWidget {
  const QuestContent({required QuestId questId, super.key})
    : _questId = questId;

  final QuestId _questId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    final provider = questStreamByIdUseCaseProvider(id: _questId);
    final quest = ref.watch(provider);

    return quest.when(
      data: (quest) {
        if (quest == null) {
          return const SizedBox.shrink();
        }

        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...[
                Text(
                  quest.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // カバー画像
                if (quest.coverImageUrl != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(quest.coverImageUrl!),
                  ),

                // 説明
                if (quest.description.isNotEmpty) Text(quest.description),

                // 開始日時
                ...[
                  const Gap(8),
                  Text(l10n.questDetailContentBegunAtLabel),
                  if (quest.begunAt != null)
                    Text(quest.begunAt!.toIso8601String())
                  else
                    Text(l10n.questDetailContentBegunAtEmptyText),
                ],

                // 終了日時
                ...[
                  const Gap(8),
                  Text(l10n.questDetailContentEndedAtLabel),
                  if (quest.endedAt != null)
                    Text(quest.endedAt!.toIso8601String())
                  else
                    Text(l10n.questDetailContentEndedAtEmptyText),
                ],

                // カテゴリ
                ...[
                  const Gap(8),
                  Text(l10n.questDetailContentCategoryLabel),
                  if (quest.categoryId != null)
                    Text(quest.categoryId!)
                  else
                    Text(l10n.questDetailContentCategoryEmptyText),
                ],

                // ステータス
                ...[
                  const Gap(8),
                  Text(l10n.questDetailContentStatusLabel),
                  Text(quest.status.name),
                ],

                // ノート
                ...[
                  const Gap(8),
                  Text(l10n.questDetailContentNoteLabel),
                  Text(quest.note),
                ],
              ].expand((element) => [element, const Gap(8)]),
            ],
          ),
        );
      },
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

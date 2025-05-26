import 'package:core_authenticator/authenticator.dart';
import 'package:core_common/anyhow.dart';
import 'package:core_data/repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_quest_use_case.g.dart';

/// クエストを追加する ユースケース
@riverpod
Raw<FutureResult<void>> addQuestUseCase(
  Ref ref, {
  required String title,
  required String description,
  required String note,
}) async {
  final currentUserId = ref.watch(authenticatorProvider).currentUserId;
  if (currentUserId == null) {
    return Err(Error('Unauthenticated'));
  }

  await ref
      .watch(questRepositoryProvider)
      .createMainQuest(
        userId: currentUserId,
        title: title,
        description: description,
        begunAt: null,
        endedAt: null,
        categoryId: null,
        status: QuestStatus.backlog,
        coverImageUrl: null,
        note: note,
      );
  return const Ok(null);
}

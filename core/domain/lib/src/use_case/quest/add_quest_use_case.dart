import 'dart:io';

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
  required DateTime? begunAt,
  required DateTime? endedAt,
  required String? categoryId,
  required File? coverImage,
}) async {
  final currentUserId = ref.watch(authenticatorProvider).currentUserId;
  if (currentUserId == null) {
    return Err(Error('Unauthenticated'));
  }

  // TODO: Handle cover image upload to storage service
  String? coverImageUrl;
  if (coverImage != null) {
    // In a real implementation, upload to cloud storage and get URL
    // For now, we'll just pass null
    coverImageUrl = null;
  }

  await ref
      .watch(questRepositoryProvider)
      .createMainQuest(
        userId: currentUserId,
        title: title,
        description: description,
        begunAt: begunAt,
        endedAt: endedAt,
        categoryId: categoryId,
        status: QuestStatus.backlog,
        coverImageUrl: coverImageUrl,
        note: note,
      );
  return const Ok(null);
}

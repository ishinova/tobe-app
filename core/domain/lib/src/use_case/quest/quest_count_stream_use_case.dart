import 'package:core_data/repository.dart';
import 'package:core_model/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_count_stream_use_case.g.dart';

/// クエスト数を取得する ユースケース
@riverpod
Stream<QuestCount> questCountStreamUseCase(Ref ref) {
  final repository = ref.watch(questRepositoryProvider);

  return repository.stream().map(
    (quests) => QuestCount(
      backlog: quests.countByStatus(status: QuestStatus.backlog),
      ready: quests.countByStatus(status: QuestStatus.ready),
      inProgress: quests.countByStatus(status: QuestStatus.inProgress),
      suspend: quests.countByStatus(status: QuestStatus.suspend),
      completed: quests.countByStatus(status: QuestStatus.completed),
      abort: quests.countByStatus(status: QuestStatus.abort),
    ),
  );
}

extension on List<Quest> {
  int countByStatus({required QuestStatus status}) =>
      where((quest) => quest.status == status).length;
}

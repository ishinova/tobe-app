import 'package:core_model/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_dao.g.dart';

@Riverpod(keepAlive: true)
QuestDao questDao(Ref ref) => throw UnimplementedError('questDao');

abstract interface class QuestDao {
  Future<Quest?> getById({required QuestId id});

  Future<List<Quest>> getAll();

  Stream<Quest?> streamById({required QuestId id});

  Stream<List<Quest>> stream({int? offset, int? limit});

  Future<void> insert({required Quest quest});

  Future<void> inserts({required List<Quest> quests});

  Future<void> merges(
    List<
      ({
        QuestId id,
        String title,
        String description,
        DateTime? begunAt,
        DateTime? endedAt,
        String? categoryId,
        String status,
        String? coverImageUrl,
        String note,
      })
    >
    quests,
  );

  Future<bool> update({required Quest quest});

  Future<int> updates({required List<QuestId> ids});

  Future<bool> delete({required QuestId id});

  Future<int> deletes({required List<QuestId> ids});

  Future<int> deleteAll();
}

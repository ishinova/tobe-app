import 'package:core_database/quest_dao.dart';
import 'package:core_database_isar/src/isar.dart';
import 'package:core_database_isar/src/quest/model/quest.dart' as db;
import 'package:core_model/quest.dart';
import 'package:isar/isar.dart';

final isarQuestDaoProvider = questDaoProvider.overrideWith(
  (ref) => IsarQuestDao(isar: ref.watch(isarProvider)),
);

final class IsarQuestDao implements QuestDao {
  IsarQuestDao({required Isar isar}) : _isar = isar;

  final Isar _isar;

  @override
  Future<Quest?> getById({required QuestId id}) async =>
      (await _isar.quests.getAsync(id))?.asModel();

  @override
  Future<List<Quest>> getAll() async => (await _isar.quests.getAllAsync(
    List.empty(),
  )).nonNulls.map((e) => e.asModel()).toList();

  @override
  Stream<Quest?> streamById({required QuestId id}) => _isar.quests
      .where()
      .idEqualTo(id)
      .watch(fireImmediately: true)
      .map((event) => event.firstOrNull?.asModel());

  @override
  Stream<List<Quest>> stream({int? offset, int? limit}) => _isar.quests
      .where()
      .watch(fireImmediately: true, offset: offset, limit: limit)
      .map((event) => event.map((e) => e.asModel()).toList());

  @override
  Future<void> insert({required Quest quest}) async {
    return _isar.writeAsync((isar) async => isar.quests.put(quest.asDbModel()));
  }

  @override
  Future<void> inserts({required List<Quest> quests}) async => _isar.writeAsync(
    (isar) async =>
        isar.quests.putAll(quests.map((e) => e.asDbModel()).toList()),
  );

  @override
  Future<bool> update({required Quest quest}) async => _isar.writeAsync(
    (isar) => isar.quests.update(
      id: quest.id,
      title: quest.title,
      description: quest.description,
      note: quest.note,
    ),
  );

  @override
  Future<int> updates({required List<QuestId> ids}) async =>
      _isar.writeAsync((isar) => isar.quests.updateAll(id: ids));

  @override
  Future<bool> delete({required QuestId id}) async =>
      _isar.writeAsync((isar) => isar.quests.delete(id));

  @override
  Future<int> deletes({required List<QuestId> ids}) async =>
      _isar.writeAsync((isar) => isar.quests.deleteAll(ids));

  @override
  Future<int> deleteAll() async =>
      _isar.writeAsync((isar) => isar.quests.deleteAll(List.empty()));

  @override
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
  ) async {
    await _isar.writeAsync(
      (isar) => isar.quests.putAll(
        quests
            .map(
              (e) => db.Quest(
                id: e.id,
                title: e.title,
                description: e.description,
                begunAt: e.begunAt,
                endedAt: e.endedAt,
                categoryId: e.categoryId,
                status: e.status,
                coverImageUrl: e.coverImageUrl,
                note: e.note,
              ),
            )
            .toList(),
      ),
    );
  }
}

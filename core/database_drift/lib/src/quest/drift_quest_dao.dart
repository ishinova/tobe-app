import 'package:core_database/quest_dao.dart';
import 'package:core_database_drift/src/drift_database.dart';
import 'package:core_database_drift/src/quest/extension/quest_extensions.dart';
import 'package:core_model/quest.dart';
import 'package:drift/drift.dart';

final driftQuestDaoProvider = questDaoProvider.overrideWith(
  (ref) => DriftQuestDao(database: ref.watch(appDatabaseProvider)),
);

final class DriftQuestDao implements QuestDao {
  DriftQuestDao({required AppDatabase database}) : _database = database;

  final AppDatabase _database;

  @override
  Future<Quest?> getById({required QuestId id}) async {
    final query = _database.select(_database.quests)
      ..where((tbl) => tbl.id.equals(id));
    final result = await query.getSingleOrNull();
    return result?.toModel();
  }

  @override
  Future<List<Quest>> getAll() async {
    final results = await _database.select(_database.quests).get();
    return results.map((e) => e.toModel()).toList();
  }

  @override
  Stream<Quest?> streamById({required QuestId id}) {
    final query = _database.select(_database.quests)
      ..where((tbl) => tbl.id.equals(id));
    return query.watchSingleOrNull().map((entity) => entity?.toModel());
  }

  @override
  Stream<List<Quest>> stream({int? offset, int? limit}) {
    final query = _database.select(_database.quests);
    if (limit != null) {
      query.limit(limit, offset: offset);
    }
    return query.watch().map(
      (entities) => entities.map((e) => e.toModel()).toList(),
    );
  }

  @override
  Future<void> insert({required Quest quest}) async {
    await _database.into(_database.quests).insert(quest.toCompanion());
  }

  @override
  Future<void> inserts({required List<Quest> quests}) async {
    await _database.batch((batch) {
      batch.insertAll(
        _database.quests,
        quests.map((e) => e.toCompanion()).toList(),
      );
    });
  }

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
    await _database.batch((batch) {
      batch.insertAllOnConflictUpdate(
        _database.quests,
        quests
            .map(
              (e) => QuestsCompanion.insert(
                id: e.id,
                title: e.title,
                description: e.description,
                begunAt: Value(e.begunAt),
                endedAt: Value(e.endedAt),
                categoryId: Value(e.categoryId),
                status: e.status,
                coverImageUrl: Value(e.coverImageUrl),
                note: Value(e.note),
              ),
            )
            .toList(),
      );
    });
  }

  @override
  Future<bool> update({required Quest quest}) async {
    final query = _database.update(_database.quests)
      ..where((tbl) => tbl.id.equals(quest.id));
    final affected = await query.write(
      QuestsCompanion(
        title: Value(quest.title),
        description: Value(quest.description),
        note: Value(quest.note),
      ),
    );
    return affected > 0;
  }

  @override
  Future<int> updates({required List<QuestId> ids}) async {
    final query = _database.update(_database.quests)
      ..where((tbl) => tbl.id.isIn(ids));
    return query.write(const QuestsCompanion());
  }

  @override
  Future<bool> delete({required QuestId id}) async {
    final query = _database.delete(_database.quests)
      ..where((tbl) => tbl.id.equals(id));
    final affected = await query.go();
    return affected > 0;
  }

  @override
  Future<int> deletes({required List<QuestId> ids}) async {
    final query = _database.delete(_database.quests)
      ..where((tbl) => tbl.id.isIn(ids));
    return query.go();
  }

  @override
  Future<int> deleteAll() async {
    return _database.delete(_database.quests).go();
  }
}

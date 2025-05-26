import 'package:core_common/extension.dart';
import 'package:core_database/quest_dao.dart';
import 'package:core_model/quest.dart';
import 'package:core_network/quest.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quest_repository.g.dart';

@riverpod
QuestRepository questRepository(Ref ref) => QuestRepository(
  dao: ref.watch(questDaoProvider),
  remote: ref.watch(questRemoteDataSourceProvider),
);

/// クエストのリポジトリ
class QuestRepository {
  QuestRepository({
    required QuestDao dao,
    required QuestRemoteDataSource remote,
  }) : _dao = dao,
       _remote = remote;

  final QuestDao _dao;
  final QuestRemoteDataSource _remote;

  Future<Quest?> getById({required QuestId id}) async => _dao.getById(id: id);

  Future<List<Quest>> getAll() => _dao.getAll();

  Stream<Quest?> streamById({required QuestId id}) => _dao.streamById(id: id);

  Stream<List<Quest>> stream({int? offset, int? limit}) =>
      _dao.stream(offset: offset, limit: limit);

  Future<void> createMainQuest({
    required String userId,
    required String title,
    required String description,
    required DateTime? begunAt,
    required DateTime? endedAt,
    required String? categoryId,
    required QuestStatus status,
    required String? coverImageUrl,
    required String note,
  }) async {
    final id = await _remote.createMainQuest(
      title: title,
      description: description,
      note: note,
      userId: userId,
    );
    await _dao.merges([
      (
        id: id,
        title: title,
        description: description,
        begunAt: begunAt,
        endedAt: endedAt,
        categoryId: categoryId,
        status: status.name,
        coverImageUrl: coverImageUrl,
        note: note,
      ),
    ]);
  }

  Future<void> inserts({required List<Quest> quests}) async =>
      _dao.inserts(quests: quests);

  Future<bool> update({required Quest quest}) async =>
      _dao.update(quest: quest);

  Future<int> updates({required List<QuestId> ids}) async =>
      _dao.updates(ids: ids);

  Future<bool> delete({required QuestId id}) async => _dao.delete(id: id);

  Future<int> deletes({required List<QuestId> ids}) async =>
      _dao.deletes(ids: ids);

  Future<int> deleteAll() async => _dao.deleteAll();

  Future<void> sync({required String userId}) async {
    final networkQuestList = await _remote.getMainQuestList(userId: userId);
    await _dao.merges(
      networkQuestList
          .map(
            (e) => (
              id: e.id,
              title: e.title,
              description: e.description,
              begunAt: e.begunAt,
              endedAt: e.endedAt,
              categoryId: e.categoryId,
              status: e.status.toCamelCase(),
              coverImageUrl: e.coverImageUrl,
              note: e.note,
            ),
          )
          .toList(),
    );
  }
}

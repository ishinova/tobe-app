import 'package:core_database_drift/src/drift_database.dart';
import 'package:core_model/quest.dart';
import 'package:drift/drift.dart';

extension QuestEntityExtension on QuestEntity {
  Quest toModel() => Quest(
    id: id,
    title: title,
    description: description,
    begunAt: begunAt,
    endedAt: endedAt,
    categoryId: categoryId,
    status: QuestStatus.values.byName(status),
    coverImageUrl: coverImageUrl,
    note: note,
  );
}

extension QuestModelExtension on Quest {
  QuestsCompanion toCompanion() => QuestsCompanion.insert(
    id: id,
    title: title,
    description: description,
    begunAt: Value(begunAt),
    endedAt: Value(endedAt),
    categoryId: Value(categoryId),
    status: status.name,
    coverImageUrl: Value(coverImageUrl),
    note: Value(note),
  );
}

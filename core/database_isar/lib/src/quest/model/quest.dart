import 'package:core_model/quest.dart' as model;
import 'package:core_model/quest.dart';
import 'package:isar/isar.dart';

part 'quest.g.dart';

@collection
@Name('Quest')
final class Quest {
  Quest({
    required this.id,
    required this.title,
    required this.description,
    required this.begunAt,
    required this.endedAt,
    required this.categoryId,
    required this.status,
    required this.coverImageUrl,
    required this.note,
  });

  final String id;
  final String title;
  final String description;
  final DateTime? begunAt;
  final DateTime? endedAt;
  final String? categoryId;
  final String status;
  final String? coverImageUrl;
  final String note;
}

extension QuestExtension on Quest {
  model.Quest asModel() => model.Quest(
    id: this.id,
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

extension QuestModelExtension on model.Quest {
  Quest asDbModel() => Quest(
    id: this.id,
    title: title,
    description: description,
    begunAt: begunAt,
    endedAt: endedAt,
    categoryId: categoryId,
    status: status.toString(),
    coverImageUrl: coverImageUrl,
    note: note,
  );
}

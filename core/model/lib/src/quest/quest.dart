import 'package:core_model/src/quest/quest_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest.freezed.dart';

typedef QuestId = String;

/// クエスト
///
/// {@category Model}
@freezed
abstract class Quest with _$Quest {
  const factory Quest({
    required QuestId id,
    required String title,
    required String description,
    required DateTime? begunAt,
    required DateTime? endedAt,
    required String? categoryId,
    required QuestStatus status,
    required String? coverImageUrl,
    required String note,
  }) = _Quest;
}

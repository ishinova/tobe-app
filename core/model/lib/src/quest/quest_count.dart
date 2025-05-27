import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest_count.freezed.dart';

/// クエスト数
///
/// {@category Model}
@freezed
abstract class QuestCount with _$QuestCount {
  const factory QuestCount({
    required int backlog,
    required int ready,
    required int inProgress,
    required int suspend,
    required int completed,
    required int abort,
  }) = _QuestCount;

  const QuestCount._();

  int get pending => backlog + inProgress;

  int get total => backlog + ready + inProgress + suspend + completed + abort;
}

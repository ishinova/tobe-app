import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_main_quest.freezed.dart';

part 'network_main_quest.g.dart';

/// メインクエスト
///
/// {@category Model}
@freezed
abstract class NetworkMainQuest with _$NetworkMainQuest {
  const factory NetworkMainQuest({
    required String id,
    required String title,
    required String description,
    required DateTime? begunAt,
    required DateTime? endedAt,
    required String? categoryId,
    required String status,
    required String? coverImageUrl,
    required String note,
  }) = _NetworkMainQuest;

  factory NetworkMainQuest.fromJson(Map<String, Object?> json) =>
      _$NetworkMainQuestFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_main_quest_request.freezed.dart';

part 'create_main_quest_request.g.dart';

/// メインクエスト作成時のリクエスト
///
/// {@category Model}
@freezed
abstract class CreateMainQuestRequest with _$CreateMainQuestRequest {
  const factory CreateMainQuestRequest({
    required String userId,
    required String title,
    required String description,
    required String note,
  }) = _CreateMainQuestRequest;

  factory CreateMainQuestRequest.fromJson(Map<String, Object?> json) =>
      _$CreateMainQuestRequestFromJson(json);
}

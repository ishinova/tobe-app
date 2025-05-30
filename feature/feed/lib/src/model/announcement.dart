import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';

/// Announcement type enum
enum AnnouncementType {
  info,
  warning,
  update,
}

/// Announcement model
@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    required String id,
    required String title,
    required String description,
    required AnnouncementType type,
    required DateTime date,
    @Default(false) bool isNew,
  }) = _Announcement;
}

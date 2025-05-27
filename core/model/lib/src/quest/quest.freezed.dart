// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Quest {
  QuestId get id;
  String get title;
  String get description;
  DateTime? get begunAt;
  DateTime? get endedAt;
  String? get categoryId;
  QuestStatus get status;
  String? get coverImageUrl;
  String get note;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuestCopyWith<Quest> get copyWith =>
      _$QuestCopyWithImpl<Quest>(this as Quest, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Quest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.begunAt, begunAt) || other.begunAt == begunAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, begunAt,
      endedAt, categoryId, status, coverImageUrl, note);

  @override
  String toString() {
    return 'Quest(id: $id, title: $title, description: $description, begunAt: $begunAt, endedAt: $endedAt, categoryId: $categoryId, status: $status, coverImageUrl: $coverImageUrl, note: $note)';
  }
}

/// @nodoc
abstract mixin class $QuestCopyWith<$Res> {
  factory $QuestCopyWith(Quest value, $Res Function(Quest) _then) =
      _$QuestCopyWithImpl;
  @useResult
  $Res call(
      {QuestId id,
      String title,
      String description,
      DateTime? begunAt,
      DateTime? endedAt,
      String? categoryId,
      QuestStatus status,
      String? coverImageUrl,
      String note});
}

/// @nodoc
class _$QuestCopyWithImpl<$Res> implements $QuestCopyWith<$Res> {
  _$QuestCopyWithImpl(this._self, this._then);

  final Quest _self;
  final $Res Function(Quest) _then;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? begunAt = freezed,
    Object? endedAt = freezed,
    Object? categoryId = freezed,
    Object? status = null,
    Object? coverImageUrl = freezed,
    Object? note = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as QuestId,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      begunAt: freezed == begunAt
          ? _self.begunAt
          : begunAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _self.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestStatus,
      coverImageUrl: freezed == coverImageUrl
          ? _self.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Quest implements Quest {
  const _Quest(
      {required this.id,
      required this.title,
      required this.description,
      required this.begunAt,
      required this.endedAt,
      required this.categoryId,
      required this.status,
      required this.coverImageUrl,
      required this.note});

  @override
  final QuestId id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime? begunAt;
  @override
  final DateTime? endedAt;
  @override
  final String? categoryId;
  @override
  final QuestStatus status;
  @override
  final String? coverImageUrl;
  @override
  final String note;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuestCopyWith<_Quest> get copyWith =>
      __$QuestCopyWithImpl<_Quest>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Quest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.begunAt, begunAt) || other.begunAt == begunAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, begunAt,
      endedAt, categoryId, status, coverImageUrl, note);

  @override
  String toString() {
    return 'Quest(id: $id, title: $title, description: $description, begunAt: $begunAt, endedAt: $endedAt, categoryId: $categoryId, status: $status, coverImageUrl: $coverImageUrl, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$QuestCopyWith<$Res> implements $QuestCopyWith<$Res> {
  factory _$QuestCopyWith(_Quest value, $Res Function(_Quest) _then) =
      __$QuestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {QuestId id,
      String title,
      String description,
      DateTime? begunAt,
      DateTime? endedAt,
      String? categoryId,
      QuestStatus status,
      String? coverImageUrl,
      String note});
}

/// @nodoc
class __$QuestCopyWithImpl<$Res> implements _$QuestCopyWith<$Res> {
  __$QuestCopyWithImpl(this._self, this._then);

  final _Quest _self;
  final $Res Function(_Quest) _then;

  /// Create a copy of Quest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? begunAt = freezed,
    Object? endedAt = freezed,
    Object? categoryId = freezed,
    Object? status = null,
    Object? coverImageUrl = freezed,
    Object? note = null,
  }) {
    return _then(_Quest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as QuestId,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      begunAt: freezed == begunAt
          ? _self.begunAt
          : begunAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _self.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestStatus,
      coverImageUrl: freezed == coverImageUrl
          ? _self.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

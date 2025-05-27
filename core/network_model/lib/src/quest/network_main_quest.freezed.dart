// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_main_quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkMainQuest {
  String get id;
  String get title;
  String get description;
  DateTime? get begunAt;
  DateTime? get endedAt;
  String? get categoryId;
  String get status;
  String? get coverImageUrl;
  String get note;

  /// Create a copy of NetworkMainQuest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkMainQuestCopyWith<NetworkMainQuest> get copyWith =>
      _$NetworkMainQuestCopyWithImpl<NetworkMainQuest>(
          this as NetworkMainQuest, _$identity);

  /// Serializes this NetworkMainQuest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkMainQuest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, begunAt,
      endedAt, categoryId, status, coverImageUrl, note);

  @override
  String toString() {
    return 'NetworkMainQuest(id: $id, title: $title, description: $description, begunAt: $begunAt, endedAt: $endedAt, categoryId: $categoryId, status: $status, coverImageUrl: $coverImageUrl, note: $note)';
  }
}

/// @nodoc
abstract mixin class $NetworkMainQuestCopyWith<$Res> {
  factory $NetworkMainQuestCopyWith(
          NetworkMainQuest value, $Res Function(NetworkMainQuest) _then) =
      _$NetworkMainQuestCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime? begunAt,
      DateTime? endedAt,
      String? categoryId,
      String status,
      String? coverImageUrl,
      String note});
}

/// @nodoc
class _$NetworkMainQuestCopyWithImpl<$Res>
    implements $NetworkMainQuestCopyWith<$Res> {
  _$NetworkMainQuestCopyWithImpl(this._self, this._then);

  final NetworkMainQuest _self;
  final $Res Function(NetworkMainQuest) _then;

  /// Create a copy of NetworkMainQuest
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
              as String,
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
              as String,
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
@JsonSerializable()
class _NetworkMainQuest implements NetworkMainQuest {
  const _NetworkMainQuest(
      {required this.id,
      required this.title,
      required this.description,
      required this.begunAt,
      required this.endedAt,
      required this.categoryId,
      required this.status,
      required this.coverImageUrl,
      required this.note});
  factory _NetworkMainQuest.fromJson(Map<String, dynamic> json) =>
      _$NetworkMainQuestFromJson(json);

  @override
  final String id;
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
  final String status;
  @override
  final String? coverImageUrl;
  @override
  final String note;

  /// Create a copy of NetworkMainQuest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkMainQuestCopyWith<_NetworkMainQuest> get copyWith =>
      __$NetworkMainQuestCopyWithImpl<_NetworkMainQuest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkMainQuestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkMainQuest &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, begunAt,
      endedAt, categoryId, status, coverImageUrl, note);

  @override
  String toString() {
    return 'NetworkMainQuest(id: $id, title: $title, description: $description, begunAt: $begunAt, endedAt: $endedAt, categoryId: $categoryId, status: $status, coverImageUrl: $coverImageUrl, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$NetworkMainQuestCopyWith<$Res>
    implements $NetworkMainQuestCopyWith<$Res> {
  factory _$NetworkMainQuestCopyWith(
          _NetworkMainQuest value, $Res Function(_NetworkMainQuest) _then) =
      __$NetworkMainQuestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime? begunAt,
      DateTime? endedAt,
      String? categoryId,
      String status,
      String? coverImageUrl,
      String note});
}

/// @nodoc
class __$NetworkMainQuestCopyWithImpl<$Res>
    implements _$NetworkMainQuestCopyWith<$Res> {
  __$NetworkMainQuestCopyWithImpl(this._self, this._then);

  final _NetworkMainQuest _self;
  final $Res Function(_NetworkMainQuest) _then;

  /// Create a copy of NetworkMainQuest
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
    return _then(_NetworkMainQuest(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
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

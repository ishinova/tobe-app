// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_main_quest_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateMainQuestRequest {
  String get userId;
  String get title;
  String get description;
  String get note;

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateMainQuestRequestCopyWith<CreateMainQuestRequest> get copyWith =>
      _$CreateMainQuestRequestCopyWithImpl<CreateMainQuestRequest>(
          this as CreateMainQuestRequest, _$identity);

  /// Serializes this CreateMainQuestRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateMainQuestRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, title, description, note);

  @override
  String toString() {
    return 'CreateMainQuestRequest(userId: $userId, title: $title, description: $description, note: $note)';
  }
}

/// @nodoc
abstract mixin class $CreateMainQuestRequestCopyWith<$Res> {
  factory $CreateMainQuestRequestCopyWith(CreateMainQuestRequest value,
          $Res Function(CreateMainQuestRequest) _then) =
      _$CreateMainQuestRequestCopyWithImpl;
  @useResult
  $Res call({String userId, String title, String description, String note});
}

/// @nodoc
class _$CreateMainQuestRequestCopyWithImpl<$Res>
    implements $CreateMainQuestRequestCopyWith<$Res> {
  _$CreateMainQuestRequestCopyWithImpl(this._self, this._then);

  final CreateMainQuestRequest _self;
  final $Res Function(CreateMainQuestRequest) _then;

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? description = null,
    Object? note = null,
  }) {
    return _then(_self.copyWith(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateMainQuestRequest implements CreateMainQuestRequest {
  const _CreateMainQuestRequest(
      {required this.userId,
      required this.title,
      required this.description,
      required this.note});
  factory _CreateMainQuestRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateMainQuestRequestFromJson(json);

  @override
  final String userId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String note;

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateMainQuestRequestCopyWith<_CreateMainQuestRequest> get copyWith =>
      __$CreateMainQuestRequestCopyWithImpl<_CreateMainQuestRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateMainQuestRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateMainQuestRequest &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, title, description, note);

  @override
  String toString() {
    return 'CreateMainQuestRequest(userId: $userId, title: $title, description: $description, note: $note)';
  }
}

/// @nodoc
abstract mixin class _$CreateMainQuestRequestCopyWith<$Res>
    implements $CreateMainQuestRequestCopyWith<$Res> {
  factory _$CreateMainQuestRequestCopyWith(_CreateMainQuestRequest value,
          $Res Function(_CreateMainQuestRequest) _then) =
      __$CreateMainQuestRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String userId, String title, String description, String note});
}

/// @nodoc
class __$CreateMainQuestRequestCopyWithImpl<$Res>
    implements _$CreateMainQuestRequestCopyWith<$Res> {
  __$CreateMainQuestRequestCopyWithImpl(this._self, this._then);

  final _CreateMainQuestRequest _self;
  final $Res Function(_CreateMainQuestRequest) _then;

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
    Object? title = null,
    Object? description = null,
    Object? note = null,
  }) {
    return _then(_CreateMainQuestRequest(
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

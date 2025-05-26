// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_main_quest_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateMainQuestRequest _$CreateMainQuestRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CreateMainQuestRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateMainQuestRequest {
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this CreateMainQuestRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateMainQuestRequestCopyWith<CreateMainQuestRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMainQuestRequestCopyWith<$Res> {
  factory $CreateMainQuestRequestCopyWith(
    CreateMainQuestRequest value,
    $Res Function(CreateMainQuestRequest) then,
  ) = _$CreateMainQuestRequestCopyWithImpl<$Res, CreateMainQuestRequest>;
  @useResult
  $Res call({String userId, String title, String description, String note});
}

/// @nodoc
class _$CreateMainQuestRequestCopyWithImpl<
  $Res,
  $Val extends CreateMainQuestRequest
>
    implements $CreateMainQuestRequestCopyWith<$Res> {
  _$CreateMainQuestRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateMainQuestRequestImplCopyWith<$Res>
    implements $CreateMainQuestRequestCopyWith<$Res> {
  factory _$$CreateMainQuestRequestImplCopyWith(
    _$CreateMainQuestRequestImpl value,
    $Res Function(_$CreateMainQuestRequestImpl) then,
  ) = __$$CreateMainQuestRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String title, String description, String note});
}

/// @nodoc
class __$$CreateMainQuestRequestImplCopyWithImpl<$Res>
    extends
        _$CreateMainQuestRequestCopyWithImpl<$Res, _$CreateMainQuestRequestImpl>
    implements _$$CreateMainQuestRequestImplCopyWith<$Res> {
  __$$CreateMainQuestRequestImplCopyWithImpl(
    _$CreateMainQuestRequestImpl _value,
    $Res Function(_$CreateMainQuestRequestImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$CreateMainQuestRequestImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMainQuestRequestImpl implements _CreateMainQuestRequest {
  const _$CreateMainQuestRequestImpl({
    required this.userId,
    required this.title,
    required this.description,
    required this.note,
  });

  factory _$CreateMainQuestRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateMainQuestRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String note;

  @override
  String toString() {
    return 'CreateMainQuestRequest(userId: $userId, title: $title, description: $description, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMainQuestRequestImpl &&
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

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMainQuestRequestImplCopyWith<_$CreateMainQuestRequestImpl>
  get copyWith =>
      __$$CreateMainQuestRequestImplCopyWithImpl<_$CreateMainQuestRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMainQuestRequestImplToJson(this);
  }
}

abstract class _CreateMainQuestRequest implements CreateMainQuestRequest {
  const factory _CreateMainQuestRequest({
    required final String userId,
    required final String title,
    required final String description,
    required final String note,
  }) = _$CreateMainQuestRequestImpl;

  factory _CreateMainQuestRequest.fromJson(Map<String, dynamic> json) =
      _$CreateMainQuestRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get title;
  @override
  String get description;
  @override
  String get note;

  /// Create a copy of CreateMainQuestRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMainQuestRequestImplCopyWith<_$CreateMainQuestRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

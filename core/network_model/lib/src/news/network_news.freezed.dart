// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NetworkNews _$NetworkNewsFromJson(Map<String, dynamic> json) {
  return _NetworkNews.fromJson(json);
}

/// @nodoc
mixin _$NetworkNews {
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;

  /// Serializes this NetworkNews to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkNewsCopyWith<NetworkNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkNewsCopyWith<$Res> {
  factory $NetworkNewsCopyWith(
    NetworkNews value,
    $Res Function(NetworkNews) then,
  ) = _$NetworkNewsCopyWithImpl<$Res, NetworkNews>;
  @useResult
  $Res call({
    String title,
    String slug,
    DateTime publishedAt,
    String excerpt,
    String? coverImageUrl,
  });
}

/// @nodoc
class _$NetworkNewsCopyWithImpl<$Res, $Val extends NetworkNews>
    implements $NetworkNewsCopyWith<$Res> {
  _$NetworkNewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? slug = null,
    Object? publishedAt = null,
    Object? excerpt = null,
    Object? coverImageUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            publishedAt: null == publishedAt
                ? _value.publishedAt
                : publishedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            excerpt: null == excerpt
                ? _value.excerpt
                : excerpt // ignore: cast_nullable_to_non_nullable
                      as String,
            coverImageUrl: freezed == coverImageUrl
                ? _value.coverImageUrl
                : coverImageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NetworkNewsImplCopyWith<$Res>
    implements $NetworkNewsCopyWith<$Res> {
  factory _$$NetworkNewsImplCopyWith(
    _$NetworkNewsImpl value,
    $Res Function(_$NetworkNewsImpl) then,
  ) = __$$NetworkNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String title,
    String slug,
    DateTime publishedAt,
    String excerpt,
    String? coverImageUrl,
  });
}

/// @nodoc
class __$$NetworkNewsImplCopyWithImpl<$Res>
    extends _$NetworkNewsCopyWithImpl<$Res, _$NetworkNewsImpl>
    implements _$$NetworkNewsImplCopyWith<$Res> {
  __$$NetworkNewsImplCopyWithImpl(
    _$NetworkNewsImpl _value,
    $Res Function(_$NetworkNewsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? slug = null,
    Object? publishedAt = null,
    Object? excerpt = null,
    Object? coverImageUrl = freezed,
  }) {
    return _then(
      _$NetworkNewsImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        publishedAt: null == publishedAt
            ? _value.publishedAt
            : publishedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        excerpt: null == excerpt
            ? _value.excerpt
            : excerpt // ignore: cast_nullable_to_non_nullable
                  as String,
        coverImageUrl: freezed == coverImageUrl
            ? _value.coverImageUrl
            : coverImageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkNewsImpl implements _NetworkNews {
  const _$NetworkNewsImpl({
    required this.title,
    required this.slug,
    required this.publishedAt,
    required this.excerpt,
    required this.coverImageUrl,
  });

  factory _$NetworkNewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkNewsImplFromJson(json);

  @override
  final String title;
  @override
  final String slug;
  @override
  final DateTime publishedAt;
  @override
  final String excerpt;
  @override
  final String? coverImageUrl;

  @override
  String toString() {
    return 'NetworkNews(title: $title, slug: $slug, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkNewsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    slug,
    publishedAt,
    excerpt,
    coverImageUrl,
  );

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkNewsImplCopyWith<_$NetworkNewsImpl> get copyWith =>
      __$$NetworkNewsImplCopyWithImpl<_$NetworkNewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkNewsImplToJson(this);
  }
}

abstract class _NetworkNews implements NetworkNews {
  const factory _NetworkNews({
    required final String title,
    required final String slug,
    required final DateTime publishedAt,
    required final String excerpt,
    required final String? coverImageUrl,
  }) = _$NetworkNewsImpl;

  factory _NetworkNews.fromJson(Map<String, dynamic> json) =
      _$NetworkNewsImpl.fromJson;

  @override
  String get title;
  @override
  String get slug;
  @override
  DateTime get publishedAt;
  @override
  String get excerpt;
  @override
  String? get coverImageUrl;

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkNewsImplCopyWith<_$NetworkNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsFeed {
  String get title;
  NewsFeedSlug get slug;
  DateTime get publishedAt;
  String get excerpt;
  String? get coverImageUrl;

  /// Create a copy of NewsFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewsFeedCopyWith<NewsFeed> get copyWith =>
      _$NewsFeedCopyWithImpl<NewsFeed>(this as NewsFeed, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewsFeed &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, slug, publishedAt, excerpt, coverImageUrl);

  @override
  String toString() {
    return 'NewsFeed(title: $title, slug: $slug, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl)';
  }
}

/// @nodoc
abstract mixin class $NewsFeedCopyWith<$Res> {
  factory $NewsFeedCopyWith(NewsFeed value, $Res Function(NewsFeed) _then) =
      _$NewsFeedCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      NewsFeedSlug slug,
      DateTime publishedAt,
      String excerpt,
      String? coverImageUrl});
}

/// @nodoc
class _$NewsFeedCopyWithImpl<$Res> implements $NewsFeedCopyWith<$Res> {
  _$NewsFeedCopyWithImpl(this._self, this._then);

  final NewsFeed _self;
  final $Res Function(NewsFeed) _then;

  /// Create a copy of NewsFeed
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
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as NewsFeedSlug,
      publishedAt: null == publishedAt
          ? _self.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      excerpt: null == excerpt
          ? _self.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: freezed == coverImageUrl
          ? _self.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _NewsFeed implements NewsFeed {
  const _NewsFeed(
      {required this.title,
      required this.slug,
      required this.publishedAt,
      required this.excerpt,
      required this.coverImageUrl});

  @override
  final String title;
  @override
  final NewsFeedSlug slug;
  @override
  final DateTime publishedAt;
  @override
  final String excerpt;
  @override
  final String? coverImageUrl;

  /// Create a copy of NewsFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewsFeedCopyWith<_NewsFeed> get copyWith =>
      __$NewsFeedCopyWithImpl<_NewsFeed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsFeed &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, slug, publishedAt, excerpt, coverImageUrl);

  @override
  String toString() {
    return 'NewsFeed(title: $title, slug: $slug, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$NewsFeedCopyWith<$Res>
    implements $NewsFeedCopyWith<$Res> {
  factory _$NewsFeedCopyWith(_NewsFeed value, $Res Function(_NewsFeed) _then) =
      __$NewsFeedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      NewsFeedSlug slug,
      DateTime publishedAt,
      String excerpt,
      String? coverImageUrl});
}

/// @nodoc
class __$NewsFeedCopyWithImpl<$Res> implements _$NewsFeedCopyWith<$Res> {
  __$NewsFeedCopyWithImpl(this._self, this._then);

  final _NewsFeed _self;
  final $Res Function(_NewsFeed) _then;

  /// Create a copy of NewsFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? slug = null,
    Object? publishedAt = null,
    Object? excerpt = null,
    Object? coverImageUrl = freezed,
  }) {
    return _then(_NewsFeed(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as NewsFeedSlug,
      publishedAt: null == publishedAt
          ? _self.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      excerpt: null == excerpt
          ? _self.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: freezed == coverImageUrl
          ? _self.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

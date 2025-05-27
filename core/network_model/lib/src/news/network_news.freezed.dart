// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkNews {
  String get title;
  String get slug;
  DateTime get publishedAt;
  String get excerpt;
  String? get coverImageUrl;

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkNewsCopyWith<NetworkNews> get copyWith =>
      _$NetworkNewsCopyWithImpl<NetworkNews>(this as NetworkNews, _$identity);

  /// Serializes this NetworkNews to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkNews &&
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
      runtimeType, title, slug, publishedAt, excerpt, coverImageUrl);

  @override
  String toString() {
    return 'NetworkNews(title: $title, slug: $slug, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl)';
  }
}

/// @nodoc
abstract mixin class $NetworkNewsCopyWith<$Res> {
  factory $NetworkNewsCopyWith(
          NetworkNews value, $Res Function(NetworkNews) _then) =
      _$NetworkNewsCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String slug,
      DateTime publishedAt,
      String excerpt,
      String? coverImageUrl});
}

/// @nodoc
class _$NetworkNewsCopyWithImpl<$Res> implements $NetworkNewsCopyWith<$Res> {
  _$NetworkNewsCopyWithImpl(this._self, this._then);

  final NetworkNews _self;
  final $Res Function(NetworkNews) _then;

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
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _NetworkNews implements NetworkNews {
  const _NetworkNews(
      {required this.title,
      required this.slug,
      required this.publishedAt,
      required this.excerpt,
      required this.coverImageUrl});
  factory _NetworkNews.fromJson(Map<String, dynamic> json) =>
      _$NetworkNewsFromJson(json);

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

  /// Create a copy of NetworkNews
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkNewsCopyWith<_NetworkNews> get copyWith =>
      __$NetworkNewsCopyWithImpl<_NetworkNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkNewsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkNews &&
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
      runtimeType, title, slug, publishedAt, excerpt, coverImageUrl);

  @override
  String toString() {
    return 'NetworkNews(title: $title, slug: $slug, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl)';
  }
}

/// @nodoc
abstract mixin class _$NetworkNewsCopyWith<$Res>
    implements $NetworkNewsCopyWith<$Res> {
  factory _$NetworkNewsCopyWith(
          _NetworkNews value, $Res Function(_NetworkNews) _then) =
      __$NetworkNewsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String slug,
      DateTime publishedAt,
      String excerpt,
      String? coverImageUrl});
}

/// @nodoc
class __$NetworkNewsCopyWithImpl<$Res> implements _$NetworkNewsCopyWith<$Res> {
  __$NetworkNewsCopyWithImpl(this._self, this._then);

  final _NetworkNews _self;
  final $Res Function(_NetworkNews) _then;

  /// Create a copy of NetworkNews
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
    return _then(_NetworkNews(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
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

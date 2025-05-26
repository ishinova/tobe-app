// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NewsFeed {
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;

  /// Create a copy of NewsFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsFeedCopyWith<NewsFeed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsFeedCopyWith<$Res> {
  factory $NewsFeedCopyWith(NewsFeed value, $Res Function(NewsFeed) then) =
      _$NewsFeedCopyWithImpl<$Res, NewsFeed>;
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
class _$NewsFeedCopyWithImpl<$Res, $Val extends NewsFeed>
    implements $NewsFeedCopyWith<$Res> {
  _$NewsFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$NewsFeedImplCopyWith<$Res>
    implements $NewsFeedCopyWith<$Res> {
  factory _$$NewsFeedImplCopyWith(
    _$NewsFeedImpl value,
    $Res Function(_$NewsFeedImpl) then,
  ) = __$$NewsFeedImplCopyWithImpl<$Res>;
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
class __$$NewsFeedImplCopyWithImpl<$Res>
    extends _$NewsFeedCopyWithImpl<$Res, _$NewsFeedImpl>
    implements _$$NewsFeedImplCopyWith<$Res> {
  __$$NewsFeedImplCopyWithImpl(
    _$NewsFeedImpl _value,
    $Res Function(_$NewsFeedImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$NewsFeedImpl(
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

class _$NewsFeedImpl implements _NewsFeed {
  const _$NewsFeedImpl({
    required this.title,
    required this.slug,
    required this.publishedAt,
    required this.excerpt,
    required this.coverImageUrl,
  });

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
    return 'NewsFeed(title: $title, slug: $slug, publishedAt: $publishedAt, excerpt: $excerpt, coverImageUrl: $coverImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsFeedImpl &&
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
    runtimeType,
    title,
    slug,
    publishedAt,
    excerpt,
    coverImageUrl,
  );

  /// Create a copy of NewsFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsFeedImplCopyWith<_$NewsFeedImpl> get copyWith =>
      __$$NewsFeedImplCopyWithImpl<_$NewsFeedImpl>(this, _$identity);
}

abstract class _NewsFeed implements NewsFeed {
  const factory _NewsFeed({
    required final String title,
    required final String slug,
    required final DateTime publishedAt,
    required final String excerpt,
    required final String? coverImageUrl,
  }) = _$NewsFeedImpl;

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

  /// Create a copy of NewsFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsFeedImplCopyWith<_$NewsFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetNews.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetNewsData> _$gGetNewsDataSerializer =
    new _$GGetNewsDataSerializer();
Serializer<GGetNewsData_news> _$gGetNewsDataNewsSerializer =
    new _$GGetNewsData_newsSerializer();

class _$GGetNewsDataSerializer implements StructuredSerializer<GGetNewsData> {
  @override
  final Iterable<Type> types = const [GGetNewsData, _$GGetNewsData];
  @override
  final String wireName = 'GGetNewsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetNewsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'news',
      serializers.serialize(object.news,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetNewsData_news)])),
    ];

    return result;
  }

  @override
  GGetNewsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetNewsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'news':
          result.news.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GGetNewsData_news)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetNewsData_newsSerializer
    implements StructuredSerializer<GGetNewsData_news> {
  @override
  final Iterable<Type> types = const [GGetNewsData_news, _$GGetNewsData_news];
  @override
  final String wireName = 'GGetNewsData_news';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetNewsData_news object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
      'excerpt',
      serializers.serialize(object.excerpt,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.publishedAt;
    if (value != null) {
      result
        ..add('publishedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coverImageUrl;
    if (value != null) {
      result
        ..add('coverImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetNewsData_news deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetNewsData_newsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'publishedAt':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'excerpt':
          result.excerpt = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'coverImageUrl':
          result.coverImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetNewsData extends GGetNewsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetNewsData_news> news;

  factory _$GGetNewsData([void Function(GGetNewsDataBuilder)? updates]) =>
      (new GGetNewsDataBuilder()..update(updates))._build();

  _$GGetNewsData._({required this.G__typename, required this.news})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetNewsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(news, r'GGetNewsData', 'news');
  }

  @override
  GGetNewsData rebuild(void Function(GGetNewsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetNewsDataBuilder toBuilder() => new GGetNewsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetNewsData &&
        G__typename == other.G__typename &&
        news == other.news;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, news.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetNewsData')
          ..add('G__typename', G__typename)
          ..add('news', news))
        .toString();
  }
}

class GGetNewsDataBuilder
    implements Builder<GGetNewsData, GGetNewsDataBuilder> {
  _$GGetNewsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetNewsData_news>? _news;
  ListBuilder<GGetNewsData_news> get news =>
      _$this._news ??= new ListBuilder<GGetNewsData_news>();
  set news(ListBuilder<GGetNewsData_news>? news) => _$this._news = news;

  GGetNewsDataBuilder() {
    GGetNewsData._initializeBuilder(this);
  }

  GGetNewsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _news = $v.news.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetNewsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetNewsData;
  }

  @override
  void update(void Function(GGetNewsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetNewsData build() => _build();

  _$GGetNewsData _build() {
    _$GGetNewsData _$result;
    try {
      _$result = _$v ??
          new _$GGetNewsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetNewsData', 'G__typename'),
            news: news.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'news';
        news.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetNewsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetNewsData_news extends GGetNewsData_news {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String slug;
  @override
  final DateTime? publishedAt;
  @override
  final String excerpt;
  @override
  final String? coverImageUrl;

  factory _$GGetNewsData_news(
          [void Function(GGetNewsData_newsBuilder)? updates]) =>
      (new GGetNewsData_newsBuilder()..update(updates))._build();

  _$GGetNewsData_news._(
      {required this.G__typename,
      required this.title,
      required this.slug,
      this.publishedAt,
      required this.excerpt,
      this.coverImageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetNewsData_news', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(title, r'GGetNewsData_news', 'title');
    BuiltValueNullFieldError.checkNotNull(slug, r'GGetNewsData_news', 'slug');
    BuiltValueNullFieldError.checkNotNull(
        excerpt, r'GGetNewsData_news', 'excerpt');
  }

  @override
  GGetNewsData_news rebuild(void Function(GGetNewsData_newsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetNewsData_newsBuilder toBuilder() =>
      new GGetNewsData_newsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetNewsData_news &&
        G__typename == other.G__typename &&
        title == other.title &&
        slug == other.slug &&
        publishedAt == other.publishedAt &&
        excerpt == other.excerpt &&
        coverImageUrl == other.coverImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, slug.hashCode);
    _$hash = $jc(_$hash, publishedAt.hashCode);
    _$hash = $jc(_$hash, excerpt.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetNewsData_news')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('slug', slug)
          ..add('publishedAt', publishedAt)
          ..add('excerpt', excerpt)
          ..add('coverImageUrl', coverImageUrl))
        .toString();
  }
}

class GGetNewsData_newsBuilder
    implements Builder<GGetNewsData_news, GGetNewsData_newsBuilder> {
  _$GGetNewsData_news? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  DateTime? _publishedAt;
  DateTime? get publishedAt => _$this._publishedAt;
  set publishedAt(DateTime? publishedAt) => _$this._publishedAt = publishedAt;

  String? _excerpt;
  String? get excerpt => _$this._excerpt;
  set excerpt(String? excerpt) => _$this._excerpt = excerpt;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  GGetNewsData_newsBuilder() {
    GGetNewsData_news._initializeBuilder(this);
  }

  GGetNewsData_newsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _slug = $v.slug;
      _publishedAt = $v.publishedAt;
      _excerpt = $v.excerpt;
      _coverImageUrl = $v.coverImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetNewsData_news other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetNewsData_news;
  }

  @override
  void update(void Function(GGetNewsData_newsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetNewsData_news build() => _build();

  _$GGetNewsData_news _build() {
    final _$result = _$v ??
        new _$GGetNewsData_news._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GGetNewsData_news', 'G__typename'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GGetNewsData_news', 'title'),
          slug: BuiltValueNullFieldError.checkNotNull(
              slug, r'GGetNewsData_news', 'slug'),
          publishedAt: publishedAt,
          excerpt: BuiltValueNullFieldError.checkNotNull(
              excerpt, r'GGetNewsData_news', 'excerpt'),
          coverImageUrl: coverImageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

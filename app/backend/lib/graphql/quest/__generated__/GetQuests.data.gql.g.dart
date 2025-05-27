// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetQuests.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetQuestsData> _$gGetQuestsDataSerializer =
    new _$GGetQuestsDataSerializer();
Serializer<GGetQuestsData_mainQuests> _$gGetQuestsDataMainQuestsSerializer =
    new _$GGetQuestsData_mainQuestsSerializer();

class _$GGetQuestsDataSerializer
    implements StructuredSerializer<GGetQuestsData> {
  @override
  final Iterable<Type> types = const [GGetQuestsData, _$GGetQuestsData];
  @override
  final String wireName = 'GGetQuestsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetQuestsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'mainQuests',
      serializers.serialize(object.mainQuests,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetQuestsData_mainQuests)])),
    ];

    return result;
  }

  @override
  GGetQuestsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetQuestsDataBuilder();

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
        case 'mainQuests':
          result.mainQuests.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetQuestsData_mainQuests)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetQuestsData_mainQuestsSerializer
    implements StructuredSerializer<GGetQuestsData_mainQuests> {
  @override
  final Iterable<Type> types = const [
    GGetQuestsData_mainQuests,
    _$GGetQuestsData_mainQuests
  ];
  @override
  final String wireName = 'GGetQuestsData_mainQuests';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetQuestsData_mainQuests object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(_i2.GQuestStatusEnum)),
      'note',
      serializers.serialize(object.note, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.begunAt;
    if (value != null) {
      result
        ..add('begunAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endedAt;
    if (value != null) {
      result
        ..add('endedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.categoryId;
    if (value != null) {
      result
        ..add('categoryId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GGetQuestsData_mainQuests deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetQuestsData_mainQuestsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'begunAt':
          result.begunAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endedAt':
          result.endedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'categoryId':
          result.categoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GQuestStatusEnum))!
              as _i2.GQuestStatusEnum;
          break;
        case 'coverImageUrl':
          result.coverImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetQuestsData extends GGetQuestsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetQuestsData_mainQuests> mainQuests;

  factory _$GGetQuestsData([void Function(GGetQuestsDataBuilder)? updates]) =>
      (new GGetQuestsDataBuilder()..update(updates))._build();

  _$GGetQuestsData._({required this.G__typename, required this.mainQuests})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetQuestsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        mainQuests, r'GGetQuestsData', 'mainQuests');
  }

  @override
  GGetQuestsData rebuild(void Function(GGetQuestsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetQuestsDataBuilder toBuilder() =>
      new GGetQuestsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetQuestsData &&
        G__typename == other.G__typename &&
        mainQuests == other.mainQuests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, mainQuests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetQuestsData')
          ..add('G__typename', G__typename)
          ..add('mainQuests', mainQuests))
        .toString();
  }
}

class GGetQuestsDataBuilder
    implements Builder<GGetQuestsData, GGetQuestsDataBuilder> {
  _$GGetQuestsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetQuestsData_mainQuests>? _mainQuests;
  ListBuilder<GGetQuestsData_mainQuests> get mainQuests =>
      _$this._mainQuests ??= new ListBuilder<GGetQuestsData_mainQuests>();
  set mainQuests(ListBuilder<GGetQuestsData_mainQuests>? mainQuests) =>
      _$this._mainQuests = mainQuests;

  GGetQuestsDataBuilder() {
    GGetQuestsData._initializeBuilder(this);
  }

  GGetQuestsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _mainQuests = $v.mainQuests.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetQuestsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetQuestsData;
  }

  @override
  void update(void Function(GGetQuestsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetQuestsData build() => _build();

  _$GGetQuestsData _build() {
    _$GGetQuestsData _$result;
    try {
      _$result = _$v ??
          new _$GGetQuestsData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GGetQuestsData', 'G__typename'),
            mainQuests: mainQuests.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainQuests';
        mainQuests.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GGetQuestsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetQuestsData_mainQuests extends GGetQuestsData_mainQuests {
  @override
  final String G__typename;
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
  final _i2.GQuestStatusEnum status;
  @override
  final String? coverImageUrl;
  @override
  final String note;

  factory _$GGetQuestsData_mainQuests(
          [void Function(GGetQuestsData_mainQuestsBuilder)? updates]) =>
      (new GGetQuestsData_mainQuestsBuilder()..update(updates))._build();

  _$GGetQuestsData_mainQuests._(
      {required this.G__typename,
      required this.id,
      required this.title,
      required this.description,
      this.begunAt,
      this.endedAt,
      this.categoryId,
      required this.status,
      this.coverImageUrl,
      required this.note})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GGetQuestsData_mainQuests', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GGetQuestsData_mainQuests', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GGetQuestsData_mainQuests', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'GGetQuestsData_mainQuests', 'description');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GGetQuestsData_mainQuests', 'status');
    BuiltValueNullFieldError.checkNotNull(
        note, r'GGetQuestsData_mainQuests', 'note');
  }

  @override
  GGetQuestsData_mainQuests rebuild(
          void Function(GGetQuestsData_mainQuestsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetQuestsData_mainQuestsBuilder toBuilder() =>
      new GGetQuestsData_mainQuestsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetQuestsData_mainQuests &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        begunAt == other.begunAt &&
        endedAt == other.endedAt &&
        categoryId == other.categoryId &&
        status == other.status &&
        coverImageUrl == other.coverImageUrl &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, begunAt.hashCode);
    _$hash = $jc(_$hash, endedAt.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, coverImageUrl.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetQuestsData_mainQuests')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('begunAt', begunAt)
          ..add('endedAt', endedAt)
          ..add('categoryId', categoryId)
          ..add('status', status)
          ..add('coverImageUrl', coverImageUrl)
          ..add('note', note))
        .toString();
  }
}

class GGetQuestsData_mainQuestsBuilder
    implements
        Builder<GGetQuestsData_mainQuests, GGetQuestsData_mainQuestsBuilder> {
  _$GGetQuestsData_mainQuests? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _begunAt;
  DateTime? get begunAt => _$this._begunAt;
  set begunAt(DateTime? begunAt) => _$this._begunAt = begunAt;

  DateTime? _endedAt;
  DateTime? get endedAt => _$this._endedAt;
  set endedAt(DateTime? endedAt) => _$this._endedAt = endedAt;

  String? _categoryId;
  String? get categoryId => _$this._categoryId;
  set categoryId(String? categoryId) => _$this._categoryId = categoryId;

  _i2.GQuestStatusEnum? _status;
  _i2.GQuestStatusEnum? get status => _$this._status;
  set status(_i2.GQuestStatusEnum? status) => _$this._status = status;

  String? _coverImageUrl;
  String? get coverImageUrl => _$this._coverImageUrl;
  set coverImageUrl(String? coverImageUrl) =>
      _$this._coverImageUrl = coverImageUrl;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  GGetQuestsData_mainQuestsBuilder() {
    GGetQuestsData_mainQuests._initializeBuilder(this);
  }

  GGetQuestsData_mainQuestsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _begunAt = $v.begunAt;
      _endedAt = $v.endedAt;
      _categoryId = $v.categoryId;
      _status = $v.status;
      _coverImageUrl = $v.coverImageUrl;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetQuestsData_mainQuests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetQuestsData_mainQuests;
  }

  @override
  void update(void Function(GGetQuestsData_mainQuestsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetQuestsData_mainQuests build() => _build();

  _$GGetQuestsData_mainQuests _build() {
    final _$result = _$v ??
        new _$GGetQuestsData_mainQuests._(
          G__typename: BuiltValueNullFieldError.checkNotNull(
              G__typename, r'GGetQuestsData_mainQuests', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GGetQuestsData_mainQuests', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GGetQuestsData_mainQuests', 'title'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'GGetQuestsData_mainQuests', 'description'),
          begunAt: begunAt,
          endedAt: endedAt,
          categoryId: categoryId,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'GGetQuestsData_mainQuests', 'status'),
          coverImageUrl: coverImageUrl,
          note: BuiltValueNullFieldError.checkNotNull(
              note, r'GGetQuestsData_mainQuests', 'note'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InsertMainQuest.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GInsertMainQuestData> _$gInsertMainQuestDataSerializer =
    new _$GInsertMainQuestDataSerializer();
Serializer<GInsertMainQuestData_insertMainQuestsOne>
    _$gInsertMainQuestDataInsertMainQuestsOneSerializer =
    new _$GInsertMainQuestData_insertMainQuestsOneSerializer();

class _$GInsertMainQuestDataSerializer
    implements StructuredSerializer<GInsertMainQuestData> {
  @override
  final Iterable<Type> types = const [
    GInsertMainQuestData,
    _$GInsertMainQuestData
  ];
  @override
  final String wireName = 'GInsertMainQuestData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInsertMainQuestData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.insertMainQuestsOne;
    if (value != null) {
      result
        ..add('insertMainQuestsOne')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GInsertMainQuestData_insertMainQuestsOne)));
    }
    return result;
  }

  @override
  GInsertMainQuestData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInsertMainQuestDataBuilder();

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
        case 'insertMainQuestsOne':
          result.insertMainQuestsOne.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GInsertMainQuestData_insertMainQuestsOne))!
              as GInsertMainQuestData_insertMainQuestsOne);
          break;
      }
    }

    return result.build();
  }
}

class _$GInsertMainQuestData_insertMainQuestsOneSerializer
    implements StructuredSerializer<GInsertMainQuestData_insertMainQuestsOne> {
  @override
  final Iterable<Type> types = const [
    GInsertMainQuestData_insertMainQuestsOne,
    _$GInsertMainQuestData_insertMainQuestsOne
  ];
  @override
  final String wireName = 'GInsertMainQuestData_insertMainQuestsOne';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInsertMainQuestData_insertMainQuestsOne object,
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
  GInsertMainQuestData_insertMainQuestsOne deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInsertMainQuestData_insertMainQuestsOneBuilder();

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

class _$GInsertMainQuestData extends GInsertMainQuestData {
  @override
  final String G__typename;
  @override
  final GInsertMainQuestData_insertMainQuestsOne? insertMainQuestsOne;

  factory _$GInsertMainQuestData(
          [void Function(GInsertMainQuestDataBuilder)? updates]) =>
      (new GInsertMainQuestDataBuilder()..update(updates))._build();

  _$GInsertMainQuestData._(
      {required this.G__typename, this.insertMainQuestsOne})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GInsertMainQuestData', 'G__typename');
  }

  @override
  GInsertMainQuestData rebuild(
          void Function(GInsertMainQuestDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInsertMainQuestDataBuilder toBuilder() =>
      new GInsertMainQuestDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInsertMainQuestData &&
        G__typename == other.G__typename &&
        insertMainQuestsOne == other.insertMainQuestsOne;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, insertMainQuestsOne.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInsertMainQuestData')
          ..add('G__typename', G__typename)
          ..add('insertMainQuestsOne', insertMainQuestsOne))
        .toString();
  }
}

class GInsertMainQuestDataBuilder
    implements Builder<GInsertMainQuestData, GInsertMainQuestDataBuilder> {
  _$GInsertMainQuestData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GInsertMainQuestData_insertMainQuestsOneBuilder? _insertMainQuestsOne;
  GInsertMainQuestData_insertMainQuestsOneBuilder get insertMainQuestsOne =>
      _$this._insertMainQuestsOne ??=
          new GInsertMainQuestData_insertMainQuestsOneBuilder();
  set insertMainQuestsOne(
          GInsertMainQuestData_insertMainQuestsOneBuilder?
              insertMainQuestsOne) =>
      _$this._insertMainQuestsOne = insertMainQuestsOne;

  GInsertMainQuestDataBuilder() {
    GInsertMainQuestData._initializeBuilder(this);
  }

  GInsertMainQuestDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _insertMainQuestsOne = $v.insertMainQuestsOne?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInsertMainQuestData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInsertMainQuestData;
  }

  @override
  void update(void Function(GInsertMainQuestDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInsertMainQuestData build() => _build();

  _$GInsertMainQuestData _build() {
    _$GInsertMainQuestData _$result;
    try {
      _$result = _$v ??
          new _$GInsertMainQuestData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GInsertMainQuestData', 'G__typename'),
            insertMainQuestsOne: _insertMainQuestsOne?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'insertMainQuestsOne';
        _insertMainQuestsOne?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GInsertMainQuestData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GInsertMainQuestData_insertMainQuestsOne
    extends GInsertMainQuestData_insertMainQuestsOne {
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

  factory _$GInsertMainQuestData_insertMainQuestsOne(
          [void Function(GInsertMainQuestData_insertMainQuestsOneBuilder)?
              updates]) =>
      (new GInsertMainQuestData_insertMainQuestsOneBuilder()..update(updates))
          ._build();

  _$GInsertMainQuestData_insertMainQuestsOne._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GInsertMainQuestData_insertMainQuestsOne', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GInsertMainQuestData_insertMainQuestsOne', 'id');
    BuiltValueNullFieldError.checkNotNull(
        title, r'GInsertMainQuestData_insertMainQuestsOne', 'title');
    BuiltValueNullFieldError.checkNotNull(description,
        r'GInsertMainQuestData_insertMainQuestsOne', 'description');
    BuiltValueNullFieldError.checkNotNull(
        status, r'GInsertMainQuestData_insertMainQuestsOne', 'status');
    BuiltValueNullFieldError.checkNotNull(
        note, r'GInsertMainQuestData_insertMainQuestsOne', 'note');
  }

  @override
  GInsertMainQuestData_insertMainQuestsOne rebuild(
          void Function(GInsertMainQuestData_insertMainQuestsOneBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInsertMainQuestData_insertMainQuestsOneBuilder toBuilder() =>
      new GInsertMainQuestData_insertMainQuestsOneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInsertMainQuestData_insertMainQuestsOne &&
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
    return (newBuiltValueToStringHelper(
            r'GInsertMainQuestData_insertMainQuestsOne')
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

class GInsertMainQuestData_insertMainQuestsOneBuilder
    implements
        Builder<GInsertMainQuestData_insertMainQuestsOne,
            GInsertMainQuestData_insertMainQuestsOneBuilder> {
  _$GInsertMainQuestData_insertMainQuestsOne? _$v;

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

  GInsertMainQuestData_insertMainQuestsOneBuilder() {
    GInsertMainQuestData_insertMainQuestsOne._initializeBuilder(this);
  }

  GInsertMainQuestData_insertMainQuestsOneBuilder get _$this {
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
  void replace(GInsertMainQuestData_insertMainQuestsOne other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInsertMainQuestData_insertMainQuestsOne;
  }

  @override
  void update(
      void Function(GInsertMainQuestData_insertMainQuestsOneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInsertMainQuestData_insertMainQuestsOne build() => _build();

  _$GInsertMainQuestData_insertMainQuestsOne _build() {
    final _$result = _$v ??
        new _$GInsertMainQuestData_insertMainQuestsOne._(
          G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
              r'GInsertMainQuestData_insertMainQuestsOne', 'G__typename'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GInsertMainQuestData_insertMainQuestsOne', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'GInsertMainQuestData_insertMainQuestsOne', 'title'),
          description: BuiltValueNullFieldError.checkNotNull(description,
              r'GInsertMainQuestData_insertMainQuestsOne', 'description'),
          begunAt: begunAt,
          endedAt: endedAt,
          categoryId: categoryId,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'GInsertMainQuestData_insertMainQuestsOne', 'status'),
          coverImageUrl: coverImageUrl,
          note: BuiltValueNullFieldError.checkNotNull(
              note, r'GInsertMainQuestData_insertMainQuestsOne', 'note'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

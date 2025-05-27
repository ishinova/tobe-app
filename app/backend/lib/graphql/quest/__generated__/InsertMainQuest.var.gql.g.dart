// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InsertMainQuest.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GInsertMainQuestVars> _$gInsertMainQuestVarsSerializer =
    new _$GInsertMainQuestVarsSerializer();

class _$GInsertMainQuestVarsSerializer
    implements StructuredSerializer<GInsertMainQuestVars> {
  @override
  final Iterable<Type> types = const [
    GInsertMainQuestVars,
    _$GInsertMainQuestVars
  ];
  @override
  final String wireName = 'GInsertMainQuestVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInsertMainQuestVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GInsertMainQuestVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInsertMainQuestVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GInsertMainQuestVars extends GInsertMainQuestVars {
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? note;

  factory _$GInsertMainQuestVars(
          [void Function(GInsertMainQuestVarsBuilder)? updates]) =>
      (new GInsertMainQuestVarsBuilder()..update(updates))._build();

  _$GInsertMainQuestVars._(
      {this.userId, this.title, this.description, this.note})
      : super._();

  @override
  GInsertMainQuestVars rebuild(
          void Function(GInsertMainQuestVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInsertMainQuestVarsBuilder toBuilder() =>
      new GInsertMainQuestVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInsertMainQuestVars &&
        userId == other.userId &&
        title == other.title &&
        description == other.description &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GInsertMainQuestVars')
          ..add('userId', userId)
          ..add('title', title)
          ..add('description', description)
          ..add('note', note))
        .toString();
  }
}

class GInsertMainQuestVarsBuilder
    implements Builder<GInsertMainQuestVars, GInsertMainQuestVarsBuilder> {
  _$GInsertMainQuestVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  GInsertMainQuestVarsBuilder();

  GInsertMainQuestVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _title = $v.title;
      _description = $v.description;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInsertMainQuestVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInsertMainQuestVars;
  }

  @override
  void update(void Function(GInsertMainQuestVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GInsertMainQuestVars build() => _build();

  _$GInsertMainQuestVars _build() {
    final _$result = _$v ??
        new _$GInsertMainQuestVars._(
          userId: userId,
          title: title,
          description: description,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetQuests.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetQuestsVars> _$gGetQuestsVarsSerializer =
    new _$GGetQuestsVarsSerializer();

class _$GGetQuestsVarsSerializer
    implements StructuredSerializer<GGetQuestsVars> {
  @override
  final Iterable<Type> types = const [GGetQuestsVars, _$GGetQuestsVars];
  @override
  final String wireName = 'GGetQuestsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetQuestsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetQuestsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetQuestsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetQuestsVars extends GGetQuestsVars {
  @override
  final String userId;

  factory _$GGetQuestsVars([void Function(GGetQuestsVarsBuilder)? updates]) =>
      (new GGetQuestsVarsBuilder()..update(updates))._build();

  _$GGetQuestsVars._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, r'GGetQuestsVars', 'userId');
  }

  @override
  GGetQuestsVars rebuild(void Function(GGetQuestsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetQuestsVarsBuilder toBuilder() =>
      new GGetQuestsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetQuestsVars && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GGetQuestsVars')
          ..add('userId', userId))
        .toString();
  }
}

class GGetQuestsVarsBuilder
    implements Builder<GGetQuestsVars, GGetQuestsVarsBuilder> {
  _$GGetQuestsVars? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  GGetQuestsVarsBuilder();

  GGetQuestsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetQuestsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetQuestsVars;
  }

  @override
  void update(void Function(GGetQuestsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetQuestsVars build() => _build();

  _$GGetQuestsVars _build() {
    final _$result = _$v ??
        new _$GGetQuestsVars._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'GGetQuestsVars', 'userId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

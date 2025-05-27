// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetNews.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetNewsVars> _$gGetNewsVarsSerializer =
    new _$GGetNewsVarsSerializer();

class _$GGetNewsVarsSerializer implements StructuredSerializer<GGetNewsVars> {
  @override
  final Iterable<Type> types = const [GGetNewsVars, _$GGetNewsVars];
  @override
  final String wireName = 'GGetNewsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetNewsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetNewsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetNewsVarsBuilder().build();
  }
}

class _$GGetNewsVars extends GGetNewsVars {
  factory _$GGetNewsVars([void Function(GGetNewsVarsBuilder)? updates]) =>
      (new GGetNewsVarsBuilder()..update(updates))._build();

  _$GGetNewsVars._() : super._();

  @override
  GGetNewsVars rebuild(void Function(GGetNewsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetNewsVarsBuilder toBuilder() => new GGetNewsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetNewsVars;
  }

  @override
  int get hashCode {
    return 635879325;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GGetNewsVars').toString();
  }
}

class GGetNewsVarsBuilder
    implements Builder<GGetNewsVars, GGetNewsVarsBuilder> {
  _$GGetNewsVars? _$v;

  GGetNewsVarsBuilder();

  @override
  void replace(GGetNewsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetNewsVars;
  }

  @override
  void update(void Function(GGetNewsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GGetNewsVars build() => _build();

  _$GGetNewsVars _build() {
    final _$result = _$v ?? new _$GGetNewsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

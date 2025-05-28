// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'GetNews.var.gql.g.dart';

abstract class GGetNewsVars
    implements Built<GGetNewsVars, GGetNewsVarsBuilder> {
  GGetNewsVars._();

  factory GGetNewsVars([void Function(GGetNewsVarsBuilder b) updates]) =
      _$GGetNewsVars;

  static Serializer<GGetNewsVars> get serializer => _$gGetNewsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetNewsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetNewsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetNewsVars.serializer,
        json,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'GetQuests.var.gql.g.dart';

abstract class GGetQuestsVars
    implements Built<GGetQuestsVars, GGetQuestsVarsBuilder> {
  GGetQuestsVars._();

  factory GGetQuestsVars([void Function(GGetQuestsVarsBuilder b) updates]) =
      _$GGetQuestsVars;

  String get userId;
  static Serializer<GGetQuestsVars> get serializer =>
      _$gGetQuestsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetQuestsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetQuestsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetQuestsVars.serializer,
        json,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'InsertMainQuest.var.gql.g.dart';

abstract class GInsertMainQuestVars
    implements Built<GInsertMainQuestVars, GInsertMainQuestVarsBuilder> {
  GInsertMainQuestVars._();

  factory GInsertMainQuestVars(
          [void Function(GInsertMainQuestVarsBuilder b) updates]) =
      _$GInsertMainQuestVars;

  String? get userId;
  String? get title;
  String? get description;
  String? get note;
  static Serializer<GInsertMainQuestVars> get serializer =>
      _$gInsertMainQuestVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInsertMainQuestVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInsertMainQuestVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInsertMainQuestVars.serializer,
        json,
      );
}

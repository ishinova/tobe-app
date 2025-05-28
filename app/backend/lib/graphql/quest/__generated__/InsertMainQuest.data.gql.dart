// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'InsertMainQuest.data.gql.g.dart';

abstract class GInsertMainQuestData
    implements Built<GInsertMainQuestData, GInsertMainQuestDataBuilder> {
  GInsertMainQuestData._();

  factory GInsertMainQuestData(
          [void Function(GInsertMainQuestDataBuilder b) updates]) =
      _$GInsertMainQuestData;

  static void _initializeBuilder(GInsertMainQuestDataBuilder b) =>
      b..G__typename = 'mutation_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GInsertMainQuestData_insertMainQuestsOne? get insertMainQuestsOne;
  static Serializer<GInsertMainQuestData> get serializer =>
      _$gInsertMainQuestDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInsertMainQuestData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInsertMainQuestData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInsertMainQuestData.serializer,
        json,
      );
}

abstract class GInsertMainQuestData_insertMainQuestsOne
    implements
        Built<GInsertMainQuestData_insertMainQuestsOne,
            GInsertMainQuestData_insertMainQuestsOneBuilder> {
  GInsertMainQuestData_insertMainQuestsOne._();

  factory GInsertMainQuestData_insertMainQuestsOne(
      [void Function(GInsertMainQuestData_insertMainQuestsOneBuilder b)
          updates]) = _$GInsertMainQuestData_insertMainQuestsOne;

  static void _initializeBuilder(
          GInsertMainQuestData_insertMainQuestsOneBuilder b) =>
      b..G__typename = 'MainQuests';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get title;
  String get description;
  DateTime? get begunAt;
  DateTime? get endedAt;
  String? get categoryId;
  _i2.GQuestStatusEnum get status;
  String? get coverImageUrl;
  String get note;
  static Serializer<GInsertMainQuestData_insertMainQuestsOne> get serializer =>
      _$gInsertMainQuestDataInsertMainQuestsOneSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInsertMainQuestData_insertMainQuestsOne.serializer,
        this,
      ) as Map<String, dynamic>);

  static GInsertMainQuestData_insertMainQuestsOne? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInsertMainQuestData_insertMainQuestsOne.serializer,
        json,
      );
}

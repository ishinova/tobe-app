// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'GetQuests.data.gql.g.dart';

abstract class GGetQuestsData
    implements Built<GGetQuestsData, GGetQuestsDataBuilder> {
  GGetQuestsData._();

  factory GGetQuestsData([void Function(GGetQuestsDataBuilder b) updates]) =
      _$GGetQuestsData;

  static void _initializeBuilder(GGetQuestsDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetQuestsData_mainQuests> get mainQuests;
  static Serializer<GGetQuestsData> get serializer =>
      _$gGetQuestsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetQuestsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetQuestsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetQuestsData.serializer,
        json,
      );
}

abstract class GGetQuestsData_mainQuests
    implements
        Built<GGetQuestsData_mainQuests, GGetQuestsData_mainQuestsBuilder> {
  GGetQuestsData_mainQuests._();

  factory GGetQuestsData_mainQuests(
          [void Function(GGetQuestsData_mainQuestsBuilder b) updates]) =
      _$GGetQuestsData_mainQuests;

  static void _initializeBuilder(GGetQuestsData_mainQuestsBuilder b) =>
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
  static Serializer<GGetQuestsData_mainQuests> get serializer =>
      _$gGetQuestsDataMainQuestsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetQuestsData_mainQuests.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetQuestsData_mainQuests? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetQuestsData_mainQuests.serializer,
        json,
      );
}

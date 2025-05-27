// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'GetNews.data.gql.g.dart';

abstract class GGetNewsData
    implements Built<GGetNewsData, GGetNewsDataBuilder> {
  GGetNewsData._();

  factory GGetNewsData([void Function(GGetNewsDataBuilder b) updates]) =
      _$GGetNewsData;

  static void _initializeBuilder(GGetNewsDataBuilder b) =>
      b..G__typename = 'query_root';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetNewsData_news> get news;
  static Serializer<GGetNewsData> get serializer => _$gGetNewsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetNewsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetNewsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetNewsData.serializer,
        json,
      );
}

abstract class GGetNewsData_news
    implements Built<GGetNewsData_news, GGetNewsData_newsBuilder> {
  GGetNewsData_news._();

  factory GGetNewsData_news(
          [void Function(GGetNewsData_newsBuilder b) updates]) =
      _$GGetNewsData_news;

  static void _initializeBuilder(GGetNewsData_newsBuilder b) =>
      b..G__typename = 'News';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  String get slug;
  DateTime? get publishedAt;
  String get excerpt;
  String? get coverImageUrl;
  static Serializer<GGetNewsData_news> get serializer =>
      _$gGetNewsDataNewsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetNewsData_news.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetNewsData_news? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetNewsData_news.serializer,
        json,
      );
}

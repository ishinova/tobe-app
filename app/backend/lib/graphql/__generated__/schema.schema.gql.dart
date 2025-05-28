// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i1;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.schema.gql.g.dart';

abstract class GAchievementsBoolExp
    implements Built<GAchievementsBoolExp, GAchievementsBoolExpBuilder> {
  GAchievementsBoolExp._();

  factory GAchievementsBoolExp(
          [void Function(GAchievementsBoolExpBuilder b) updates]) =
      _$GAchievementsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GAchievementsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GAchievementsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GAchievementsBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get description;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get name;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GAchievementsBoolExp> get serializer =>
      _$gAchievementsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAchievementsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAchievementsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAchievementsBoolExp.serializer,
        json,
      );
}

abstract class GAchievementsOrderBy
    implements Built<GAchievementsOrderBy, GAchievementsOrderByBuilder> {
  GAchievementsOrderBy._();

  factory GAchievementsOrderBy(
          [void Function(GAchievementsOrderByBuilder b) updates]) =
      _$GAchievementsOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get description;
  GOrderBy? get id;
  GOrderBy? get name;
  GOrderBy? get updatedAt;
  static Serializer<GAchievementsOrderBy> get serializer =>
      _$gAchievementsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAchievementsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAchievementsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAchievementsOrderBy.serializer,
        json,
      );
}

class GAchievementsSelectColumn extends EnumClass {
  const GAchievementsSelectColumn._(String name) : super(name);

  static const GAchievementsSelectColumn createdAt =
      _$gAchievementsSelectColumncreatedAt;

  static const GAchievementsSelectColumn description =
      _$gAchievementsSelectColumndescription;

  static const GAchievementsSelectColumn id = _$gAchievementsSelectColumnid;

  @BuiltValueEnumConst(wireName: 'name')
  static const GAchievementsSelectColumn Gname =
      _$gAchievementsSelectColumnGname;

  static const GAchievementsSelectColumn updatedAt =
      _$gAchievementsSelectColumnupdatedAt;

  static Serializer<GAchievementsSelectColumn> get serializer =>
      _$gAchievementsSelectColumnSerializer;

  static BuiltSet<GAchievementsSelectColumn> get values =>
      _$gAchievementsSelectColumnValues;

  static GAchievementsSelectColumn valueOf(String name) =>
      _$gAchievementsSelectColumnValueOf(name);
}

abstract class GAchievementsStreamCursorInput
    implements
        Built<GAchievementsStreamCursorInput,
            GAchievementsStreamCursorInputBuilder> {
  GAchievementsStreamCursorInput._();

  factory GAchievementsStreamCursorInput(
          [void Function(GAchievementsStreamCursorInputBuilder b) updates]) =
      _$GAchievementsStreamCursorInput;

  GAchievementsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GAchievementsStreamCursorInput> get serializer =>
      _$gAchievementsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAchievementsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAchievementsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAchievementsStreamCursorInput.serializer,
        json,
      );
}

abstract class GAchievementsStreamCursorValueInput
    implements
        Built<GAchievementsStreamCursorValueInput,
            GAchievementsStreamCursorValueInputBuilder> {
  GAchievementsStreamCursorValueInput._();

  factory GAchievementsStreamCursorValueInput(
      [void Function(GAchievementsStreamCursorValueInputBuilder b)
          updates]) = _$GAchievementsStreamCursorValueInput;

  DateTime? get createdAt;
  String? get description;
  String? get id;
  String? get name;
  DateTime? get updatedAt;
  static Serializer<GAchievementsStreamCursorValueInput> get serializer =>
      _$gAchievementsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAchievementsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAchievementsStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAchievementsStreamCursorValueInput.serializer,
        json,
      );
}

class GCursorOrdering extends EnumClass {
  const GCursorOrdering._(String name) : super(name);

  static const GCursorOrdering ASC = _$gCursorOrderingASC;

  static const GCursorOrdering DESC = _$gCursorOrderingDESC;

  static Serializer<GCursorOrdering> get serializer =>
      _$gCursorOrderingSerializer;

  static BuiltSet<GCursorOrdering> get values => _$gCursorOrderingValues;

  static GCursorOrdering valueOf(String name) => _$gCursorOrderingValueOf(name);
}

abstract class GIntComparisonExp
    implements Built<GIntComparisonExp, GIntComparisonExpBuilder> {
  GIntComparisonExp._();

  factory GIntComparisonExp(
          [void Function(GIntComparisonExpBuilder b) updates]) =
      _$GIntComparisonExp;

  @BuiltValueField(wireName: '_eq')
  int? get G_eq;
  @BuiltValueField(wireName: '_gt')
  int? get G_gt;
  @BuiltValueField(wireName: '_gte')
  int? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<int>? get G_in;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_lt')
  int? get G_lt;
  @BuiltValueField(wireName: '_lte')
  int? get G_lte;
  @BuiltValueField(wireName: '_neq')
  int? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<int>? get G_nin;
  static Serializer<GIntComparisonExp> get serializer =>
      _$gIntComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GIntComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GIntComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GIntComparisonExp.serializer,
        json,
      );
}

abstract class GMainQuestRelationsBoolExp
    implements
        Built<GMainQuestRelationsBoolExp, GMainQuestRelationsBoolExpBuilder> {
  GMainQuestRelationsBoolExp._();

  factory GMainQuestRelationsBoolExp(
          [void Function(GMainQuestRelationsBoolExpBuilder b) updates]) =
      _$GMainQuestRelationsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GMainQuestRelationsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GMainQuestRelationsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GMainQuestRelationsBoolExp>? get G_or;
  GUuidComparisonExp? get childQuestId;
  GUuidComparisonExp? get parentQuestId;
  static Serializer<GMainQuestRelationsBoolExp> get serializer =>
      _$gMainQuestRelationsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsBoolExp.serializer,
        json,
      );
}

class GMainQuestRelationsConstraint extends EnumClass {
  const GMainQuestRelationsConstraint._(String name) : super(name);

  static const GMainQuestRelationsConstraint main_quest_relations_pkey =
      _$gMainQuestRelationsConstraintmain_quest_relations_pkey;

  static Serializer<GMainQuestRelationsConstraint> get serializer =>
      _$gMainQuestRelationsConstraintSerializer;

  static BuiltSet<GMainQuestRelationsConstraint> get values =>
      _$gMainQuestRelationsConstraintValues;

  static GMainQuestRelationsConstraint valueOf(String name) =>
      _$gMainQuestRelationsConstraintValueOf(name);
}

abstract class GMainQuestRelationsInsertInput
    implements
        Built<GMainQuestRelationsInsertInput,
            GMainQuestRelationsInsertInputBuilder> {
  GMainQuestRelationsInsertInput._();

  factory GMainQuestRelationsInsertInput(
          [void Function(GMainQuestRelationsInsertInputBuilder b) updates]) =
      _$GMainQuestRelationsInsertInput;

  String? get childQuestId;
  String? get parentQuestId;
  static Serializer<GMainQuestRelationsInsertInput> get serializer =>
      _$gMainQuestRelationsInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsInsertInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsInsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsInsertInput.serializer,
        json,
      );
}

abstract class GMainQuestRelationsOnConflict
    implements
        Built<GMainQuestRelationsOnConflict,
            GMainQuestRelationsOnConflictBuilder> {
  GMainQuestRelationsOnConflict._();

  factory GMainQuestRelationsOnConflict(
          [void Function(GMainQuestRelationsOnConflictBuilder b) updates]) =
      _$GMainQuestRelationsOnConflict;

  GMainQuestRelationsConstraint get constraint;
  BuiltList<GMainQuestRelationsUpdateColumn> get updateColumns;
  GMainQuestRelationsBoolExp? get where;
  static Serializer<GMainQuestRelationsOnConflict> get serializer =>
      _$gMainQuestRelationsOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsOnConflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsOnConflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsOnConflict.serializer,
        json,
      );
}

abstract class GMainQuestRelationsOrderBy
    implements
        Built<GMainQuestRelationsOrderBy, GMainQuestRelationsOrderByBuilder> {
  GMainQuestRelationsOrderBy._();

  factory GMainQuestRelationsOrderBy(
          [void Function(GMainQuestRelationsOrderByBuilder b) updates]) =
      _$GMainQuestRelationsOrderBy;

  GOrderBy? get childQuestId;
  GOrderBy? get parentQuestId;
  static Serializer<GMainQuestRelationsOrderBy> get serializer =>
      _$gMainQuestRelationsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsOrderBy.serializer,
        json,
      );
}

abstract class GMainQuestRelationsPkColumnsInput
    implements
        Built<GMainQuestRelationsPkColumnsInput,
            GMainQuestRelationsPkColumnsInputBuilder> {
  GMainQuestRelationsPkColumnsInput._();

  factory GMainQuestRelationsPkColumnsInput(
          [void Function(GMainQuestRelationsPkColumnsInputBuilder b) updates]) =
      _$GMainQuestRelationsPkColumnsInput;

  String get childQuestId;
  String get parentQuestId;
  static Serializer<GMainQuestRelationsPkColumnsInput> get serializer =>
      _$gMainQuestRelationsPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsPkColumnsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsPkColumnsInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsPkColumnsInput.serializer,
        json,
      );
}

class GMainQuestRelationsSelectColumn extends EnumClass {
  const GMainQuestRelationsSelectColumn._(String name) : super(name);

  static const GMainQuestRelationsSelectColumn childQuestId =
      _$gMainQuestRelationsSelectColumnchildQuestId;

  static const GMainQuestRelationsSelectColumn parentQuestId =
      _$gMainQuestRelationsSelectColumnparentQuestId;

  static Serializer<GMainQuestRelationsSelectColumn> get serializer =>
      _$gMainQuestRelationsSelectColumnSerializer;

  static BuiltSet<GMainQuestRelationsSelectColumn> get values =>
      _$gMainQuestRelationsSelectColumnValues;

  static GMainQuestRelationsSelectColumn valueOf(String name) =>
      _$gMainQuestRelationsSelectColumnValueOf(name);
}

abstract class GMainQuestRelationsSetInput
    implements
        Built<GMainQuestRelationsSetInput, GMainQuestRelationsSetInputBuilder> {
  GMainQuestRelationsSetInput._();

  factory GMainQuestRelationsSetInput(
          [void Function(GMainQuestRelationsSetInputBuilder b) updates]) =
      _$GMainQuestRelationsSetInput;

  String? get childQuestId;
  String? get parentQuestId;
  static Serializer<GMainQuestRelationsSetInput> get serializer =>
      _$gMainQuestRelationsSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsSetInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsSetInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsSetInput.serializer,
        json,
      );
}

abstract class GMainQuestRelationsStreamCursorInput
    implements
        Built<GMainQuestRelationsStreamCursorInput,
            GMainQuestRelationsStreamCursorInputBuilder> {
  GMainQuestRelationsStreamCursorInput._();

  factory GMainQuestRelationsStreamCursorInput(
      [void Function(GMainQuestRelationsStreamCursorInputBuilder b)
          updates]) = _$GMainQuestRelationsStreamCursorInput;

  GMainQuestRelationsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GMainQuestRelationsStreamCursorInput> get serializer =>
      _$gMainQuestRelationsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsStreamCursorInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsStreamCursorInput.serializer,
        json,
      );
}

abstract class GMainQuestRelationsStreamCursorValueInput
    implements
        Built<GMainQuestRelationsStreamCursorValueInput,
            GMainQuestRelationsStreamCursorValueInputBuilder> {
  GMainQuestRelationsStreamCursorValueInput._();

  factory GMainQuestRelationsStreamCursorValueInput(
      [void Function(GMainQuestRelationsStreamCursorValueInputBuilder b)
          updates]) = _$GMainQuestRelationsStreamCursorValueInput;

  String? get childQuestId;
  String? get parentQuestId;
  static Serializer<GMainQuestRelationsStreamCursorValueInput> get serializer =>
      _$gMainQuestRelationsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsStreamCursorValueInput.serializer,
        json,
      );
}

class GMainQuestRelationsUpdateColumn extends EnumClass {
  const GMainQuestRelationsUpdateColumn._(String name) : super(name);

  static const GMainQuestRelationsUpdateColumn childQuestId =
      _$gMainQuestRelationsUpdateColumnchildQuestId;

  static const GMainQuestRelationsUpdateColumn parentQuestId =
      _$gMainQuestRelationsUpdateColumnparentQuestId;

  static Serializer<GMainQuestRelationsUpdateColumn> get serializer =>
      _$gMainQuestRelationsUpdateColumnSerializer;

  static BuiltSet<GMainQuestRelationsUpdateColumn> get values =>
      _$gMainQuestRelationsUpdateColumnValues;

  static GMainQuestRelationsUpdateColumn valueOf(String name) =>
      _$gMainQuestRelationsUpdateColumnValueOf(name);
}

abstract class GMainQuestRelationsUpdates
    implements
        Built<GMainQuestRelationsUpdates, GMainQuestRelationsUpdatesBuilder> {
  GMainQuestRelationsUpdates._();

  factory GMainQuestRelationsUpdates(
          [void Function(GMainQuestRelationsUpdatesBuilder b) updates]) =
      _$GMainQuestRelationsUpdates;

  @BuiltValueField(wireName: '_set')
  GMainQuestRelationsSetInput? get G_set;
  GMainQuestRelationsBoolExp get where;
  static Serializer<GMainQuestRelationsUpdates> get serializer =>
      _$gMainQuestRelationsUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestRelationsUpdates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestRelationsUpdates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestRelationsUpdates.serializer,
        json,
      );
}

abstract class GMainQuestsBoolExp
    implements Built<GMainQuestsBoolExp, GMainQuestsBoolExpBuilder> {
  GMainQuestsBoolExp._();

  factory GMainQuestsBoolExp(
          [void Function(GMainQuestsBoolExpBuilder b) updates]) =
      _$GMainQuestsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GMainQuestsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GMainQuestsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GMainQuestsBoolExp>? get G_or;
  GTimestamptzComparisonExp? get begunAt;
  GUuidComparisonExp? get categoryId;
  GStringComparisonExp? get coverImageUrl;
  GTimestamptzComparisonExp? get createdAt;
  GTimestamptzComparisonExp? get deletedAt;
  GStringComparisonExp? get description;
  GTimestamptzComparisonExp? get endedAt;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get note;
  GQuestStatusEnumComparisonExp? get status;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  GStringComparisonExp? get userId;
  static Serializer<GMainQuestsBoolExp> get serializer =>
      _$gMainQuestsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsBoolExp.serializer,
        json,
      );
}

class GMainQuestsConstraint extends EnumClass {
  const GMainQuestsConstraint._(String name) : super(name);

  static const GMainQuestsConstraint main_quests_pkey =
      _$gMainQuestsConstraintmain_quests_pkey;

  static Serializer<GMainQuestsConstraint> get serializer =>
      _$gMainQuestsConstraintSerializer;

  static BuiltSet<GMainQuestsConstraint> get values =>
      _$gMainQuestsConstraintValues;

  static GMainQuestsConstraint valueOf(String name) =>
      _$gMainQuestsConstraintValueOf(name);
}

abstract class GMainQuestsInsertInput
    implements Built<GMainQuestsInsertInput, GMainQuestsInsertInputBuilder> {
  GMainQuestsInsertInput._();

  factory GMainQuestsInsertInput(
          [void Function(GMainQuestsInsertInputBuilder b) updates]) =
      _$GMainQuestsInsertInput;

  DateTime? get begunAt;
  String? get categoryId;
  String? get coverImageUrl;
  DateTime? get createdAt;
  DateTime? get deletedAt;
  String? get description;
  DateTime? get endedAt;
  String? get id;
  String? get note;
  GQuestStatusEnum? get status;
  String? get title;
  DateTime? get updatedAt;
  String? get userId;
  static Serializer<GMainQuestsInsertInput> get serializer =>
      _$gMainQuestsInsertInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsInsertInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsInsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsInsertInput.serializer,
        json,
      );
}

abstract class GMainQuestsOnConflict
    implements Built<GMainQuestsOnConflict, GMainQuestsOnConflictBuilder> {
  GMainQuestsOnConflict._();

  factory GMainQuestsOnConflict(
          [void Function(GMainQuestsOnConflictBuilder b) updates]) =
      _$GMainQuestsOnConflict;

  GMainQuestsConstraint get constraint;
  BuiltList<GMainQuestsUpdateColumn> get updateColumns;
  GMainQuestsBoolExp? get where;
  static Serializer<GMainQuestsOnConflict> get serializer =>
      _$gMainQuestsOnConflictSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsOnConflict.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsOnConflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsOnConflict.serializer,
        json,
      );
}

abstract class GMainQuestsOrderBy
    implements Built<GMainQuestsOrderBy, GMainQuestsOrderByBuilder> {
  GMainQuestsOrderBy._();

  factory GMainQuestsOrderBy(
          [void Function(GMainQuestsOrderByBuilder b) updates]) =
      _$GMainQuestsOrderBy;

  GOrderBy? get begunAt;
  GOrderBy? get categoryId;
  GOrderBy? get coverImageUrl;
  GOrderBy? get createdAt;
  GOrderBy? get deletedAt;
  GOrderBy? get description;
  GOrderBy? get endedAt;
  GOrderBy? get id;
  GOrderBy? get note;
  GOrderBy? get status;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  GOrderBy? get userId;
  static Serializer<GMainQuestsOrderBy> get serializer =>
      _$gMainQuestsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsOrderBy.serializer,
        json,
      );
}

abstract class GMainQuestsPkColumnsInput
    implements
        Built<GMainQuestsPkColumnsInput, GMainQuestsPkColumnsInputBuilder> {
  GMainQuestsPkColumnsInput._();

  factory GMainQuestsPkColumnsInput(
          [void Function(GMainQuestsPkColumnsInputBuilder b) updates]) =
      _$GMainQuestsPkColumnsInput;

  String get id;
  static Serializer<GMainQuestsPkColumnsInput> get serializer =>
      _$gMainQuestsPkColumnsInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsPkColumnsInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsPkColumnsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsPkColumnsInput.serializer,
        json,
      );
}

class GMainQuestsSelectColumn extends EnumClass {
  const GMainQuestsSelectColumn._(String name) : super(name);

  static const GMainQuestsSelectColumn begunAt =
      _$gMainQuestsSelectColumnbegunAt;

  static const GMainQuestsSelectColumn categoryId =
      _$gMainQuestsSelectColumncategoryId;

  static const GMainQuestsSelectColumn coverImageUrl =
      _$gMainQuestsSelectColumncoverImageUrl;

  static const GMainQuestsSelectColumn createdAt =
      _$gMainQuestsSelectColumncreatedAt;

  static const GMainQuestsSelectColumn deletedAt =
      _$gMainQuestsSelectColumndeletedAt;

  static const GMainQuestsSelectColumn description =
      _$gMainQuestsSelectColumndescription;

  static const GMainQuestsSelectColumn endedAt =
      _$gMainQuestsSelectColumnendedAt;

  static const GMainQuestsSelectColumn id = _$gMainQuestsSelectColumnid;

  static const GMainQuestsSelectColumn note = _$gMainQuestsSelectColumnnote;

  static const GMainQuestsSelectColumn status = _$gMainQuestsSelectColumnstatus;

  static const GMainQuestsSelectColumn title = _$gMainQuestsSelectColumntitle;

  static const GMainQuestsSelectColumn updatedAt =
      _$gMainQuestsSelectColumnupdatedAt;

  static const GMainQuestsSelectColumn userId = _$gMainQuestsSelectColumnuserId;

  static Serializer<GMainQuestsSelectColumn> get serializer =>
      _$gMainQuestsSelectColumnSerializer;

  static BuiltSet<GMainQuestsSelectColumn> get values =>
      _$gMainQuestsSelectColumnValues;

  static GMainQuestsSelectColumn valueOf(String name) =>
      _$gMainQuestsSelectColumnValueOf(name);
}

abstract class GMainQuestsSetInput
    implements Built<GMainQuestsSetInput, GMainQuestsSetInputBuilder> {
  GMainQuestsSetInput._();

  factory GMainQuestsSetInput(
          [void Function(GMainQuestsSetInputBuilder b) updates]) =
      _$GMainQuestsSetInput;

  DateTime? get begunAt;
  String? get categoryId;
  String? get coverImageUrl;
  DateTime? get createdAt;
  DateTime? get deletedAt;
  String? get description;
  DateTime? get endedAt;
  String? get id;
  String? get note;
  GQuestStatusEnum? get status;
  String? get title;
  DateTime? get updatedAt;
  String? get userId;
  static Serializer<GMainQuestsSetInput> get serializer =>
      _$gMainQuestsSetInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsSetInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsSetInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsSetInput.serializer,
        json,
      );
}

abstract class GMainQuestsStreamCursorInput
    implements
        Built<GMainQuestsStreamCursorInput,
            GMainQuestsStreamCursorInputBuilder> {
  GMainQuestsStreamCursorInput._();

  factory GMainQuestsStreamCursorInput(
          [void Function(GMainQuestsStreamCursorInputBuilder b) updates]) =
      _$GMainQuestsStreamCursorInput;

  GMainQuestsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GMainQuestsStreamCursorInput> get serializer =>
      _$gMainQuestsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsStreamCursorInput.serializer,
        json,
      );
}

abstract class GMainQuestsStreamCursorValueInput
    implements
        Built<GMainQuestsStreamCursorValueInput,
            GMainQuestsStreamCursorValueInputBuilder> {
  GMainQuestsStreamCursorValueInput._();

  factory GMainQuestsStreamCursorValueInput(
          [void Function(GMainQuestsStreamCursorValueInputBuilder b) updates]) =
      _$GMainQuestsStreamCursorValueInput;

  DateTime? get begunAt;
  String? get categoryId;
  String? get coverImageUrl;
  DateTime? get createdAt;
  DateTime? get deletedAt;
  String? get description;
  DateTime? get endedAt;
  String? get id;
  String? get note;
  GQuestStatusEnum? get status;
  String? get title;
  DateTime? get updatedAt;
  String? get userId;
  static Serializer<GMainQuestsStreamCursorValueInput> get serializer =>
      _$gMainQuestsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsStreamCursorValueInput.serializer,
        json,
      );
}

class GMainQuestsUpdateColumn extends EnumClass {
  const GMainQuestsUpdateColumn._(String name) : super(name);

  static const GMainQuestsUpdateColumn begunAt =
      _$gMainQuestsUpdateColumnbegunAt;

  static const GMainQuestsUpdateColumn categoryId =
      _$gMainQuestsUpdateColumncategoryId;

  static const GMainQuestsUpdateColumn coverImageUrl =
      _$gMainQuestsUpdateColumncoverImageUrl;

  static const GMainQuestsUpdateColumn createdAt =
      _$gMainQuestsUpdateColumncreatedAt;

  static const GMainQuestsUpdateColumn deletedAt =
      _$gMainQuestsUpdateColumndeletedAt;

  static const GMainQuestsUpdateColumn description =
      _$gMainQuestsUpdateColumndescription;

  static const GMainQuestsUpdateColumn endedAt =
      _$gMainQuestsUpdateColumnendedAt;

  static const GMainQuestsUpdateColumn id = _$gMainQuestsUpdateColumnid;

  static const GMainQuestsUpdateColumn note = _$gMainQuestsUpdateColumnnote;

  static const GMainQuestsUpdateColumn status = _$gMainQuestsUpdateColumnstatus;

  static const GMainQuestsUpdateColumn title = _$gMainQuestsUpdateColumntitle;

  static const GMainQuestsUpdateColumn updatedAt =
      _$gMainQuestsUpdateColumnupdatedAt;

  static const GMainQuestsUpdateColumn userId = _$gMainQuestsUpdateColumnuserId;

  static Serializer<GMainQuestsUpdateColumn> get serializer =>
      _$gMainQuestsUpdateColumnSerializer;

  static BuiltSet<GMainQuestsUpdateColumn> get values =>
      _$gMainQuestsUpdateColumnValues;

  static GMainQuestsUpdateColumn valueOf(String name) =>
      _$gMainQuestsUpdateColumnValueOf(name);
}

abstract class GMainQuestsUpdates
    implements Built<GMainQuestsUpdates, GMainQuestsUpdatesBuilder> {
  GMainQuestsUpdates._();

  factory GMainQuestsUpdates(
          [void Function(GMainQuestsUpdatesBuilder b) updates]) =
      _$GMainQuestsUpdates;

  @BuiltValueField(wireName: '_set')
  GMainQuestsSetInput? get G_set;
  GMainQuestsBoolExp get where;
  static Serializer<GMainQuestsUpdates> get serializer =>
      _$gMainQuestsUpdatesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GMainQuestsUpdates.serializer,
        this,
      ) as Map<String, dynamic>);

  static GMainQuestsUpdates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GMainQuestsUpdates.serializer,
        json,
      );
}

abstract class GNewsBoolExp
    implements Built<GNewsBoolExp, GNewsBoolExpBuilder> {
  GNewsBoolExp._();

  factory GNewsBoolExp([void Function(GNewsBoolExpBuilder b) updates]) =
      _$GNewsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GNewsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GNewsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GNewsBoolExp>? get G_or;
  GStringComparisonExp? get content;
  GStringComparisonExp? get coverImageUrl;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get excerpt;
  GUuidComparisonExp? get id;
  GTimestamptzComparisonExp? get publishedAt;
  GSeosBoolExp? get seo;
  GUuidComparisonExp? get seoId;
  GStringComparisonExp? get slug;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GNewsBoolExp> get serializer => _$gNewsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsBoolExp.serializer,
        json,
      );
}

abstract class GNewsOrderBy
    implements Built<GNewsOrderBy, GNewsOrderByBuilder> {
  GNewsOrderBy._();

  factory GNewsOrderBy([void Function(GNewsOrderByBuilder b) updates]) =
      _$GNewsOrderBy;

  GOrderBy? get content;
  GOrderBy? get coverImageUrl;
  GOrderBy? get createdAt;
  GOrderBy? get excerpt;
  GOrderBy? get id;
  GOrderBy? get publishedAt;
  GSeosOrderBy? get seo;
  GOrderBy? get seoId;
  GOrderBy? get slug;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  static Serializer<GNewsOrderBy> get serializer => _$gNewsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsOrderBy.serializer,
        json,
      );
}

class GNewsSelectColumn extends EnumClass {
  const GNewsSelectColumn._(String name) : super(name);

  static const GNewsSelectColumn content = _$gNewsSelectColumncontent;

  static const GNewsSelectColumn coverImageUrl =
      _$gNewsSelectColumncoverImageUrl;

  static const GNewsSelectColumn createdAt = _$gNewsSelectColumncreatedAt;

  static const GNewsSelectColumn excerpt = _$gNewsSelectColumnexcerpt;

  static const GNewsSelectColumn id = _$gNewsSelectColumnid;

  static const GNewsSelectColumn publishedAt = _$gNewsSelectColumnpublishedAt;

  static const GNewsSelectColumn seoId = _$gNewsSelectColumnseoId;

  static const GNewsSelectColumn slug = _$gNewsSelectColumnslug;

  static const GNewsSelectColumn title = _$gNewsSelectColumntitle;

  static const GNewsSelectColumn updatedAt = _$gNewsSelectColumnupdatedAt;

  static Serializer<GNewsSelectColumn> get serializer =>
      _$gNewsSelectColumnSerializer;

  static BuiltSet<GNewsSelectColumn> get values => _$gNewsSelectColumnValues;

  static GNewsSelectColumn valueOf(String name) =>
      _$gNewsSelectColumnValueOf(name);
}

abstract class GNewsStreamCursorInput
    implements Built<GNewsStreamCursorInput, GNewsStreamCursorInputBuilder> {
  GNewsStreamCursorInput._();

  factory GNewsStreamCursorInput(
          [void Function(GNewsStreamCursorInputBuilder b) updates]) =
      _$GNewsStreamCursorInput;

  GNewsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GNewsStreamCursorInput> get serializer =>
      _$gNewsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsStreamCursorInput.serializer,
        json,
      );
}

abstract class GNewsStreamCursorValueInput
    implements
        Built<GNewsStreamCursorValueInput, GNewsStreamCursorValueInputBuilder> {
  GNewsStreamCursorValueInput._();

  factory GNewsStreamCursorValueInput(
          [void Function(GNewsStreamCursorValueInputBuilder b) updates]) =
      _$GNewsStreamCursorValueInput;

  String? get content;
  String? get coverImageUrl;
  DateTime? get createdAt;
  String? get excerpt;
  String? get id;
  DateTime? get publishedAt;
  String? get seoId;
  String? get slug;
  String? get title;
  DateTime? get updatedAt;
  static Serializer<GNewsStreamCursorValueInput> get serializer =>
      _$gNewsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNewsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNewsStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNewsStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GNotificationsBoolExp
    implements Built<GNotificationsBoolExp, GNotificationsBoolExpBuilder> {
  GNotificationsBoolExp._();

  factory GNotificationsBoolExp(
          [void Function(GNotificationsBoolExpBuilder b) updates]) =
      _$GNotificationsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GNotificationsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GNotificationsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GNotificationsBoolExp>? get G_or;
  GStringComparisonExp? get content;
  GStringComparisonExp? get coverImageUrl;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get excerpt;
  GTimestamptzComparisonExp? get firstOpenedAt;
  GUuidComparisonExp? get id;
  GTimestamptzComparisonExp? get publishedAt;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  GStringComparisonExp? get userId;
  static Serializer<GNotificationsBoolExp> get serializer =>
      _$gNotificationsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsBoolExp.serializer,
        json,
      );
}

abstract class GNotificationsOrderBy
    implements Built<GNotificationsOrderBy, GNotificationsOrderByBuilder> {
  GNotificationsOrderBy._();

  factory GNotificationsOrderBy(
          [void Function(GNotificationsOrderByBuilder b) updates]) =
      _$GNotificationsOrderBy;

  GOrderBy? get content;
  GOrderBy? get coverImageUrl;
  GOrderBy? get createdAt;
  GOrderBy? get excerpt;
  GOrderBy? get firstOpenedAt;
  GOrderBy? get id;
  GOrderBy? get publishedAt;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  GOrderBy? get userId;
  static Serializer<GNotificationsOrderBy> get serializer =>
      _$gNotificationsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsOrderBy.serializer,
        json,
      );
}

class GNotificationsSelectColumn extends EnumClass {
  const GNotificationsSelectColumn._(String name) : super(name);

  static const GNotificationsSelectColumn content =
      _$gNotificationsSelectColumncontent;

  static const GNotificationsSelectColumn coverImageUrl =
      _$gNotificationsSelectColumncoverImageUrl;

  static const GNotificationsSelectColumn createdAt =
      _$gNotificationsSelectColumncreatedAt;

  static const GNotificationsSelectColumn excerpt =
      _$gNotificationsSelectColumnexcerpt;

  static const GNotificationsSelectColumn firstOpenedAt =
      _$gNotificationsSelectColumnfirstOpenedAt;

  static const GNotificationsSelectColumn id = _$gNotificationsSelectColumnid;

  static const GNotificationsSelectColumn publishedAt =
      _$gNotificationsSelectColumnpublishedAt;

  static const GNotificationsSelectColumn title =
      _$gNotificationsSelectColumntitle;

  static const GNotificationsSelectColumn updatedAt =
      _$gNotificationsSelectColumnupdatedAt;

  static const GNotificationsSelectColumn userId =
      _$gNotificationsSelectColumnuserId;

  static Serializer<GNotificationsSelectColumn> get serializer =>
      _$gNotificationsSelectColumnSerializer;

  static BuiltSet<GNotificationsSelectColumn> get values =>
      _$gNotificationsSelectColumnValues;

  static GNotificationsSelectColumn valueOf(String name) =>
      _$gNotificationsSelectColumnValueOf(name);
}

abstract class GNotificationsStreamCursorInput
    implements
        Built<GNotificationsStreamCursorInput,
            GNotificationsStreamCursorInputBuilder> {
  GNotificationsStreamCursorInput._();

  factory GNotificationsStreamCursorInput(
          [void Function(GNotificationsStreamCursorInputBuilder b) updates]) =
      _$GNotificationsStreamCursorInput;

  GNotificationsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GNotificationsStreamCursorInput> get serializer =>
      _$gNotificationsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsStreamCursorInput.serializer,
        json,
      );
}

abstract class GNotificationsStreamCursorValueInput
    implements
        Built<GNotificationsStreamCursorValueInput,
            GNotificationsStreamCursorValueInputBuilder> {
  GNotificationsStreamCursorValueInput._();

  factory GNotificationsStreamCursorValueInput(
      [void Function(GNotificationsStreamCursorValueInputBuilder b)
          updates]) = _$GNotificationsStreamCursorValueInput;

  String? get content;
  String? get coverImageUrl;
  DateTime? get createdAt;
  String? get excerpt;
  DateTime? get firstOpenedAt;
  String? get id;
  DateTime? get publishedAt;
  String? get title;
  DateTime? get updatedAt;
  String? get userId;
  static Serializer<GNotificationsStreamCursorValueInput> get serializer =>
      _$gNotificationsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GNotificationsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GNotificationsStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GNotificationsStreamCursorValueInput.serializer,
        json,
      );
}

class GOrderBy extends EnumClass {
  const GOrderBy._(String name) : super(name);

  static const GOrderBy ASC = _$gOrderByASC;

  static const GOrderBy ASC_NULLS_FIRST = _$gOrderByASC_NULLS_FIRST;

  static const GOrderBy ASC_NULLS_LAST = _$gOrderByASC_NULLS_LAST;

  static const GOrderBy DESC = _$gOrderByDESC;

  static const GOrderBy DESC_NULLS_FIRST = _$gOrderByDESC_NULLS_FIRST;

  static const GOrderBy DESC_NULLS_LAST = _$gOrderByDESC_NULLS_LAST;

  static Serializer<GOrderBy> get serializer => _$gOrderBySerializer;

  static BuiltSet<GOrderBy> get values => _$gOrderByValues;

  static GOrderBy valueOf(String name) => _$gOrderByValueOf(name);
}

abstract class GQuestCategoriesBoolExp
    implements Built<GQuestCategoriesBoolExp, GQuestCategoriesBoolExpBuilder> {
  GQuestCategoriesBoolExp._();

  factory GQuestCategoriesBoolExp(
          [void Function(GQuestCategoriesBoolExpBuilder b) updates]) =
      _$GQuestCategoriesBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GQuestCategoriesBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GQuestCategoriesBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GQuestCategoriesBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get description;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get name;
  GIntComparisonExp? get sortNumber;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GQuestCategoriesBoolExp> get serializer =>
      _$gQuestCategoriesBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestCategoriesBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestCategoriesBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestCategoriesBoolExp.serializer,
        json,
      );
}

abstract class GQuestCategoriesOrderBy
    implements Built<GQuestCategoriesOrderBy, GQuestCategoriesOrderByBuilder> {
  GQuestCategoriesOrderBy._();

  factory GQuestCategoriesOrderBy(
          [void Function(GQuestCategoriesOrderByBuilder b) updates]) =
      _$GQuestCategoriesOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get description;
  GOrderBy? get id;
  GOrderBy? get name;
  GOrderBy? get sortNumber;
  GOrderBy? get updatedAt;
  static Serializer<GQuestCategoriesOrderBy> get serializer =>
      _$gQuestCategoriesOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestCategoriesOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestCategoriesOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestCategoriesOrderBy.serializer,
        json,
      );
}

class GQuestCategoriesSelectColumn extends EnumClass {
  const GQuestCategoriesSelectColumn._(String name) : super(name);

  static const GQuestCategoriesSelectColumn createdAt =
      _$gQuestCategoriesSelectColumncreatedAt;

  static const GQuestCategoriesSelectColumn description =
      _$gQuestCategoriesSelectColumndescription;

  static const GQuestCategoriesSelectColumn id =
      _$gQuestCategoriesSelectColumnid;

  @BuiltValueEnumConst(wireName: 'name')
  static const GQuestCategoriesSelectColumn Gname =
      _$gQuestCategoriesSelectColumnGname;

  static const GQuestCategoriesSelectColumn sortNumber =
      _$gQuestCategoriesSelectColumnsortNumber;

  static const GQuestCategoriesSelectColumn updatedAt =
      _$gQuestCategoriesSelectColumnupdatedAt;

  static Serializer<GQuestCategoriesSelectColumn> get serializer =>
      _$gQuestCategoriesSelectColumnSerializer;

  static BuiltSet<GQuestCategoriesSelectColumn> get values =>
      _$gQuestCategoriesSelectColumnValues;

  static GQuestCategoriesSelectColumn valueOf(String name) =>
      _$gQuestCategoriesSelectColumnValueOf(name);
}

abstract class GQuestCategoriesStreamCursorInput
    implements
        Built<GQuestCategoriesStreamCursorInput,
            GQuestCategoriesStreamCursorInputBuilder> {
  GQuestCategoriesStreamCursorInput._();

  factory GQuestCategoriesStreamCursorInput(
          [void Function(GQuestCategoriesStreamCursorInputBuilder b) updates]) =
      _$GQuestCategoriesStreamCursorInput;

  GQuestCategoriesStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GQuestCategoriesStreamCursorInput> get serializer =>
      _$gQuestCategoriesStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestCategoriesStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestCategoriesStreamCursorInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestCategoriesStreamCursorInput.serializer,
        json,
      );
}

abstract class GQuestCategoriesStreamCursorValueInput
    implements
        Built<GQuestCategoriesStreamCursorValueInput,
            GQuestCategoriesStreamCursorValueInputBuilder> {
  GQuestCategoriesStreamCursorValueInput._();

  factory GQuestCategoriesStreamCursorValueInput(
      [void Function(GQuestCategoriesStreamCursorValueInputBuilder b)
          updates]) = _$GQuestCategoriesStreamCursorValueInput;

  DateTime? get createdAt;
  String? get description;
  String? get id;
  String? get name;
  int? get sortNumber;
  DateTime? get updatedAt;
  static Serializer<GQuestCategoriesStreamCursorValueInput> get serializer =>
      _$gQuestCategoriesStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestCategoriesStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestCategoriesStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestCategoriesStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GQuestStatusBoolExp
    implements Built<GQuestStatusBoolExp, GQuestStatusBoolExpBuilder> {
  GQuestStatusBoolExp._();

  factory GQuestStatusBoolExp(
          [void Function(GQuestStatusBoolExpBuilder b) updates]) =
      _$GQuestStatusBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GQuestStatusBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GQuestStatusBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GQuestStatusBoolExp>? get G_or;
  GStringComparisonExp? get value;
  static Serializer<GQuestStatusBoolExp> get serializer =>
      _$gQuestStatusBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestStatusBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestStatusBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestStatusBoolExp.serializer,
        json,
      );
}

class GQuestStatusEnum extends EnumClass {
  const GQuestStatusEnum._(String name) : super(name);

  static const GQuestStatusEnum ABORT = _$gQuestStatusEnumABORT;

  static const GQuestStatusEnum BACKLOG = _$gQuestStatusEnumBACKLOG;

  static const GQuestStatusEnum COMPLETED = _$gQuestStatusEnumCOMPLETED;

  static const GQuestStatusEnum IN_PROGRESS = _$gQuestStatusEnumIN_PROGRESS;

  static const GQuestStatusEnum READY = _$gQuestStatusEnumREADY;

  static const GQuestStatusEnum SUSPEND = _$gQuestStatusEnumSUSPEND;

  static Serializer<GQuestStatusEnum> get serializer =>
      _$gQuestStatusEnumSerializer;

  static BuiltSet<GQuestStatusEnum> get values => _$gQuestStatusEnumValues;

  static GQuestStatusEnum valueOf(String name) =>
      _$gQuestStatusEnumValueOf(name);
}

abstract class GQuestStatusEnumComparisonExp
    implements
        Built<GQuestStatusEnumComparisonExp,
            GQuestStatusEnumComparisonExpBuilder> {
  GQuestStatusEnumComparisonExp._();

  factory GQuestStatusEnumComparisonExp(
          [void Function(GQuestStatusEnumComparisonExpBuilder b) updates]) =
      _$GQuestStatusEnumComparisonExp;

  @BuiltValueField(wireName: '_eq')
  GQuestStatusEnum? get G_eq;
  @BuiltValueField(wireName: '_in')
  BuiltList<GQuestStatusEnum>? get G_in;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_neq')
  GQuestStatusEnum? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<GQuestStatusEnum>? get G_nin;
  static Serializer<GQuestStatusEnumComparisonExp> get serializer =>
      _$gQuestStatusEnumComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestStatusEnumComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestStatusEnumComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestStatusEnumComparisonExp.serializer,
        json,
      );
}

abstract class GQuestStatusOrderBy
    implements Built<GQuestStatusOrderBy, GQuestStatusOrderByBuilder> {
  GQuestStatusOrderBy._();

  factory GQuestStatusOrderBy(
          [void Function(GQuestStatusOrderByBuilder b) updates]) =
      _$GQuestStatusOrderBy;

  GOrderBy? get value;
  static Serializer<GQuestStatusOrderBy> get serializer =>
      _$gQuestStatusOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestStatusOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestStatusOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestStatusOrderBy.serializer,
        json,
      );
}

class GQuestStatusSelectColumn extends EnumClass {
  const GQuestStatusSelectColumn._(String name) : super(name);

  static const GQuestStatusSelectColumn value = _$gQuestStatusSelectColumnvalue;

  static Serializer<GQuestStatusSelectColumn> get serializer =>
      _$gQuestStatusSelectColumnSerializer;

  static BuiltSet<GQuestStatusSelectColumn> get values =>
      _$gQuestStatusSelectColumnValues;

  static GQuestStatusSelectColumn valueOf(String name) =>
      _$gQuestStatusSelectColumnValueOf(name);
}

abstract class GQuestStatusStreamCursorInput
    implements
        Built<GQuestStatusStreamCursorInput,
            GQuestStatusStreamCursorInputBuilder> {
  GQuestStatusStreamCursorInput._();

  factory GQuestStatusStreamCursorInput(
          [void Function(GQuestStatusStreamCursorInputBuilder b) updates]) =
      _$GQuestStatusStreamCursorInput;

  GQuestStatusStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GQuestStatusStreamCursorInput> get serializer =>
      _$gQuestStatusStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestStatusStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestStatusStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestStatusStreamCursorInput.serializer,
        json,
      );
}

abstract class GQuestStatusStreamCursorValueInput
    implements
        Built<GQuestStatusStreamCursorValueInput,
            GQuestStatusStreamCursorValueInputBuilder> {
  GQuestStatusStreamCursorValueInput._();

  factory GQuestStatusStreamCursorValueInput(
      [void Function(GQuestStatusStreamCursorValueInputBuilder b)
          updates]) = _$GQuestStatusStreamCursorValueInput;

  String? get value;
  static Serializer<GQuestStatusStreamCursorValueInput> get serializer =>
      _$gQuestStatusStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GQuestStatusStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GQuestStatusStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GQuestStatusStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GSeosBoolExp
    implements Built<GSeosBoolExp, GSeosBoolExpBuilder> {
  GSeosBoolExp._();

  factory GSeosBoolExp([void Function(GSeosBoolExpBuilder b) updates]) =
      _$GSeosBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GSeosBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GSeosBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GSeosBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get description;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get ogImageUrl;
  GStringComparisonExp? get title;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GSeosBoolExp> get serializer => _$gSeosBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosBoolExp.serializer,
        json,
      );
}

abstract class GSeosOrderBy
    implements Built<GSeosOrderBy, GSeosOrderByBuilder> {
  GSeosOrderBy._();

  factory GSeosOrderBy([void Function(GSeosOrderByBuilder b) updates]) =
      _$GSeosOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get description;
  GOrderBy? get id;
  GOrderBy? get ogImageUrl;
  GOrderBy? get title;
  GOrderBy? get updatedAt;
  static Serializer<GSeosOrderBy> get serializer => _$gSeosOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosOrderBy.serializer,
        json,
      );
}

class GSeosSelectColumn extends EnumClass {
  const GSeosSelectColumn._(String name) : super(name);

  static const GSeosSelectColumn createdAt = _$gSeosSelectColumncreatedAt;

  static const GSeosSelectColumn description = _$gSeosSelectColumndescription;

  static const GSeosSelectColumn id = _$gSeosSelectColumnid;

  static const GSeosSelectColumn ogImageUrl = _$gSeosSelectColumnogImageUrl;

  static const GSeosSelectColumn title = _$gSeosSelectColumntitle;

  static const GSeosSelectColumn updatedAt = _$gSeosSelectColumnupdatedAt;

  static Serializer<GSeosSelectColumn> get serializer =>
      _$gSeosSelectColumnSerializer;

  static BuiltSet<GSeosSelectColumn> get values => _$gSeosSelectColumnValues;

  static GSeosSelectColumn valueOf(String name) =>
      _$gSeosSelectColumnValueOf(name);
}

abstract class GSeosStreamCursorInput
    implements Built<GSeosStreamCursorInput, GSeosStreamCursorInputBuilder> {
  GSeosStreamCursorInput._();

  factory GSeosStreamCursorInput(
          [void Function(GSeosStreamCursorInputBuilder b) updates]) =
      _$GSeosStreamCursorInput;

  GSeosStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GSeosStreamCursorInput> get serializer =>
      _$gSeosStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosStreamCursorInput.serializer,
        json,
      );
}

abstract class GSeosStreamCursorValueInput
    implements
        Built<GSeosStreamCursorValueInput, GSeosStreamCursorValueInputBuilder> {
  GSeosStreamCursorValueInput._();

  factory GSeosStreamCursorValueInput(
          [void Function(GSeosStreamCursorValueInputBuilder b) updates]) =
      _$GSeosStreamCursorValueInput;

  DateTime? get createdAt;
  String? get description;
  String? get id;
  String? get ogImageUrl;
  String? get title;
  DateTime? get updatedAt;
  static Serializer<GSeosStreamCursorValueInput> get serializer =>
      _$gSeosStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSeosStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSeosStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSeosStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GStringComparisonExp
    implements Built<GStringComparisonExp, GStringComparisonExpBuilder> {
  GStringComparisonExp._();

  factory GStringComparisonExp(
          [void Function(GStringComparisonExpBuilder b) updates]) =
      _$GStringComparisonExp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_ilike')
  String? get G_ilike;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_iregex')
  String? get G_iregex;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_like')
  String? get G_like;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nilike')
  String? get G_nilike;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  @BuiltValueField(wireName: '_niregex')
  String? get G_niregex;
  @BuiltValueField(wireName: '_nlike')
  String? get G_nlike;
  @BuiltValueField(wireName: '_nregex')
  String? get G_nregex;
  @BuiltValueField(wireName: '_nsimilar')
  String? get G_nsimilar;
  @BuiltValueField(wireName: '_regex')
  String? get G_regex;
  @BuiltValueField(wireName: '_similar')
  String? get G_similar;
  static Serializer<GStringComparisonExp> get serializer =>
      _$gStringComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GStringComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GStringComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GStringComparisonExp.serializer,
        json,
      );
}

abstract class GTagsBoolExp
    implements Built<GTagsBoolExp, GTagsBoolExpBuilder> {
  GTagsBoolExp._();

  factory GTagsBoolExp([void Function(GTagsBoolExpBuilder b) updates]) =
      _$GTagsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GTagsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GTagsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GTagsBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get description;
  GUuidComparisonExp? get id;
  GStringComparisonExp? get tag;
  GTimestamptzComparisonExp? get updatedAt;
  static Serializer<GTagsBoolExp> get serializer => _$gTagsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsBoolExp.serializer,
        json,
      );
}

abstract class GTagsOrderBy
    implements Built<GTagsOrderBy, GTagsOrderByBuilder> {
  GTagsOrderBy._();

  factory GTagsOrderBy([void Function(GTagsOrderByBuilder b) updates]) =
      _$GTagsOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get description;
  GOrderBy? get id;
  GOrderBy? get tag;
  GOrderBy? get updatedAt;
  static Serializer<GTagsOrderBy> get serializer => _$gTagsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsOrderBy.serializer,
        json,
      );
}

class GTagsSelectColumn extends EnumClass {
  const GTagsSelectColumn._(String name) : super(name);

  static const GTagsSelectColumn createdAt = _$gTagsSelectColumncreatedAt;

  static const GTagsSelectColumn description = _$gTagsSelectColumndescription;

  static const GTagsSelectColumn id = _$gTagsSelectColumnid;

  static const GTagsSelectColumn tag = _$gTagsSelectColumntag;

  static const GTagsSelectColumn updatedAt = _$gTagsSelectColumnupdatedAt;

  static Serializer<GTagsSelectColumn> get serializer =>
      _$gTagsSelectColumnSerializer;

  static BuiltSet<GTagsSelectColumn> get values => _$gTagsSelectColumnValues;

  static GTagsSelectColumn valueOf(String name) =>
      _$gTagsSelectColumnValueOf(name);
}

abstract class GTagsStreamCursorInput
    implements Built<GTagsStreamCursorInput, GTagsStreamCursorInputBuilder> {
  GTagsStreamCursorInput._();

  factory GTagsStreamCursorInput(
          [void Function(GTagsStreamCursorInputBuilder b) updates]) =
      _$GTagsStreamCursorInput;

  GTagsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GTagsStreamCursorInput> get serializer =>
      _$gTagsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsStreamCursorInput.serializer,
        json,
      );
}

abstract class GTagsStreamCursorValueInput
    implements
        Built<GTagsStreamCursorValueInput, GTagsStreamCursorValueInputBuilder> {
  GTagsStreamCursorValueInput._();

  factory GTagsStreamCursorValueInput(
          [void Function(GTagsStreamCursorValueInputBuilder b) updates]) =
      _$GTagsStreamCursorValueInput;

  DateTime? get createdAt;
  String? get description;
  String? get id;
  String? get tag;
  DateTime? get updatedAt;
  static Serializer<GTagsStreamCursorValueInput> get serializer =>
      _$gTagsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTagsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTagsStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTagsStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GTimestamptzComparisonExp
    implements
        Built<GTimestamptzComparisonExp, GTimestamptzComparisonExpBuilder> {
  GTimestamptzComparisonExp._();

  factory GTimestamptzComparisonExp(
          [void Function(GTimestamptzComparisonExpBuilder b) updates]) =
      _$GTimestamptzComparisonExp;

  @BuiltValueField(wireName: '_eq')
  DateTime? get G_eq;
  @BuiltValueField(wireName: '_gt')
  DateTime? get G_gt;
  @BuiltValueField(wireName: '_gte')
  DateTime? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<DateTime>? get G_in;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_lt')
  DateTime? get G_lt;
  @BuiltValueField(wireName: '_lte')
  DateTime? get G_lte;
  @BuiltValueField(wireName: '_neq')
  DateTime? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<DateTime>? get G_nin;
  static Serializer<GTimestamptzComparisonExp> get serializer =>
      _$gTimestamptzComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GTimestamptzComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GTimestamptzComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GTimestamptzComparisonExp.serializer,
        json,
      );
}

abstract class GUserAchievementsBoolExp
    implements
        Built<GUserAchievementsBoolExp, GUserAchievementsBoolExpBuilder> {
  GUserAchievementsBoolExp._();

  factory GUserAchievementsBoolExp(
          [void Function(GUserAchievementsBoolExpBuilder b) updates]) =
      _$GUserAchievementsBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GUserAchievementsBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GUserAchievementsBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GUserAchievementsBoolExp>? get G_or;
  GUuidComparisonExp? get achievementId;
  GStringComparisonExp? get userId;
  static Serializer<GUserAchievementsBoolExp> get serializer =>
      _$gUserAchievementsBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserAchievementsBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserAchievementsBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserAchievementsBoolExp.serializer,
        json,
      );
}

abstract class GUserAchievementsOrderBy
    implements
        Built<GUserAchievementsOrderBy, GUserAchievementsOrderByBuilder> {
  GUserAchievementsOrderBy._();

  factory GUserAchievementsOrderBy(
          [void Function(GUserAchievementsOrderByBuilder b) updates]) =
      _$GUserAchievementsOrderBy;

  GOrderBy? get achievementId;
  GOrderBy? get userId;
  static Serializer<GUserAchievementsOrderBy> get serializer =>
      _$gUserAchievementsOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserAchievementsOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserAchievementsOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserAchievementsOrderBy.serializer,
        json,
      );
}

class GUserAchievementsSelectColumn extends EnumClass {
  const GUserAchievementsSelectColumn._(String name) : super(name);

  static const GUserAchievementsSelectColumn achievementId =
      _$gUserAchievementsSelectColumnachievementId;

  static const GUserAchievementsSelectColumn userId =
      _$gUserAchievementsSelectColumnuserId;

  static Serializer<GUserAchievementsSelectColumn> get serializer =>
      _$gUserAchievementsSelectColumnSerializer;

  static BuiltSet<GUserAchievementsSelectColumn> get values =>
      _$gUserAchievementsSelectColumnValues;

  static GUserAchievementsSelectColumn valueOf(String name) =>
      _$gUserAchievementsSelectColumnValueOf(name);
}

abstract class GUserAchievementsStreamCursorInput
    implements
        Built<GUserAchievementsStreamCursorInput,
            GUserAchievementsStreamCursorInputBuilder> {
  GUserAchievementsStreamCursorInput._();

  factory GUserAchievementsStreamCursorInput(
      [void Function(GUserAchievementsStreamCursorInputBuilder b)
          updates]) = _$GUserAchievementsStreamCursorInput;

  GUserAchievementsStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GUserAchievementsStreamCursorInput> get serializer =>
      _$gUserAchievementsStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserAchievementsStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserAchievementsStreamCursorInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserAchievementsStreamCursorInput.serializer,
        json,
      );
}

abstract class GUserAchievementsStreamCursorValueInput
    implements
        Built<GUserAchievementsStreamCursorValueInput,
            GUserAchievementsStreamCursorValueInputBuilder> {
  GUserAchievementsStreamCursorValueInput._();

  factory GUserAchievementsStreamCursorValueInput(
      [void Function(GUserAchievementsStreamCursorValueInputBuilder b)
          updates]) = _$GUserAchievementsStreamCursorValueInput;

  String? get achievementId;
  String? get userId;
  static Serializer<GUserAchievementsStreamCursorValueInput> get serializer =>
      _$gUserAchievementsStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserAchievementsStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUserAchievementsStreamCursorValueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserAchievementsStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GUsersBoolExp
    implements Built<GUsersBoolExp, GUsersBoolExpBuilder> {
  GUsersBoolExp._();

  factory GUsersBoolExp([void Function(GUsersBoolExpBuilder b) updates]) =
      _$GUsersBoolExp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GUsersBoolExp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GUsersBoolExp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GUsersBoolExp>? get G_or;
  GTimestamptzComparisonExp? get createdAt;
  GStringComparisonExp? get email;
  GStringComparisonExp? get id;
  GTimestamptzComparisonExp? get lastSeen;
  GStringComparisonExp? get nickname;
  GStringComparisonExp? get picture;
  GTimestamptzComparisonExp? get updatedAt;
  GStringComparisonExp? get username;
  GStringComparisonExp? get website;
  static Serializer<GUsersBoolExp> get serializer => _$gUsersBoolExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersBoolExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersBoolExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersBoolExp.serializer,
        json,
      );
}

abstract class GUsersOrderBy
    implements Built<GUsersOrderBy, GUsersOrderByBuilder> {
  GUsersOrderBy._();

  factory GUsersOrderBy([void Function(GUsersOrderByBuilder b) updates]) =
      _$GUsersOrderBy;

  GOrderBy? get createdAt;
  GOrderBy? get email;
  GOrderBy? get id;
  GOrderBy? get lastSeen;
  GOrderBy? get nickname;
  GOrderBy? get picture;
  GOrderBy? get updatedAt;
  GOrderBy? get username;
  GOrderBy? get website;
  static Serializer<GUsersOrderBy> get serializer => _$gUsersOrderBySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersOrderBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersOrderBy? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersOrderBy.serializer,
        json,
      );
}

class GUsersSelectColumn extends EnumClass {
  const GUsersSelectColumn._(String name) : super(name);

  static const GUsersSelectColumn createdAt = _$gUsersSelectColumncreatedAt;

  static const GUsersSelectColumn email = _$gUsersSelectColumnemail;

  static const GUsersSelectColumn id = _$gUsersSelectColumnid;

  static const GUsersSelectColumn lastSeen = _$gUsersSelectColumnlastSeen;

  static const GUsersSelectColumn nickname = _$gUsersSelectColumnnickname;

  static const GUsersSelectColumn picture = _$gUsersSelectColumnpicture;

  static const GUsersSelectColumn updatedAt = _$gUsersSelectColumnupdatedAt;

  static const GUsersSelectColumn username = _$gUsersSelectColumnusername;

  static const GUsersSelectColumn website = _$gUsersSelectColumnwebsite;

  static Serializer<GUsersSelectColumn> get serializer =>
      _$gUsersSelectColumnSerializer;

  static BuiltSet<GUsersSelectColumn> get values => _$gUsersSelectColumnValues;

  static GUsersSelectColumn valueOf(String name) =>
      _$gUsersSelectColumnValueOf(name);
}

abstract class GUsersStreamCursorInput
    implements Built<GUsersStreamCursorInput, GUsersStreamCursorInputBuilder> {
  GUsersStreamCursorInput._();

  factory GUsersStreamCursorInput(
          [void Function(GUsersStreamCursorInputBuilder b) updates]) =
      _$GUsersStreamCursorInput;

  GUsersStreamCursorValueInput get initialValue;
  GCursorOrdering? get ordering;
  static Serializer<GUsersStreamCursorInput> get serializer =>
      _$gUsersStreamCursorInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersStreamCursorInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersStreamCursorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersStreamCursorInput.serializer,
        json,
      );
}

abstract class GUsersStreamCursorValueInput
    implements
        Built<GUsersStreamCursorValueInput,
            GUsersStreamCursorValueInputBuilder> {
  GUsersStreamCursorValueInput._();

  factory GUsersStreamCursorValueInput(
          [void Function(GUsersStreamCursorValueInputBuilder b) updates]) =
      _$GUsersStreamCursorValueInput;

  DateTime? get createdAt;
  String? get email;
  String? get id;
  DateTime? get lastSeen;
  String? get nickname;
  String? get picture;
  DateTime? get updatedAt;
  String? get username;
  String? get website;
  static Serializer<GUsersStreamCursorValueInput> get serializer =>
      _$gUsersStreamCursorValueInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUsersStreamCursorValueInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUsersStreamCursorValueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUsersStreamCursorValueInput.serializer,
        json,
      );
}

abstract class GUuidComparisonExp
    implements Built<GUuidComparisonExp, GUuidComparisonExpBuilder> {
  GUuidComparisonExp._();

  factory GUuidComparisonExp(
          [void Function(GUuidComparisonExpBuilder b) updates]) =
      _$GUuidComparisonExp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_isNull')
  bool? get G_isNull;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  static Serializer<GUuidComparisonExp> get serializer =>
      _$gUuidComparisonExpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUuidComparisonExp.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUuidComparisonExp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUuidComparisonExp.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};

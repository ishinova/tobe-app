// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:app_backend/graphql/quest/__generated__/GetQuests.ast.gql.dart'
    as _i5;
import 'package:app_backend/graphql/quest/__generated__/GetQuests.data.gql.dart'
    as _i2;
import 'package:app_backend/graphql/quest/__generated__/GetQuests.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'GetQuests.req.gql.g.dart';

abstract class GGetQuestsReq
    implements
        Built<GGetQuestsReq, GGetQuestsReqBuilder>,
        _i1.OperationRequest<_i2.GGetQuestsData, _i3.GGetQuestsVars> {
  GGetQuestsReq._();

  factory GGetQuestsReq([void Function(GGetQuestsReqBuilder b) updates]) =
      _$GGetQuestsReq;

  static void _initializeBuilder(GGetQuestsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetQuests',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetQuestsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetQuestsData? Function(
    _i2.GGetQuestsData?,
    _i2.GGetQuestsData?,
  )? get updateResult;
  @override
  _i2.GGetQuestsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GGetQuestsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetQuestsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetQuestsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetQuestsData, _i3.GGetQuestsVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetQuestsReq> get serializer => _$gGetQuestsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetQuestsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetQuestsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetQuestsReq.serializer,
        json,
      );
}

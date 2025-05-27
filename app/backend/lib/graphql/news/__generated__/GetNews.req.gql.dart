// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_backend/graphql/__generated__/serializers.gql.dart' as _i6;
import 'package:app_backend/graphql/news/__generated__/GetNews.ast.gql.dart'
    as _i5;
import 'package:app_backend/graphql/news/__generated__/GetNews.data.gql.dart'
    as _i2;
import 'package:app_backend/graphql/news/__generated__/GetNews.var.gql.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'GetNews.req.gql.g.dart';

abstract class GGetNewsReq
    implements
        Built<GGetNewsReq, GGetNewsReqBuilder>,
        _i1.OperationRequest<_i2.GGetNewsData, _i3.GGetNewsVars> {
  GGetNewsReq._();

  factory GGetNewsReq([void Function(GGetNewsReqBuilder b) updates]) =
      _$GGetNewsReq;

  static void _initializeBuilder(GGetNewsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetNews',
    )
    ..executeOnListen = true;

  @override
  _i3.GGetNewsVars get vars;
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
  _i2.GGetNewsData? Function(
    _i2.GGetNewsData?,
    _i2.GGetNewsData?,
  )? get updateResult;
  @override
  _i2.GGetNewsData? get optimisticResponse;
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
  _i2.GGetNewsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetNewsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GGetNewsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GGetNewsData, _i3.GGetNewsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GGetNewsReq> get serializer => _$gGetNewsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetNewsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetNewsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetNewsReq.serializer,
        json,
      );
}

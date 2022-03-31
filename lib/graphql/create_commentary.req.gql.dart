// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/create_commentary.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/create_commentary.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/create_commentary.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'create_commentary.req.gql.g.dart';

abstract class GCreateCommentaryReq
    implements
        Built<GCreateCommentaryReq, GCreateCommentaryReqBuilder>,
        _i1.OperationRequest<_i2.GCreateCommentaryData,
            _i3.GCreateCommentaryVars> {
  GCreateCommentaryReq._();

  factory GCreateCommentaryReq(
          [Function(GCreateCommentaryReqBuilder b) updates]) =
      _$GCreateCommentaryReq;

  static void _initializeBuilder(GCreateCommentaryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateCommentary')
    ..executeOnListen = true;
  _i3.GCreateCommentaryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateCommentaryData? Function(
      _i2.GCreateCommentaryData?, _i2.GCreateCommentaryData?)? get updateResult;
  _i2.GCreateCommentaryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateCommentaryData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateCommentaryData.fromJson(json);
  static Serializer<GCreateCommentaryReq> get serializer =>
      _$gCreateCommentaryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateCommentaryReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateCommentaryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateCommentaryReq.serializer, json);
}

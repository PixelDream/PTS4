// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/load_comments.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/load_comments.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/load_comments.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'load_comments.req.gql.g.dart';

abstract class GLoadCommentsReq
    implements
        Built<GLoadCommentsReq, GLoadCommentsReqBuilder>,
        _i1.OperationRequest<_i2.GLoadCommentsData, _i3.GLoadCommentsVars> {
  GLoadCommentsReq._();

  factory GLoadCommentsReq([Function(GLoadCommentsReqBuilder b) updates]) =
      _$GLoadCommentsReq;

  static void _initializeBuilder(GLoadCommentsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'LoadComments')
    ..executeOnListen = true;
  _i3.GLoadCommentsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLoadCommentsData? Function(
      _i2.GLoadCommentsData?, _i2.GLoadCommentsData?)? get updateResult;
  _i2.GLoadCommentsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLoadCommentsData? parseData(Map<String, dynamic> json) =>
      _i2.GLoadCommentsData.fromJson(json);
  static Serializer<GLoadCommentsReq> get serializer =>
      _$gLoadCommentsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLoadCommentsReq.serializer, this)
          as Map<String, dynamic>);
  static GLoadCommentsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLoadCommentsReq.serializer, json);
}

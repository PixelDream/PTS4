// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/dislike_post.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/dislike_post.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/dislike_post.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'dislike_post.req.gql.g.dart';

abstract class GDislikePostReq
    implements
        Built<GDislikePostReq, GDislikePostReqBuilder>,
        _i1.OperationRequest<_i2.GDislikePostData, _i3.GDislikePostVars> {
  GDislikePostReq._();

  factory GDislikePostReq([Function(GDislikePostReqBuilder b) updates]) =
      _$GDislikePostReq;

  static void _initializeBuilder(GDislikePostReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'DislikePost')
    ..executeOnListen = true;
  _i3.GDislikePostVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GDislikePostData? Function(_i2.GDislikePostData?, _i2.GDislikePostData?)?
      get updateResult;
  _i2.GDislikePostData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GDislikePostData? parseData(Map<String, dynamic> json) =>
      _i2.GDislikePostData.fromJson(json);
  static Serializer<GDislikePostReq> get serializer =>
      _$gDislikePostReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GDislikePostReq.serializer, this)
          as Map<String, dynamic>);
  static GDislikePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GDislikePostReq.serializer, json);
}

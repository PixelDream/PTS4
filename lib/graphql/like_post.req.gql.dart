// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/like_post.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/like_post.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/like_post.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'like_post.req.gql.g.dart';

abstract class GLikePostReq
    implements
        Built<GLikePostReq, GLikePostReqBuilder>,
        _i1.OperationRequest<_i2.GLikePostData, _i3.GLikePostVars> {
  GLikePostReq._();

  factory GLikePostReq([Function(GLikePostReqBuilder b) updates]) =
      _$GLikePostReq;

  static void _initializeBuilder(GLikePostReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'LikePost')
    ..executeOnListen = true;
  _i3.GLikePostVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GLikePostData? Function(_i2.GLikePostData?, _i2.GLikePostData?)?
      get updateResult;
  _i2.GLikePostData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GLikePostData? parseData(Map<String, dynamic> json) =>
      _i2.GLikePostData.fromJson(json);
  static Serializer<GLikePostReq> get serializer => _$gLikePostReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GLikePostReq.serializer, this)
          as Map<String, dynamic>);
  static GLikePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GLikePostReq.serializer, json);
}

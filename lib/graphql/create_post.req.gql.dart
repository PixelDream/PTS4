// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/create_post.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/create_post.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/create_post.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'create_post.req.gql.g.dart';

abstract class GCreatePostReq
    implements
        Built<GCreatePostReq, GCreatePostReqBuilder>,
        _i1.OperationRequest<_i2.GCreatePostData, _i3.GCreatePostVars> {
  GCreatePostReq._();

  factory GCreatePostReq([Function(GCreatePostReqBuilder b) updates]) =
      _$GCreatePostReq;

  static void _initializeBuilder(GCreatePostReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreatePost')
    ..executeOnListen = true;
  _i3.GCreatePostVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreatePostData? Function(_i2.GCreatePostData?, _i2.GCreatePostData?)?
      get updateResult;
  _i2.GCreatePostData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreatePostData? parseData(Map<String, dynamic> json) =>
      _i2.GCreatePostData.fromJson(json);
  static Serializer<GCreatePostReq> get serializer =>
      _$gCreatePostReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreatePostReq.serializer, this)
          as Map<String, dynamic>);
  static GCreatePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreatePostReq.serializer, json);
}

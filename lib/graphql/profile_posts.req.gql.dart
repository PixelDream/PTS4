// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/profile_posts.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/profile_posts.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/profile_posts.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'profile_posts.req.gql.g.dart';

abstract class GProfilePostsReq
    implements
        Built<GProfilePostsReq, GProfilePostsReqBuilder>,
        _i1.OperationRequest<_i2.GProfilePostsData, _i3.GProfilePostsVars> {
  GProfilePostsReq._();

  factory GProfilePostsReq([Function(GProfilePostsReqBuilder b) updates]) =
      _$GProfilePostsReq;

  static void _initializeBuilder(GProfilePostsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'ProfilePosts')
    ..executeOnListen = true;
  _i3.GProfilePostsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GProfilePostsData? Function(
      _i2.GProfilePostsData?, _i2.GProfilePostsData?)? get updateResult;
  _i2.GProfilePostsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GProfilePostsData? parseData(Map<String, dynamic> json) =>
      _i2.GProfilePostsData.fromJson(json);
  static Serializer<GProfilePostsReq> get serializer =>
      _$gProfilePostsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GProfilePostsReq.serializer, this)
          as Map<String, dynamic>);
  static GProfilePostsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GProfilePostsReq.serializer, json);
}

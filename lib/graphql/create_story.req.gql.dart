// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/create_story.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/create_story.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/create_story.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'create_story.req.gql.g.dart';

abstract class GCreateStoriesReq
    implements
        Built<GCreateStoriesReq, GCreateStoriesReqBuilder>,
        _i1.OperationRequest<_i2.GCreateStoriesData, _i3.GCreateStoriesVars> {
  GCreateStoriesReq._();

  factory GCreateStoriesReq([Function(GCreateStoriesReqBuilder b) updates]) =
      _$GCreateStoriesReq;

  static void _initializeBuilder(GCreateStoriesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CreateStories')
    ..executeOnListen = true;
  _i3.GCreateStoriesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateStoriesData? Function(
      _i2.GCreateStoriesData?, _i2.GCreateStoriesData?)? get updateResult;
  _i2.GCreateStoriesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateStoriesData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateStoriesData.fromJson(json);
  static Serializer<GCreateStoriesReq> get serializer =>
      _$gCreateStoriesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateStoriesReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateStoriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCreateStoriesReq.serializer, json);
}

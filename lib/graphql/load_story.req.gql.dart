// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/load_story.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/load_story.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/load_story.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'load_story.req.gql.g.dart';

abstract class GloadStoriesReq
    implements
        Built<GloadStoriesReq, GloadStoriesReqBuilder>,
        _i1.OperationRequest<_i2.GloadStoriesData, _i3.GloadStoriesVars> {
  GloadStoriesReq._();

  factory GloadStoriesReq([Function(GloadStoriesReqBuilder b) updates]) =
      _$GloadStoriesReq;

  static void _initializeBuilder(GloadStoriesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'loadStories')
    ..executeOnListen = true;
  _i3.GloadStoriesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GloadStoriesData? Function(_i2.GloadStoriesData?, _i2.GloadStoriesData?)?
      get updateResult;
  _i2.GloadStoriesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GloadStoriesData? parseData(Map<String, dynamic> json) =>
      _i2.GloadStoriesData.fromJson(json);
  static Serializer<GloadStoriesReq> get serializer =>
      _$gloadStoriesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GloadStoriesReq.serializer, this)
          as Map<String, dynamic>);
  static GloadStoriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GloadStoriesReq.serializer, json);
}

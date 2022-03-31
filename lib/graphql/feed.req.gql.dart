// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/feed.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/feed.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/feed.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'feed.req.gql.g.dart';

abstract class GFeedReq
    implements
        Built<GFeedReq, GFeedReqBuilder>,
        _i1.OperationRequest<_i2.GFeedData, _i3.GFeedVars> {
  GFeedReq._();

  factory GFeedReq([Function(GFeedReqBuilder b) updates]) = _$GFeedReq;

  static void _initializeBuilder(GFeedReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'Feed')
    ..executeOnListen = true;
  _i3.GFeedVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFeedData? Function(_i2.GFeedData?, _i2.GFeedData?)? get updateResult;
  _i2.GFeedData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFeedData? parseData(Map<String, dynamic> json) =>
      _i2.GFeedData.fromJson(json);
  static Serializer<GFeedReq> get serializer => _$gFeedReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFeedReq.serializer, this)
          as Map<String, dynamic>);
  static GFeedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFeedReq.serializer, json);
}

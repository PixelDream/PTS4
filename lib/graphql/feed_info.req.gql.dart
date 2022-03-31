// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/feed_info.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/feed_info.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/feed_info.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'feed_info.req.gql.g.dart';

abstract class GFeedInfoReq
    implements
        Built<GFeedInfoReq, GFeedInfoReqBuilder>,
        _i1.OperationRequest<_i2.GFeedInfoData, _i3.GFeedInfoVars> {
  GFeedInfoReq._();

  factory GFeedInfoReq([Function(GFeedInfoReqBuilder b) updates]) =
      _$GFeedInfoReq;

  static void _initializeBuilder(GFeedInfoReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FeedInfo')
    ..executeOnListen = true;
  _i3.GFeedInfoVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFeedInfoData? Function(_i2.GFeedInfoData?, _i2.GFeedInfoData?)?
      get updateResult;
  _i2.GFeedInfoData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFeedInfoData? parseData(Map<String, dynamic> json) =>
      _i2.GFeedInfoData.fromJson(json);
  static Serializer<GFeedInfoReq> get serializer => _$gFeedInfoReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFeedInfoReq.serializer, this)
          as Map<String, dynamic>);
  static GFeedInfoReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFeedInfoReq.serializer, json);
}

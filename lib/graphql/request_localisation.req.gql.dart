// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/request_localisation.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/request_localisation.data.gql.dart'
    as _i2;
import 'package:socialnetwork/graphql/request_localisation.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'request_localisation.req.gql.g.dart';

abstract class GFriendsLocalisationReq
    implements
        Built<GFriendsLocalisationReq, GFriendsLocalisationReqBuilder>,
        _i1.OperationRequest<_i2.GFriendsLocalisationData,
            _i3.GFriendsLocalisationVars> {
  GFriendsLocalisationReq._();

  factory GFriendsLocalisationReq(
          [Function(GFriendsLocalisationReqBuilder b) updates]) =
      _$GFriendsLocalisationReq;

  static void _initializeBuilder(GFriendsLocalisationReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'FriendsLocalisation')
    ..executeOnListen = true;
  _i3.GFriendsLocalisationVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFriendsLocalisationData? Function(
          _i2.GFriendsLocalisationData?, _i2.GFriendsLocalisationData?)?
      get updateResult;
  _i2.GFriendsLocalisationData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFriendsLocalisationData? parseData(Map<String, dynamic> json) =>
      _i2.GFriendsLocalisationData.fromJson(json);
  static Serializer<GFriendsLocalisationReq> get serializer =>
      _$gFriendsLocalisationReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFriendsLocalisationReq.serializer, this)
          as Map<String, dynamic>);
  static GFriendsLocalisationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFriendsLocalisationReq.serializer, json);
}

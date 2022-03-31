// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;
import 'package:socialnetwork/graphql/update_location.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/update_location.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/update_location.var.gql.dart' as _i3;

part 'update_location.req.gql.g.dart';

abstract class GUpdateLocationReq
    implements
        Built<GUpdateLocationReq, GUpdateLocationReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateLocationData, _i3.GUpdateLocationVars> {
  GUpdateLocationReq._();

  factory GUpdateLocationReq([Function(GUpdateLocationReqBuilder b) updates]) =
      _$GUpdateLocationReq;

  static void _initializeBuilder(GUpdateLocationReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UpdateLocation')
    ..executeOnListen = true;
  _i3.GUpdateLocationVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GUpdateLocationData? Function(
      _i2.GUpdateLocationData?, _i2.GUpdateLocationData?)? get updateResult;
  _i2.GUpdateLocationData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GUpdateLocationData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateLocationData.fromJson(json);
  static Serializer<GUpdateLocationReq> get serializer =>
      _$gUpdateLocationReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUpdateLocationReq.serializer, this)
          as Map<String, dynamic>);
  static GUpdateLocationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUpdateLocationReq.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;
import 'package:socialnetwork/graphql/sign_in.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/sign_in.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/sign_in.var.gql.dart' as _i3;

part 'sign_in.req.gql.g.dart';

abstract class GSignInReq
    implements
        Built<GSignInReq, GSignInReqBuilder>,
        _i1.OperationRequest<_i2.GSignInData, _i3.GSignInVars> {
  GSignInReq._();

  factory GSignInReq([Function(GSignInReqBuilder b) updates]) = _$GSignInReq;

  static void _initializeBuilder(GSignInReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'SignIn')
    ..executeOnListen = true;
  _i3.GSignInVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GSignInData? Function(_i2.GSignInData?, _i2.GSignInData?)?
      get updateResult;
  _i2.GSignInData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GSignInData? parseData(Map<String, dynamic> json) =>
      _i2.GSignInData.fromJson(json);
  static Serializer<GSignInReq> get serializer => _$gSignInReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GSignInReq.serializer, this)
          as Map<String, dynamic>);
  static GSignInReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GSignInReq.serializer, json);
}

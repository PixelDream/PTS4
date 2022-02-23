// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/RequestResetPassword.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/RequestResetPassword.data.gql.dart'
    as _i2;
import 'package:socialnetwork/graphql/RequestResetPassword.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'RequestResetPassword.req.gql.g.dart';

abstract class GRequestResetPasswordReq
    implements
        Built<GRequestResetPasswordReq, GRequestResetPasswordReqBuilder>,
        _i1.OperationRequest<_i2.GRequestResetPasswordData,
            _i3.GRequestResetPasswordVars> {
  GRequestResetPasswordReq._();

  factory GRequestResetPasswordReq(
          [Function(GRequestResetPasswordReqBuilder b) updates]) =
      _$GRequestResetPasswordReq;

  static void _initializeBuilder(GRequestResetPasswordReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'RequestResetPassword')
    ..executeOnListen = true;
  _i3.GRequestResetPasswordVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRequestResetPasswordData? Function(
          _i2.GRequestResetPasswordData?, _i2.GRequestResetPasswordData?)?
      get updateResult;
  _i2.GRequestResetPasswordData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRequestResetPasswordData? parseData(Map<String, dynamic> json) =>
      _i2.GRequestResetPasswordData.fromJson(json);
  static Serializer<GRequestResetPasswordReq> get serializer =>
      _$gRequestResetPasswordReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRequestResetPasswordReq.serializer, this)
          as Map<String, dynamic>);
  static GRequestResetPasswordReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GRequestResetPasswordReq.serializer, json);
}

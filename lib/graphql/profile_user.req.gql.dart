// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/profile_user.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/profile_user.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/profile_user.var.gql.dart' as _i3;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;

part 'profile_user.req.gql.g.dart';

abstract class GProfileReq
    implements
        Built<GProfileReq, GProfileReqBuilder>,
        _i1.OperationRequest<_i2.GProfileData, _i3.GProfileVars> {
  GProfileReq._();

  factory GProfileReq([Function(GProfileReqBuilder b) updates]) = _$GProfileReq;

  static void _initializeBuilder(GProfileReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'Profile')
    ..executeOnListen = true;
  _i3.GProfileVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GProfileData? Function(_i2.GProfileData?, _i2.GProfileData?)?
      get updateResult;
  _i2.GProfileData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GProfileData.fromJson(json);
  static Serializer<GProfileReq> get serializer => _$gProfileReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GProfileReq.serializer, this)
          as Map<String, dynamic>);
  static GProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GProfileReq.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i6;
import 'package:socialnetwork/graphql/upload_files.ast.gql.dart' as _i5;
import 'package:socialnetwork/graphql/upload_files.data.gql.dart' as _i2;
import 'package:socialnetwork/graphql/upload_files.var.gql.dart' as _i3;

part 'upload_files.req.gql.g.dart';

abstract class GUploadFilesReq
    implements
        Built<GUploadFilesReq, GUploadFilesReqBuilder>,
        _i1.OperationRequest<_i2.GUploadFilesData, _i3.GUploadFilesVars> {
  GUploadFilesReq._();

  factory GUploadFilesReq([Function(GUploadFilesReqBuilder b) updates]) =
      _$GUploadFilesReq;

  static void _initializeBuilder(GUploadFilesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UploadFiles')
    ..executeOnListen = true;
  _i3.GUploadFilesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GUploadFilesData? Function(_i2.GUploadFilesData?, _i2.GUploadFilesData?)?
      get updateResult;
  _i2.GUploadFilesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GUploadFilesData? parseData(Map<String, dynamic> json) =>
      _i2.GUploadFilesData.fromJson(json);
  static Serializer<GUploadFilesReq> get serializer =>
      _$gUploadFilesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUploadFilesReq.serializer, this)
          as Map<String, dynamic>);
  static GUploadFilesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUploadFilesReq.serializer, json);
}

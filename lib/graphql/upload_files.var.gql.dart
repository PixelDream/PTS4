// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'upload_files.var.gql.g.dart';

abstract class GUploadFilesVars
    implements Built<GUploadFilesVars, GUploadFilesVarsBuilder> {
  GUploadFilesVars._();

  factory GUploadFilesVars([Function(GUploadFilesVarsBuilder b) updates]) =
      _$GUploadFilesVars;

  BuiltList<String> get files;
  String get type;
  static Serializer<GUploadFilesVars> get serializer =>
      _$gUploadFilesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUploadFilesVars.serializer, this)
          as Map<String, dynamic>);
  static GUploadFilesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUploadFilesVars.serializer, json);
}

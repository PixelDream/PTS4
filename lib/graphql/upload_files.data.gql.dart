// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'upload_files.data.gql.g.dart';

abstract class GUploadFilesData
    implements Built<GUploadFilesData, GUploadFilesDataBuilder> {
  GUploadFilesData._();

  factory GUploadFilesData([Function(GUploadFilesDataBuilder b) updates]) =
      _$GUploadFilesData;

  static void _initializeBuilder(GUploadFilesDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<String> get uploadFiles;
  static Serializer<GUploadFilesData> get serializer =>
      _$gUploadFilesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUploadFilesData.serializer, this)
          as Map<String, dynamic>);
  static GUploadFilesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUploadFilesData.serializer, json);
}

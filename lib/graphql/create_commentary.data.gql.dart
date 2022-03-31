// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'create_commentary.data.gql.g.dart';

abstract class GCreateCommentaryData
    implements Built<GCreateCommentaryData, GCreateCommentaryDataBuilder> {
  GCreateCommentaryData._();

  factory GCreateCommentaryData(
          [Function(GCreateCommentaryDataBuilder b) updates]) =
      _$GCreateCommentaryData;

  static void _initializeBuilder(GCreateCommentaryDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateCommentaryData_createComments get createComments;
  static Serializer<GCreateCommentaryData> get serializer =>
      _$gCreateCommentaryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateCommentaryData.serializer, this)
          as Map<String, dynamic>);
  static GCreateCommentaryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateCommentaryData.serializer, json);
}

abstract class GCreateCommentaryData_createComments
    implements
        Built<GCreateCommentaryData_createComments,
            GCreateCommentaryData_createCommentsBuilder> {
  GCreateCommentaryData_createComments._();

  factory GCreateCommentaryData_createComments(
          [Function(GCreateCommentaryData_createCommentsBuilder b) updates]) =
      _$GCreateCommentaryData_createComments;

  static void _initializeBuilder(
          GCreateCommentaryData_createCommentsBuilder b) =>
      b..G__typename = 'CreateCommentsMutationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateCommentaryData_createComments_info get info;
  static Serializer<GCreateCommentaryData_createComments> get serializer =>
      _$gCreateCommentaryDataCreateCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreateCommentaryData_createComments.serializer, this)
      as Map<String, dynamic>);
  static GCreateCommentaryData_createComments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateCommentaryData_createComments.serializer, json);
}

abstract class GCreateCommentaryData_createComments_info
    implements
        Built<GCreateCommentaryData_createComments_info,
            GCreateCommentaryData_createComments_infoBuilder> {
  GCreateCommentaryData_createComments_info._();

  factory GCreateCommentaryData_createComments_info(
      [Function(GCreateCommentaryData_createComments_infoBuilder b)
          updates]) = _$GCreateCommentaryData_createComments_info;

  static void _initializeBuilder(
          GCreateCommentaryData_createComments_infoBuilder b) =>
      b..G__typename = 'CreateInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get nodesCreated;
  static Serializer<GCreateCommentaryData_createComments_info> get serializer =>
      _$gCreateCommentaryDataCreateCommentsInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateCommentaryData_createComments_info.serializer, this)
      as Map<String, dynamic>);
  static GCreateCommentaryData_createComments_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateCommentaryData_createComments_info.serializer, json);
}

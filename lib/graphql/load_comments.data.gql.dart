// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'load_comments.data.gql.g.dart';

abstract class GLoadCommentsData
    implements Built<GLoadCommentsData, GLoadCommentsDataBuilder> {
  GLoadCommentsData._();

  factory GLoadCommentsData([Function(GLoadCommentsDataBuilder b) updates]) =
      _$GLoadCommentsData;

  static void _initializeBuilder(GLoadCommentsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GLoadCommentsData_comments> get comments;
  static Serializer<GLoadCommentsData> get serializer =>
      _$gLoadCommentsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoadCommentsData.serializer, this)
          as Map<String, dynamic>);
  static GLoadCommentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoadCommentsData.serializer, json);
}

abstract class GLoadCommentsData_comments
    implements
        Built<GLoadCommentsData_comments, GLoadCommentsData_commentsBuilder> {
  GLoadCommentsData_comments._();

  factory GLoadCommentsData_comments(
          [Function(GLoadCommentsData_commentsBuilder b) updates]) =
      _$GLoadCommentsData_comments;

  static void _initializeBuilder(GLoadCommentsData_commentsBuilder b) =>
      b..G__typename = 'Comment';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get commentary;
  GLoadCommentsData_comments_creator get creator;
  static Serializer<GLoadCommentsData_comments> get serializer =>
      _$gLoadCommentsDataCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GLoadCommentsData_comments.serializer, this) as Map<String, dynamic>);
  static GLoadCommentsData_comments? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLoadCommentsData_comments.serializer, json);
}

abstract class GLoadCommentsData_comments_creator
    implements
        Built<GLoadCommentsData_comments_creator,
            GLoadCommentsData_comments_creatorBuilder> {
  GLoadCommentsData_comments_creator._();

  factory GLoadCommentsData_comments_creator(
          [Function(GLoadCommentsData_comments_creatorBuilder b) updates]) =
      _$GLoadCommentsData_comments_creator;

  static void _initializeBuilder(GLoadCommentsData_comments_creatorBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get id;
  String? get image;
  static Serializer<GLoadCommentsData_comments_creator> get serializer =>
      _$gLoadCommentsDataCommentsCreatorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GLoadCommentsData_comments_creator.serializer, this)
      as Map<String, dynamic>);
  static GLoadCommentsData_comments_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLoadCommentsData_comments_creator.serializer, json);
}

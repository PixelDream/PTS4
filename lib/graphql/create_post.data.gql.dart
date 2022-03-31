// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'create_post.data.gql.g.dart';

abstract class GCreatePostData
    implements Built<GCreatePostData, GCreatePostDataBuilder> {
  GCreatePostData._();

  factory GCreatePostData([Function(GCreatePostDataBuilder b) updates]) =
      _$GCreatePostData;

  static void _initializeBuilder(GCreatePostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePostData_createPosts get createPosts;
  static Serializer<GCreatePostData> get serializer =>
      _$gCreatePostDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreatePostData.serializer, this)
          as Map<String, dynamic>);
  static GCreatePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreatePostData.serializer, json);
}

abstract class GCreatePostData_createPosts
    implements
        Built<GCreatePostData_createPosts, GCreatePostData_createPostsBuilder> {
  GCreatePostData_createPosts._();

  factory GCreatePostData_createPosts(
          [Function(GCreatePostData_createPostsBuilder b) updates]) =
      _$GCreatePostData_createPosts;

  static void _initializeBuilder(GCreatePostData_createPostsBuilder b) =>
      b..G__typename = 'CreatePostsMutationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePostData_createPosts_info get info;
  static Serializer<GCreatePostData_createPosts> get serializer =>
      _$gCreatePostDataCreatePostsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCreatePostData_createPosts.serializer, this) as Map<String, dynamic>);
  static GCreatePostData_createPosts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreatePostData_createPosts.serializer, json);
}

abstract class GCreatePostData_createPosts_info
    implements
        Built<GCreatePostData_createPosts_info,
            GCreatePostData_createPosts_infoBuilder> {
  GCreatePostData_createPosts_info._();

  factory GCreatePostData_createPosts_info(
          [Function(GCreatePostData_createPosts_infoBuilder b) updates]) =
      _$GCreatePostData_createPosts_info;

  static void _initializeBuilder(GCreatePostData_createPosts_infoBuilder b) =>
      b..G__typename = 'CreateInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get nodesCreated;
  int get relationshipsCreated;
  static Serializer<GCreatePostData_createPosts_info> get serializer =>
      _$gCreatePostDataCreatePostsInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreatePostData_createPosts_info.serializer, this)
      as Map<String, dynamic>);
  static GCreatePostData_createPosts_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreatePostData_createPosts_info.serializer, json);
}

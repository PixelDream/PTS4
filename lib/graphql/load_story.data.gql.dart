// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i2;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'load_story.data.gql.g.dart';

abstract class GloadStoriesData
    implements Built<GloadStoriesData, GloadStoriesDataBuilder> {
  GloadStoriesData._();

  factory GloadStoriesData([Function(GloadStoriesDataBuilder b) updates]) =
      _$GloadStoriesData;

  static void _initializeBuilder(GloadStoriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GloadStoriesData_users> get users;
  static Serializer<GloadStoriesData> get serializer =>
      _$gloadStoriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GloadStoriesData.serializer, this)
          as Map<String, dynamic>);
  static GloadStoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GloadStoriesData.serializer, json);
}

abstract class GloadStoriesData_users
    implements Built<GloadStoriesData_users, GloadStoriesData_usersBuilder> {
  GloadStoriesData_users._();

  factory GloadStoriesData_users(
          [Function(GloadStoriesData_usersBuilder b) updates]) =
      _$GloadStoriesData_users;

  static void _initializeBuilder(GloadStoriesData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GloadStoriesData_users_stories> get stories;
  static Serializer<GloadStoriesData_users> get serializer =>
      _$gloadStoriesDataUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GloadStoriesData_users.serializer, this)
          as Map<String, dynamic>);
  static GloadStoriesData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GloadStoriesData_users.serializer, json);
}

abstract class GloadStoriesData_users_stories
    implements
        Built<GloadStoriesData_users_stories,
            GloadStoriesData_users_storiesBuilder> {
  GloadStoriesData_users_stories._();

  factory GloadStoriesData_users_stories(
          [Function(GloadStoriesData_users_storiesBuilder b) updates]) =
      _$GloadStoriesData_users_stories;

  static void _initializeBuilder(GloadStoriesData_users_storiesBuilder b) =>
      b..G__typename = 'Story';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get music;
  String get media;
  _i2.GDateTime? get createdAt;
  GloadStoriesData_users_stories_creator? get creator;
  static Serializer<GloadStoriesData_users_stories> get serializer =>
      _$gloadStoriesDataUsersStoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GloadStoriesData_users_stories.serializer, this) as Map<String, dynamic>);
  static GloadStoriesData_users_stories? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GloadStoriesData_users_stories.serializer, json);
}

abstract class GloadStoriesData_users_stories_creator
    implements
        Built<GloadStoriesData_users_stories_creator,
            GloadStoriesData_users_stories_creatorBuilder> {
  GloadStoriesData_users_stories_creator._();

  factory GloadStoriesData_users_stories_creator(
          [Function(GloadStoriesData_users_stories_creatorBuilder b) updates]) =
      _$GloadStoriesData_users_stories_creator;

  static void _initializeBuilder(
          GloadStoriesData_users_stories_creatorBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String? get image;
  static Serializer<GloadStoriesData_users_stories_creator> get serializer =>
      _$gloadStoriesDataUsersStoriesCreatorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GloadStoriesData_users_stories_creator.serializer, this)
      as Map<String, dynamic>);
  static GloadStoriesData_users_stories_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GloadStoriesData_users_stories_creator.serializer, json);
}

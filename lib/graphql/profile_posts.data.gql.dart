// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'profile_posts.data.gql.g.dart';

abstract class GProfilePostsData
    implements Built<GProfilePostsData, GProfilePostsDataBuilder> {
  GProfilePostsData._();

  factory GProfilePostsData([Function(GProfilePostsDataBuilder b) updates]) =
      _$GProfilePostsData;

  static void _initializeBuilder(GProfilePostsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProfilePostsData_users> get users;
  static Serializer<GProfilePostsData> get serializer =>
      _$gProfilePostsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProfilePostsData.serializer, this)
          as Map<String, dynamic>);
  static GProfilePostsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProfilePostsData.serializer, json);
}

abstract class GProfilePostsData_users
    implements Built<GProfilePostsData_users, GProfilePostsData_usersBuilder> {
  GProfilePostsData_users._();

  factory GProfilePostsData_users(
          [Function(GProfilePostsData_usersBuilder b) updates]) =
      _$GProfilePostsData_users;

  static void _initializeBuilder(GProfilePostsData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProfilePostsData_users_postLikes> get postLikes;
  BuiltList<GProfilePostsData_users_posts> get posts;
  static Serializer<GProfilePostsData_users> get serializer =>
      _$gProfilePostsDataUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProfilePostsData_users.serializer, this)
          as Map<String, dynamic>);
  static GProfilePostsData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProfilePostsData_users.serializer, json);
}

abstract class GProfilePostsData_users_postLikes
    implements
        Built<GProfilePostsData_users_postLikes,
            GProfilePostsData_users_postLikesBuilder> {
  GProfilePostsData_users_postLikes._();

  factory GProfilePostsData_users_postLikes(
          [Function(GProfilePostsData_users_postLikesBuilder b) updates]) =
      _$GProfilePostsData_users_postLikes;

  static void _initializeBuilder(GProfilePostsData_users_postLikesBuilder b) =>
      b..G__typename = 'Post';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GProfilePostsData_users_postLikes> get serializer =>
      _$gProfilePostsDataUsersPostLikesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GProfilePostsData_users_postLikes.serializer, this)
      as Map<String, dynamic>);
  static GProfilePostsData_users_postLikes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GProfilePostsData_users_postLikes.serializer, json);
}

abstract class GProfilePostsData_users_posts
    implements
        Built<GProfilePostsData_users_posts,
            GProfilePostsData_users_postsBuilder> {
  GProfilePostsData_users_posts._();

  factory GProfilePostsData_users_posts(
          [Function(GProfilePostsData_users_postsBuilder b) updates]) =
      _$GProfilePostsData_users_posts;

  static void _initializeBuilder(GProfilePostsData_users_postsBuilder b) =>
      b..G__typename = 'Post';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get music;
  BuiltList<String> get media;
  GProfilePostsData_users_posts_creator? get creator;
  GProfilePostsData_users_posts_likesConnection get likesConnection;
  GProfilePostsData_users_posts_commentsConnection get commentsConnection;
  static Serializer<GProfilePostsData_users_posts> get serializer =>
      _$gProfilePostsDataUsersPostsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GProfilePostsData_users_posts.serializer, this) as Map<String, dynamic>);
  static GProfilePostsData_users_posts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GProfilePostsData_users_posts.serializer, json);
}

abstract class GProfilePostsData_users_posts_creator
    implements
        Built<GProfilePostsData_users_posts_creator,
            GProfilePostsData_users_posts_creatorBuilder> {
  GProfilePostsData_users_posts_creator._();

  factory GProfilePostsData_users_posts_creator(
          [Function(GProfilePostsData_users_posts_creatorBuilder b) updates]) =
      _$GProfilePostsData_users_posts_creator;

  static void _initializeBuilder(
          GProfilePostsData_users_posts_creatorBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get firstName;
  String get lastName;
  String? get image;
  String get pseudo;
  static Serializer<GProfilePostsData_users_posts_creator> get serializer =>
      _$gProfilePostsDataUsersPostsCreatorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GProfilePostsData_users_posts_creator.serializer, this)
      as Map<String, dynamic>);
  static GProfilePostsData_users_posts_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GProfilePostsData_users_posts_creator.serializer, json);
}

abstract class GProfilePostsData_users_posts_likesConnection
    implements
        Built<GProfilePostsData_users_posts_likesConnection,
            GProfilePostsData_users_posts_likesConnectionBuilder> {
  GProfilePostsData_users_posts_likesConnection._();

  factory GProfilePostsData_users_posts_likesConnection(
      [Function(GProfilePostsData_users_posts_likesConnectionBuilder b)
          updates]) = _$GProfilePostsData_users_posts_likesConnection;

  static void _initializeBuilder(
          GProfilePostsData_users_posts_likesConnectionBuilder b) =>
      b..G__typename = 'PostLikesConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GProfilePostsData_users_posts_likesConnection>
      get serializer => _$gProfilePostsDataUsersPostsLikesConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GProfilePostsData_users_posts_likesConnection.serializer, this)
      as Map<String, dynamic>);
  static GProfilePostsData_users_posts_likesConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GProfilePostsData_users_posts_likesConnection.serializer, json);
}

abstract class GProfilePostsData_users_posts_commentsConnection
    implements
        Built<GProfilePostsData_users_posts_commentsConnection,
            GProfilePostsData_users_posts_commentsConnectionBuilder> {
  GProfilePostsData_users_posts_commentsConnection._();

  factory GProfilePostsData_users_posts_commentsConnection(
      [Function(GProfilePostsData_users_posts_commentsConnectionBuilder b)
          updates]) = _$GProfilePostsData_users_posts_commentsConnection;

  static void _initializeBuilder(
          GProfilePostsData_users_posts_commentsConnectionBuilder b) =>
      b..G__typename = 'PostCommentsConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GProfilePostsData_users_posts_commentsConnection>
      get serializer =>
          _$gProfilePostsDataUsersPostsCommentsConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GProfilePostsData_users_posts_commentsConnection.serializer, this)
      as Map<String, dynamic>);
  static GProfilePostsData_users_posts_commentsConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GProfilePostsData_users_posts_commentsConnection.serializer, json);
}

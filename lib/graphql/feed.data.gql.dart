// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'feed.data.gql.g.dart';

abstract class GFeedData implements Built<GFeedData, GFeedDataBuilder> {
  GFeedData._();

  factory GFeedData([Function(GFeedDataBuilder b) updates]) = _$GFeedData;

  static void _initializeBuilder(GFeedDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFeedData_users> get users;
  static Serializer<GFeedData> get serializer => _$gFeedDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedData.serializer, this)
          as Map<String, dynamic>);
  static GFeedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedData.serializer, json);
}

abstract class GFeedData_users
    implements Built<GFeedData_users, GFeedData_usersBuilder> {
  GFeedData_users._();

  factory GFeedData_users([Function(GFeedData_usersBuilder b) updates]) =
      _$GFeedData_users;

  static void _initializeBuilder(GFeedData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFeedData_users_postLikes> get postLikes;
  BuiltList<GFeedData_users_friends> get friends;
  static Serializer<GFeedData_users> get serializer =>
      _$gFeedDataUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedData_users.serializer, this)
          as Map<String, dynamic>);
  static GFeedData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedData_users.serializer, json);
}

abstract class GFeedData_users_postLikes
    implements
        Built<GFeedData_users_postLikes, GFeedData_users_postLikesBuilder> {
  GFeedData_users_postLikes._();

  factory GFeedData_users_postLikes(
          [Function(GFeedData_users_postLikesBuilder b) updates]) =
      _$GFeedData_users_postLikes;

  static void _initializeBuilder(GFeedData_users_postLikesBuilder b) =>
      b..G__typename = 'Post';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GFeedData_users_postLikes> get serializer =>
      _$gFeedDataUsersPostLikesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedData_users_postLikes.serializer, this)
          as Map<String, dynamic>);
  static GFeedData_users_postLikes? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedData_users_postLikes.serializer, json);
}

abstract class GFeedData_users_friends
    implements Built<GFeedData_users_friends, GFeedData_users_friendsBuilder> {
  GFeedData_users_friends._();

  factory GFeedData_users_friends(
          [Function(GFeedData_users_friendsBuilder b) updates]) =
      _$GFeedData_users_friends;

  static void _initializeBuilder(GFeedData_users_friendsBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get firstName;
  String get lastName;
  String? get image;
  GFeedData_users_friends_storiesConnection get storiesConnection;
  BuiltList<GFeedData_users_friends_posts> get posts;
  static Serializer<GFeedData_users_friends> get serializer =>
      _$gFeedDataUsersFriendsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedData_users_friends.serializer, this)
          as Map<String, dynamic>);
  static GFeedData_users_friends? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedData_users_friends.serializer, json);
}

abstract class GFeedData_users_friends_storiesConnection
    implements
        Built<GFeedData_users_friends_storiesConnection,
            GFeedData_users_friends_storiesConnectionBuilder> {
  GFeedData_users_friends_storiesConnection._();

  factory GFeedData_users_friends_storiesConnection(
      [Function(GFeedData_users_friends_storiesConnectionBuilder b)
          updates]) = _$GFeedData_users_friends_storiesConnection;

  static void _initializeBuilder(
          GFeedData_users_friends_storiesConnectionBuilder b) =>
      b..G__typename = 'UserStoriesConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GFeedData_users_friends_storiesConnection> get serializer =>
      _$gFeedDataUsersFriendsStoriesConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedData_users_friends_storiesConnection.serializer, this)
      as Map<String, dynamic>);
  static GFeedData_users_friends_storiesConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedData_users_friends_storiesConnection.serializer, json);
}

abstract class GFeedData_users_friends_posts
    implements
        Built<GFeedData_users_friends_posts,
            GFeedData_users_friends_postsBuilder> {
  GFeedData_users_friends_posts._();

  factory GFeedData_users_friends_posts(
          [Function(GFeedData_users_friends_postsBuilder b) updates]) =
      _$GFeedData_users_friends_posts;

  static void _initializeBuilder(GFeedData_users_friends_postsBuilder b) =>
      b..G__typename = 'Post';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get music;
  BuiltList<String> get media;
  GFeedData_users_friends_posts_creator? get creator;
  GFeedData_users_friends_posts_likesConnection get likesConnection;
  GFeedData_users_friends_posts_commentsConnection get commentsConnection;
  static Serializer<GFeedData_users_friends_posts> get serializer =>
      _$gFeedDataUsersFriendsPostsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedData_users_friends_posts.serializer, this) as Map<String, dynamic>);
  static GFeedData_users_friends_posts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedData_users_friends_posts.serializer, json);
}

abstract class GFeedData_users_friends_posts_creator
    implements
        Built<GFeedData_users_friends_posts_creator,
            GFeedData_users_friends_posts_creatorBuilder> {
  GFeedData_users_friends_posts_creator._();

  factory GFeedData_users_friends_posts_creator(
          [Function(GFeedData_users_friends_posts_creatorBuilder b) updates]) =
      _$GFeedData_users_friends_posts_creator;

  static void _initializeBuilder(
          GFeedData_users_friends_posts_creatorBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get firstName;
  String get lastName;
  String? get image;
  String get pseudo;
  static Serializer<GFeedData_users_friends_posts_creator> get serializer =>
      _$gFeedDataUsersFriendsPostsCreatorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedData_users_friends_posts_creator.serializer, this)
      as Map<String, dynamic>);
  static GFeedData_users_friends_posts_creator? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedData_users_friends_posts_creator.serializer, json);
}

abstract class GFeedData_users_friends_posts_likesConnection
    implements
        Built<GFeedData_users_friends_posts_likesConnection,
            GFeedData_users_friends_posts_likesConnectionBuilder> {
  GFeedData_users_friends_posts_likesConnection._();

  factory GFeedData_users_friends_posts_likesConnection(
      [Function(GFeedData_users_friends_posts_likesConnectionBuilder b)
          updates]) = _$GFeedData_users_friends_posts_likesConnection;

  static void _initializeBuilder(
          GFeedData_users_friends_posts_likesConnectionBuilder b) =>
      b..G__typename = 'PostLikesConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GFeedData_users_friends_posts_likesConnection>
      get serializer => _$gFeedDataUsersFriendsPostsLikesConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedData_users_friends_posts_likesConnection.serializer, this)
      as Map<String, dynamic>);
  static GFeedData_users_friends_posts_likesConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedData_users_friends_posts_likesConnection.serializer, json);
}

abstract class GFeedData_users_friends_posts_commentsConnection
    implements
        Built<GFeedData_users_friends_posts_commentsConnection,
            GFeedData_users_friends_posts_commentsConnectionBuilder> {
  GFeedData_users_friends_posts_commentsConnection._();

  factory GFeedData_users_friends_posts_commentsConnection(
      [Function(GFeedData_users_friends_posts_commentsConnectionBuilder b)
          updates]) = _$GFeedData_users_friends_posts_commentsConnection;

  static void _initializeBuilder(
          GFeedData_users_friends_posts_commentsConnectionBuilder b) =>
      b..G__typename = 'PostCommentsConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GFeedData_users_friends_posts_commentsConnection>
      get serializer =>
          _$gFeedDataUsersFriendsPostsCommentsConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedData_users_friends_posts_commentsConnection.serializer, this)
      as Map<String, dynamic>);
  static GFeedData_users_friends_posts_commentsConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedData_users_friends_posts_commentsConnection.serializer, json);
}

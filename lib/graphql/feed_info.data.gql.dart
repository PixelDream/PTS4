// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'feed_info.data.gql.g.dart';

abstract class GFeedInfoData
    implements Built<GFeedInfoData, GFeedInfoDataBuilder> {
  GFeedInfoData._();

  factory GFeedInfoData([Function(GFeedInfoDataBuilder b) updates]) =
      _$GFeedInfoData;

  static void _initializeBuilder(GFeedInfoDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFeedInfoData_users> get users;
  static Serializer<GFeedInfoData> get serializer => _$gFeedInfoDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedInfoData.serializer, this)
          as Map<String, dynamic>);
  static GFeedInfoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedInfoData.serializer, json);
}

abstract class GFeedInfoData_users
    implements Built<GFeedInfoData_users, GFeedInfoData_usersBuilder> {
  GFeedInfoData_users._();

  factory GFeedInfoData_users(
      [Function(GFeedInfoData_usersBuilder b) updates]) = _$GFeedInfoData_users;

  static void _initializeBuilder(GFeedInfoData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get pseudo;
  String get firstName;
  String get lastName;
  String? get biography;
  String? get image;
  GFeedInfoData_users_postsConnection get postsConnection;
  GFeedInfoData_users_friendsConnection get friendsConnection;
  GFeedInfoData_users_storiesConnection get storiesConnection;
  static Serializer<GFeedInfoData_users> get serializer =>
      _$gFeedInfoDataUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedInfoData_users.serializer, this)
          as Map<String, dynamic>);
  static GFeedInfoData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedInfoData_users.serializer, json);
}

abstract class GFeedInfoData_users_postsConnection
    implements
        Built<GFeedInfoData_users_postsConnection,
            GFeedInfoData_users_postsConnectionBuilder> {
  GFeedInfoData_users_postsConnection._();

  factory GFeedInfoData_users_postsConnection(
          [Function(GFeedInfoData_users_postsConnectionBuilder b) updates]) =
      _$GFeedInfoData_users_postsConnection;

  static void _initializeBuilder(
          GFeedInfoData_users_postsConnectionBuilder b) =>
      b..G__typename = 'UserPostsConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GFeedInfoData_users_postsConnection> get serializer =>
      _$gFeedInfoDataUsersPostsConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedInfoData_users_postsConnection.serializer, this)
      as Map<String, dynamic>);
  static GFeedInfoData_users_postsConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedInfoData_users_postsConnection.serializer, json);
}

abstract class GFeedInfoData_users_friendsConnection
    implements
        Built<GFeedInfoData_users_friendsConnection,
            GFeedInfoData_users_friendsConnectionBuilder> {
  GFeedInfoData_users_friendsConnection._();

  factory GFeedInfoData_users_friendsConnection(
          [Function(GFeedInfoData_users_friendsConnectionBuilder b) updates]) =
      _$GFeedInfoData_users_friendsConnection;

  static void _initializeBuilder(
          GFeedInfoData_users_friendsConnectionBuilder b) =>
      b..G__typename = 'UserFriendsConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GFeedInfoData_users_friendsConnection> get serializer =>
      _$gFeedInfoDataUsersFriendsConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedInfoData_users_friendsConnection.serializer, this)
      as Map<String, dynamic>);
  static GFeedInfoData_users_friendsConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedInfoData_users_friendsConnection.serializer, json);
}

abstract class GFeedInfoData_users_storiesConnection
    implements
        Built<GFeedInfoData_users_storiesConnection,
            GFeedInfoData_users_storiesConnectionBuilder> {
  GFeedInfoData_users_storiesConnection._();

  factory GFeedInfoData_users_storiesConnection(
          [Function(GFeedInfoData_users_storiesConnectionBuilder b) updates]) =
      _$GFeedInfoData_users_storiesConnection;

  static void _initializeBuilder(
          GFeedInfoData_users_storiesConnectionBuilder b) =>
      b..G__typename = 'UserStoriesConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GFeedInfoData_users_storiesConnection> get serializer =>
      _$gFeedInfoDataUsersStoriesConnectionSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedInfoData_users_storiesConnection.serializer, this)
      as Map<String, dynamic>);
  static GFeedInfoData_users_storiesConnection? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedInfoData_users_storiesConnection.serializer, json);
}

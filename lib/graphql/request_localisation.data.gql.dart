// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'request_localisation.data.gql.g.dart';

abstract class GFriendsLocalisationData
    implements
        Built<GFriendsLocalisationData, GFriendsLocalisationDataBuilder> {
  GFriendsLocalisationData._();

  factory GFriendsLocalisationData(
          [Function(GFriendsLocalisationDataBuilder b) updates]) =
      _$GFriendsLocalisationData;

  static void _initializeBuilder(GFriendsLocalisationDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFriendsLocalisationData_users> get users;
  static Serializer<GFriendsLocalisationData> get serializer =>
      _$gFriendsLocalisationDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFriendsLocalisationData.serializer, this)
          as Map<String, dynamic>);
  static GFriendsLocalisationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFriendsLocalisationData.serializer, json);
}

abstract class GFriendsLocalisationData_users
    implements
        Built<GFriendsLocalisationData_users,
            GFriendsLocalisationData_usersBuilder> {
  GFriendsLocalisationData_users._();

  factory GFriendsLocalisationData_users(
          [Function(GFriendsLocalisationData_usersBuilder b) updates]) =
      _$GFriendsLocalisationData_users;

  static void _initializeBuilder(GFriendsLocalisationData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get image;
  GFriendsLocalisationData_users_location? get location;
  BuiltList<GFriendsLocalisationData_users_friends> get friends;
  static Serializer<GFriendsLocalisationData_users> get serializer =>
      _$gFriendsLocalisationDataUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFriendsLocalisationData_users.serializer, this) as Map<String, dynamic>);
  static GFriendsLocalisationData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFriendsLocalisationData_users.serializer, json);
}

abstract class GFriendsLocalisationData_users_location
    implements
        Built<GFriendsLocalisationData_users_location,
            GFriendsLocalisationData_users_locationBuilder> {
  GFriendsLocalisationData_users_location._();

  factory GFriendsLocalisationData_users_location(
      [Function(GFriendsLocalisationData_users_locationBuilder b)
          updates]) = _$GFriendsLocalisationData_users_location;

  static void _initializeBuilder(
          GFriendsLocalisationData_users_locationBuilder b) =>
      b..G__typename = 'Point';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get latitude;
  double get longitude;
  String get crs;
  static Serializer<GFriendsLocalisationData_users_location> get serializer =>
      _$gFriendsLocalisationDataUsersLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFriendsLocalisationData_users_location.serializer, this)
      as Map<String, dynamic>);
  static GFriendsLocalisationData_users_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFriendsLocalisationData_users_location.serializer, json);
}

abstract class GFriendsLocalisationData_users_friends
    implements
        Built<GFriendsLocalisationData_users_friends,
            GFriendsLocalisationData_users_friendsBuilder> {
  GFriendsLocalisationData_users_friends._();

  factory GFriendsLocalisationData_users_friends(
          [Function(GFriendsLocalisationData_users_friendsBuilder b) updates]) =
      _$GFriendsLocalisationData_users_friends;

  static void _initializeBuilder(
          GFriendsLocalisationData_users_friendsBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get image;
  String get firstName;
  String get lastName;
  GFriendsLocalisationData_users_friends_location? get location;
  static Serializer<GFriendsLocalisationData_users_friends> get serializer =>
      _$gFriendsLocalisationDataUsersFriendsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFriendsLocalisationData_users_friends.serializer, this)
      as Map<String, dynamic>);
  static GFriendsLocalisationData_users_friends? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFriendsLocalisationData_users_friends.serializer, json);
}

abstract class GFriendsLocalisationData_users_friends_location
    implements
        Built<GFriendsLocalisationData_users_friends_location,
            GFriendsLocalisationData_users_friends_locationBuilder> {
  GFriendsLocalisationData_users_friends_location._();

  factory GFriendsLocalisationData_users_friends_location(
      [Function(GFriendsLocalisationData_users_friends_locationBuilder b)
          updates]) = _$GFriendsLocalisationData_users_friends_location;

  static void _initializeBuilder(
          GFriendsLocalisationData_users_friends_locationBuilder b) =>
      b..G__typename = 'Point';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get longitude;
  double get latitude;
  String get crs;
  static Serializer<GFriendsLocalisationData_users_friends_location>
      get serializer =>
          _$gFriendsLocalisationDataUsersFriendsLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFriendsLocalisationData_users_friends_location.serializer, this)
      as Map<String, dynamic>);
  static GFriendsLocalisationData_users_friends_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFriendsLocalisationData_users_friends_location.serializer, json);
}

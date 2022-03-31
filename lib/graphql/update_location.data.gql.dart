// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'update_location.data.gql.g.dart';

abstract class GUpdateLocationData
    implements Built<GUpdateLocationData, GUpdateLocationDataBuilder> {
  GUpdateLocationData._();

  factory GUpdateLocationData(
      [Function(GUpdateLocationDataBuilder b) updates]) = _$GUpdateLocationData;

  static void _initializeBuilder(GUpdateLocationDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateLocationData_updateUsers get updateUsers;
  static Serializer<GUpdateLocationData> get serializer =>
      _$gUpdateLocationDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUpdateLocationData.serializer, this)
          as Map<String, dynamic>);
  static GUpdateLocationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUpdateLocationData.serializer, json);
}

abstract class GUpdateLocationData_updateUsers
    implements
        Built<GUpdateLocationData_updateUsers,
            GUpdateLocationData_updateUsersBuilder> {
  GUpdateLocationData_updateUsers._();

  factory GUpdateLocationData_updateUsers(
          [Function(GUpdateLocationData_updateUsersBuilder b) updates]) =
      _$GUpdateLocationData_updateUsers;

  static void _initializeBuilder(GUpdateLocationData_updateUsersBuilder b) =>
      b..G__typename = 'UpdateUsersMutationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUpdateLocationData_updateUsers_users> get users;
  static Serializer<GUpdateLocationData_updateUsers> get serializer =>
      _$gUpdateLocationDataUpdateUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GUpdateLocationData_updateUsers.serializer, this)
      as Map<String, dynamic>);
  static GUpdateLocationData_updateUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUpdateLocationData_updateUsers.serializer, json);
}

abstract class GUpdateLocationData_updateUsers_users
    implements
        Built<GUpdateLocationData_updateUsers_users,
            GUpdateLocationData_updateUsers_usersBuilder> {
  GUpdateLocationData_updateUsers_users._();

  factory GUpdateLocationData_updateUsers_users(
          [Function(GUpdateLocationData_updateUsers_usersBuilder b) updates]) =
      _$GUpdateLocationData_updateUsers_users;

  static void _initializeBuilder(
          GUpdateLocationData_updateUsers_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateLocationData_updateUsers_users_location? get location;
  static Serializer<GUpdateLocationData_updateUsers_users> get serializer =>
      _$gUpdateLocationDataUpdateUsersUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GUpdateLocationData_updateUsers_users.serializer, this)
      as Map<String, dynamic>);
  static GUpdateLocationData_updateUsers_users? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GUpdateLocationData_updateUsers_users.serializer, json);
}

abstract class GUpdateLocationData_updateUsers_users_location
    implements
        Built<GUpdateLocationData_updateUsers_users_location,
            GUpdateLocationData_updateUsers_users_locationBuilder> {
  GUpdateLocationData_updateUsers_users_location._();

  factory GUpdateLocationData_updateUsers_users_location(
      [Function(GUpdateLocationData_updateUsers_users_locationBuilder b)
          updates]) = _$GUpdateLocationData_updateUsers_users_location;

  static void _initializeBuilder(
          GUpdateLocationData_updateUsers_users_locationBuilder b) =>
      b..G__typename = 'Point';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get latitude;
  double get longitude;
  static Serializer<GUpdateLocationData_updateUsers_users_location>
      get serializer => _$gUpdateLocationDataUpdateUsersUsersLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GUpdateLocationData_updateUsers_users_location.serializer, this)
      as Map<String, dynamic>);
  static GUpdateLocationData_updateUsers_users_location? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GUpdateLocationData_updateUsers_users_location.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'profile_user.data.gql.g.dart';

abstract class GProfileData
    implements Built<GProfileData, GProfileDataBuilder> {
  GProfileData._();

  factory GProfileData([Function(GProfileDataBuilder b) updates]) =
      _$GProfileData;

  static void _initializeBuilder(GProfileDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GProfileData_users> get users;
  static Serializer<GProfileData> get serializer => _$gProfileDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProfileData.serializer, this)
          as Map<String, dynamic>);
  static GProfileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProfileData.serializer, json);
}

abstract class GProfileData_users
    implements Built<GProfileData_users, GProfileData_usersBuilder> {
  GProfileData_users._();

  factory GProfileData_users([Function(GProfileData_usersBuilder b) updates]) =
      _$GProfileData_users;

  static void _initializeBuilder(GProfileData_usersBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String? get biography;
  static Serializer<GProfileData_users> get serializer =>
      _$gProfileDataUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProfileData_users.serializer, this)
          as Map<String, dynamic>);
  static GProfileData_users? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProfileData_users.serializer, json);
}

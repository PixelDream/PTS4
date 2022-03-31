// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'dislike_post.data.gql.g.dart';

abstract class GDislikePostData
    implements Built<GDislikePostData, GDislikePostDataBuilder> {
  GDislikePostData._();

  factory GDislikePostData([Function(GDislikePostDataBuilder b) updates]) =
      _$GDislikePostData;

  static void _initializeBuilder(GDislikePostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDislikePostData_updateUsers get updateUsers;
  static Serializer<GDislikePostData> get serializer =>
      _$gDislikePostDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDislikePostData.serializer, this)
          as Map<String, dynamic>);
  static GDislikePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDislikePostData.serializer, json);
}

abstract class GDislikePostData_updateUsers
    implements
        Built<GDislikePostData_updateUsers,
            GDislikePostData_updateUsersBuilder> {
  GDislikePostData_updateUsers._();

  factory GDislikePostData_updateUsers(
          [Function(GDislikePostData_updateUsersBuilder b) updates]) =
      _$GDislikePostData_updateUsers;

  static void _initializeBuilder(GDislikePostData_updateUsersBuilder b) =>
      b..G__typename = 'UpdateUsersMutationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDislikePostData_updateUsers_info get info;
  static Serializer<GDislikePostData_updateUsers> get serializer =>
      _$gDislikePostDataUpdateUsersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GDislikePostData_updateUsers.serializer, this) as Map<String, dynamic>);
  static GDislikePostData_updateUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDislikePostData_updateUsers.serializer, json);
}

abstract class GDislikePostData_updateUsers_info
    implements
        Built<GDislikePostData_updateUsers_info,
            GDislikePostData_updateUsers_infoBuilder> {
  GDislikePostData_updateUsers_info._();

  factory GDislikePostData_updateUsers_info(
          [Function(GDislikePostData_updateUsers_infoBuilder b) updates]) =
      _$GDislikePostData_updateUsers_info;

  static void _initializeBuilder(GDislikePostData_updateUsers_infoBuilder b) =>
      b..G__typename = 'UpdateInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get relationshipsDeleted;
  static Serializer<GDislikePostData_updateUsers_info> get serializer =>
      _$gDislikePostDataUpdateUsersInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GDislikePostData_updateUsers_info.serializer, this)
      as Map<String, dynamic>);
  static GDislikePostData_updateUsers_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDislikePostData_updateUsers_info.serializer, json);
}

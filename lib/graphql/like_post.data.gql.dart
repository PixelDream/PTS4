// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'like_post.data.gql.g.dart';

abstract class GLikePostData
    implements Built<GLikePostData, GLikePostDataBuilder> {
  GLikePostData._();

  factory GLikePostData([Function(GLikePostDataBuilder b) updates]) =
      _$GLikePostData;

  static void _initializeBuilder(GLikePostDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLikePostData_updateUsers get updateUsers;
  static Serializer<GLikePostData> get serializer => _$gLikePostDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLikePostData.serializer, this)
          as Map<String, dynamic>);
  static GLikePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLikePostData.serializer, json);
}

abstract class GLikePostData_updateUsers
    implements
        Built<GLikePostData_updateUsers, GLikePostData_updateUsersBuilder> {
  GLikePostData_updateUsers._();

  factory GLikePostData_updateUsers(
          [Function(GLikePostData_updateUsersBuilder b) updates]) =
      _$GLikePostData_updateUsers;

  static void _initializeBuilder(GLikePostData_updateUsersBuilder b) =>
      b..G__typename = 'UpdateUsersMutationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLikePostData_updateUsers_info get info;
  static Serializer<GLikePostData_updateUsers> get serializer =>
      _$gLikePostDataUpdateUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLikePostData_updateUsers.serializer, this)
          as Map<String, dynamic>);
  static GLikePostData_updateUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLikePostData_updateUsers.serializer, json);
}

abstract class GLikePostData_updateUsers_info
    implements
        Built<GLikePostData_updateUsers_info,
            GLikePostData_updateUsers_infoBuilder> {
  GLikePostData_updateUsers_info._();

  factory GLikePostData_updateUsers_info(
          [Function(GLikePostData_updateUsers_infoBuilder b) updates]) =
      _$GLikePostData_updateUsers_info;

  static void _initializeBuilder(GLikePostData_updateUsers_infoBuilder b) =>
      b..G__typename = 'UpdateInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get relationshipsCreated;
  static Serializer<GLikePostData_updateUsers_info> get serializer =>
      _$gLikePostDataUpdateUsersInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GLikePostData_updateUsers_info.serializer, this) as Map<String, dynamic>);
  static GLikePostData_updateUsers_info? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GLikePostData_updateUsers_info.serializer, json);
}

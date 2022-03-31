// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'like_post.var.gql.g.dart';

abstract class GLikePostVars
    implements Built<GLikePostVars, GLikePostVarsBuilder> {
  GLikePostVars._();

  factory GLikePostVars([Function(GLikePostVarsBuilder b) updates]) =
      _$GLikePostVars;

  _i1.GUserConnectInput? get connect;
  _i1.GUserWhere? get user;
  static Serializer<GLikePostVars> get serializer => _$gLikePostVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GLikePostVars.serializer, this)
          as Map<String, dynamic>);
  static GLikePostVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GLikePostVars.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'dislike_post.var.gql.g.dart';

abstract class GDislikePostVars
    implements Built<GDislikePostVars, GDislikePostVarsBuilder> {
  GDislikePostVars._();

  factory GDislikePostVars([Function(GDislikePostVarsBuilder b) updates]) =
      _$GDislikePostVars;

  _i1.GUserDisconnectInput? get disconnect;
  _i1.GUserWhere? get user;
  static Serializer<GDislikePostVars> get serializer =>
      _$gDislikePostVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GDislikePostVars.serializer, this)
          as Map<String, dynamic>);
  static GDislikePostVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GDislikePostVars.serializer, json);
}

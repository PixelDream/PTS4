// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'create_post.var.gql.g.dart';

abstract class GCreatePostVars
    implements Built<GCreatePostVars, GCreatePostVarsBuilder> {
  GCreatePostVars._();

  factory GCreatePostVars([Function(GCreatePostVarsBuilder b) updates]) =
      _$GCreatePostVars;

  BuiltList<_i1.GPostCreateInput> get post;
  static Serializer<GCreatePostVars> get serializer =>
      _$gCreatePostVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreatePostVars.serializer, this)
          as Map<String, dynamic>);
  static GCreatePostVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreatePostVars.serializer, json);
}

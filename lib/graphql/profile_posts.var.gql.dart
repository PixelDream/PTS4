// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'profile_posts.var.gql.g.dart';

abstract class GProfilePostsVars
    implements Built<GProfilePostsVars, GProfilePostsVarsBuilder> {
  GProfilePostsVars._();

  factory GProfilePostsVars([Function(GProfilePostsVarsBuilder b) updates]) =
      _$GProfilePostsVars;

  _i1.GUserWhere? get user;
  _i1.GPostOptions? get options;
  static Serializer<GProfilePostsVars> get serializer =>
      _$gProfilePostsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GProfilePostsVars.serializer, this)
          as Map<String, dynamic>);
  static GProfilePostsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GProfilePostsVars.serializer, json);
}

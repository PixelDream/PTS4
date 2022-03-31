// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'load_story.var.gql.g.dart';

abstract class GloadStoriesVars
    implements Built<GloadStoriesVars, GloadStoriesVarsBuilder> {
  GloadStoriesVars._();

  factory GloadStoriesVars([Function(GloadStoriesVarsBuilder b) updates]) =
      _$GloadStoriesVars;

  _i1.GUserWhere? get where;
  static Serializer<GloadStoriesVars> get serializer =>
      _$gloadStoriesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GloadStoriesVars.serializer, this)
          as Map<String, dynamic>);
  static GloadStoriesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GloadStoriesVars.serializer, json);
}

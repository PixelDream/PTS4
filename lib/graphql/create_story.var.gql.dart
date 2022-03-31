// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'create_story.var.gql.g.dart';

abstract class GCreateStoriesVars
    implements Built<GCreateStoriesVars, GCreateStoriesVarsBuilder> {
  GCreateStoriesVars._();

  factory GCreateStoriesVars([Function(GCreateStoriesVarsBuilder b) updates]) =
      _$GCreateStoriesVars;

  BuiltList<_i1.GStoryCreateInput> get story;
  static Serializer<GCreateStoriesVars> get serializer =>
      _$gCreateStoriesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateStoriesVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateStoriesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreateStoriesVars.serializer, json);
}

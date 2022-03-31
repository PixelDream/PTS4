// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'load_comments.var.gql.g.dart';

abstract class GLoadCommentsVars
    implements Built<GLoadCommentsVars, GLoadCommentsVarsBuilder> {
  GLoadCommentsVars._();

  factory GLoadCommentsVars([Function(GLoadCommentsVarsBuilder b) updates]) =
      _$GLoadCommentsVars;

  _i1.GCommentWhere? get post;
  _i1.GCommentOptions? get options;
  static Serializer<GLoadCommentsVars> get serializer =>
      _$gLoadCommentsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GLoadCommentsVars.serializer, this)
          as Map<String, dynamic>);
  static GLoadCommentsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GLoadCommentsVars.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'create_commentary.var.gql.g.dart';

abstract class GCreateCommentaryVars
    implements Built<GCreateCommentaryVars, GCreateCommentaryVarsBuilder> {
  GCreateCommentaryVars._();

  factory GCreateCommentaryVars(
          [Function(GCreateCommentaryVarsBuilder b) updates]) =
      _$GCreateCommentaryVars;

  BuiltList<_i1.GCommentCreateInput> get input;
  static Serializer<GCreateCommentaryVars> get serializer =>
      _$gCreateCommentaryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateCommentaryVars.serializer, this)
          as Map<String, dynamic>);
  static GCreateCommentaryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCreateCommentaryVars.serializer, json);
}

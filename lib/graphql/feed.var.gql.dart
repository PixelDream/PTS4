// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'feed.var.gql.g.dart';

abstract class GFeedVars implements Built<GFeedVars, GFeedVarsBuilder> {
  GFeedVars._();

  factory GFeedVars([Function(GFeedVarsBuilder b) updates]) = _$GFeedVars;

  _i1.GUserWhere? get user;
  _i1.GUserWhere? get friend;
  _i1.GPostOptions? get options;
  static Serializer<GFeedVars> get serializer => _$gFeedVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GFeedVars.serializer, this)
          as Map<String, dynamic>);
  static GFeedVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GFeedVars.serializer, json);
}

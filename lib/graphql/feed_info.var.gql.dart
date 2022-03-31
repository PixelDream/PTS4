// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'feed_info.var.gql.g.dart';

abstract class GFeedInfoVars
    implements Built<GFeedInfoVars, GFeedInfoVarsBuilder> {
  GFeedInfoVars._();

  factory GFeedInfoVars([Function(GFeedInfoVarsBuilder b) updates]) =
      _$GFeedInfoVars;

  _i1.GUserWhere? get user;
  static Serializer<GFeedInfoVars> get serializer => _$gFeedInfoVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GFeedInfoVars.serializer, this)
          as Map<String, dynamic>);
  static GFeedInfoVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GFeedInfoVars.serializer, json);
}

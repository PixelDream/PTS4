// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'request_localisation.var.gql.g.dart';

abstract class GFriendsLocalisationVars
    implements
        Built<GFriendsLocalisationVars, GFriendsLocalisationVarsBuilder> {
  GFriendsLocalisationVars._();

  factory GFriendsLocalisationVars(
          [Function(GFriendsLocalisationVarsBuilder b) updates]) =
      _$GFriendsLocalisationVars;

  _i1.GUserWhere? get user;
  static Serializer<GFriendsLocalisationVars> get serializer =>
      _$gFriendsLocalisationVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GFriendsLocalisationVars.serializer, this)
          as Map<String, dynamic>);
  static GFriendsLocalisationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GFriendsLocalisationVars.serializer, json);
}

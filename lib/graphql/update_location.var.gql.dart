// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/schema.schema.gql.dart' as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'update_location.var.gql.g.dart';

abstract class GUpdateLocationVars
    implements Built<GUpdateLocationVars, GUpdateLocationVarsBuilder> {
  GUpdateLocationVars._();

  factory GUpdateLocationVars(
      [Function(GUpdateLocationVarsBuilder b) updates]) = _$GUpdateLocationVars;

  _i1.GUserUpdateInput? get location;
  _i1.GUserWhere? get user;
  static Serializer<GUpdateLocationVars> get serializer =>
      _$gUpdateLocationVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateLocationVars.serializer, this)
          as Map<String, dynamic>);
  static GUpdateLocationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateLocationVars.serializer, json);
}

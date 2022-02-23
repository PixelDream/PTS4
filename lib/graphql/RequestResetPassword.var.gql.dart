// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'RequestResetPassword.var.gql.g.dart';

abstract class GRequestResetPasswordVars
    implements
        Built<GRequestResetPasswordVars, GRequestResetPasswordVarsBuilder> {
  GRequestResetPasswordVars._();

  factory GRequestResetPasswordVars(
          [Function(GRequestResetPasswordVarsBuilder b) updates]) =
      _$GRequestResetPasswordVars;

  String get email;
  static Serializer<GRequestResetPasswordVars> get serializer =>
      _$gRequestResetPasswordVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRequestResetPasswordVars.serializer, this)
          as Map<String, dynamic>);
  static GRequestResetPasswordVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRequestResetPasswordVars.serializer, json);
}

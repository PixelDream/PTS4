// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'sign_in.var.gql.g.dart';

abstract class GSignInVars implements Built<GSignInVars, GSignInVarsBuilder> {
  GSignInVars._();

  factory GSignInVars([Function(GSignInVarsBuilder b) updates]) = _$GSignInVars;

  String get email;
  String get password;
  static Serializer<GSignInVars> get serializer => _$gSignInVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignInVars.serializer, this)
          as Map<String, dynamic>);
  static GSignInVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignInVars.serializer, json);
}

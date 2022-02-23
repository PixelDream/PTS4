// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'sign_up.var.gql.g.dart';

abstract class GSignUpVars implements Built<GSignUpVars, GSignUpVarsBuilder> {
  GSignUpVars._();

  factory GSignUpVars([Function(GSignUpVarsBuilder b) updates]) = _$GSignUpVars;

  String get firstName;
  String get lastName;
  String get pseudo;
  String get email;
  String get password;
  static Serializer<GSignUpVars> get serializer => _$gSignUpVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignUpVars.serializer, this)
          as Map<String, dynamic>);
  static GSignUpVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignUpVars.serializer, json);
}

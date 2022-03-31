// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'sign_up.data.gql.g.dart';

abstract class GSignUpData implements Built<GSignUpData, GSignUpDataBuilder> {
  GSignUpData._();

  factory GSignUpData([Function(GSignUpDataBuilder b) updates]) = _$GSignUpData;

  static void _initializeBuilder(GSignUpDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignUpData_signUp get signUp;
  static Serializer<GSignUpData> get serializer => _$gSignUpDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignUpData.serializer, this)
          as Map<String, dynamic>);
  static GSignUpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignUpData.serializer, json);
}

abstract class GSignUpData_signUp
    implements Built<GSignUpData_signUp, GSignUpData_signUpBuilder> {
  GSignUpData_signUp._();

  factory GSignUpData_signUp([Function(GSignUpData_signUpBuilder b) updates]) =
      _$GSignUpData_signUp;

  static void _initializeBuilder(GSignUpData_signUpBuilder b) =>
      b..G__typename = 'AuthData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  GSignUpData_signUp_user get user;
  static Serializer<GSignUpData_signUp> get serializer =>
      _$gSignUpDataSignUpSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignUpData_signUp.serializer, this)
          as Map<String, dynamic>);
  static GSignUpData_signUp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignUpData_signUp.serializer, json);
}

abstract class GSignUpData_signUp_user
    implements Built<GSignUpData_signUp_user, GSignUpData_signUp_userBuilder> {
  GSignUpData_signUp_user._();

  factory GSignUpData_signUp_user(
          [Function(GSignUpData_signUp_userBuilder b) updates]) =
      _$GSignUpData_signUp_user;

  static void _initializeBuilder(GSignUpData_signUp_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GSignUpData_signUp_user> get serializer =>
      _$gSignUpDataSignUpUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignUpData_signUp_user.serializer, this)
          as Map<String, dynamic>);
  static GSignUpData_signUp_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignUpData_signUp_user.serializer, json);
}

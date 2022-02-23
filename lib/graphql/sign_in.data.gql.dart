// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'sign_in.data.gql.g.dart';

abstract class GSignInData implements Built<GSignInData, GSignInDataBuilder> {
  GSignInData._();

  factory GSignInData([Function(GSignInDataBuilder b) updates]) = _$GSignInData;

  static void _initializeBuilder(GSignInDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSignInData_signIn get signIn;
  static Serializer<GSignInData> get serializer => _$gSignInDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignInData.serializer, this)
          as Map<String, dynamic>);
  static GSignInData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignInData.serializer, json);
}

abstract class GSignInData_signIn
    implements Built<GSignInData_signIn, GSignInData_signInBuilder> {
  GSignInData_signIn._();

  factory GSignInData_signIn([Function(GSignInData_signInBuilder b) updates]) =
      _$GSignInData_signIn;

  static void _initializeBuilder(GSignInData_signInBuilder b) =>
      b..G__typename = 'AuthData';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get token;
  static Serializer<GSignInData_signIn> get serializer =>
      _$gSignInDataSignInSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSignInData_signIn.serializer, this)
          as Map<String, dynamic>);
  static GSignInData_signIn? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSignInData_signIn.serializer, json);
}

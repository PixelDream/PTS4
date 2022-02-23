// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'RequestResetPassword.data.gql.g.dart';

abstract class GRequestResetPasswordData
    implements
        Built<GRequestResetPasswordData, GRequestResetPasswordDataBuilder> {
  GRequestResetPasswordData._();

  factory GRequestResetPasswordData(
          [Function(GRequestResetPasswordDataBuilder b) updates]) =
      _$GRequestResetPasswordData;

  static void _initializeBuilder(GRequestResetPasswordDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get requestResetPassword;
  static Serializer<GRequestResetPasswordData> get serializer =>
      _$gRequestResetPasswordDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRequestResetPasswordData.serializer, this)
          as Map<String, dynamic>);
  static GRequestResetPasswordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRequestResetPasswordData.serializer, json);
}

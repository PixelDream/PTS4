// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i1;

part 'create_story.data.gql.g.dart';

abstract class GCreateStoriesData
    implements Built<GCreateStoriesData, GCreateStoriesDataBuilder> {
  GCreateStoriesData._();

  factory GCreateStoriesData([Function(GCreateStoriesDataBuilder b) updates]) =
      _$GCreateStoriesData;

  static void _initializeBuilder(GCreateStoriesDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateStoriesData_createStories get createStories;
  static Serializer<GCreateStoriesData> get serializer =>
      _$gCreateStoriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCreateStoriesData.serializer, this)
          as Map<String, dynamic>);
  static GCreateStoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCreateStoriesData.serializer, json);
}

abstract class GCreateStoriesData_createStories
    implements
        Built<GCreateStoriesData_createStories,
            GCreateStoriesData_createStoriesBuilder> {
  GCreateStoriesData_createStories._();

  factory GCreateStoriesData_createStories(
          [Function(GCreateStoriesData_createStoriesBuilder b) updates]) =
      _$GCreateStoriesData_createStories;

  static void _initializeBuilder(GCreateStoriesData_createStoriesBuilder b) =>
      b..G__typename = 'CreateStoriesMutationResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateStoriesData_createStories_info get info;
  static Serializer<GCreateStoriesData_createStories> get serializer =>
      _$gCreateStoriesDataCreateStoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreateStoriesData_createStories.serializer, this)
      as Map<String, dynamic>);
  static GCreateStoriesData_createStories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateStoriesData_createStories.serializer, json);
}

abstract class GCreateStoriesData_createStories_info
    implements
        Built<GCreateStoriesData_createStories_info,
            GCreateStoriesData_createStories_infoBuilder> {
  GCreateStoriesData_createStories_info._();

  factory GCreateStoriesData_createStories_info(
          [Function(GCreateStoriesData_createStories_infoBuilder b) updates]) =
      _$GCreateStoriesData_createStories_info;

  static void _initializeBuilder(
          GCreateStoriesData_createStories_infoBuilder b) =>
      b..G__typename = 'CreateInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get nodesCreated;
  static Serializer<GCreateStoriesData_createStories_info> get serializer =>
      _$gCreateStoriesDataCreateStoriesInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCreateStoriesData_createStories_info.serializer, this)
      as Map<String, dynamic>);
  static GCreateStoriesData_createStories_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateStoriesData_createStories_info.serializer, json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;
import 'package:socialnetwork/graphql/serializers.gql.dart' as _i2;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

class GRequestStatus extends EnumClass {
  const GRequestStatus._(String name) : super(name);

  static const GRequestStatus PENDING = _$gRequestStatusPENDING;

  static const GRequestStatus ACCEPTED = _$gRequestStatusACCEPTED;

  static const GRequestStatus REFUSED = _$gRequestStatusREFUSED;

  static const GRequestStatus BLOCKED = _$gRequestStatusBLOCKED;

  static Serializer<GRequestStatus> get serializer =>
      _$gRequestStatusSerializer;
  static BuiltSet<GRequestStatus> get values => _$gRequestStatusValues;
  static GRequestStatus valueOf(String name) => _$gRequestStatusValueOf(name);
}

class GSortDirection extends EnumClass {
  const GSortDirection._(String name) : super(name);

  static const GSortDirection ASC = _$gSortDirectionASC;

  static const GSortDirection DESC = _$gSortDirectionDESC;

  static Serializer<GSortDirection> get serializer =>
      _$gSortDirectionSerializer;
  static BuiltSet<GSortDirection> get values => _$gSortDirectionValues;
  static GSortDirection valueOf(String name) => _$gSortDirectionValueOf(name);
}

abstract class GCommentConnectInput
    implements Built<GCommentConnectInput, GCommentConnectInputBuilder> {
  GCommentConnectInput._();

  factory GCommentConnectInput(
          [Function(GCommentConnectInputBuilder b) updates]) =
      _$GCommentConnectInput;

  GCommentCreatorConnectFieldInput? get creator;
  GCommentPostConnectFieldInput? get post;
  static Serializer<GCommentConnectInput> get serializer =>
      _$gCommentConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentConnectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentConnectInput.serializer, json);
}

abstract class GCommentConnectOrCreateInput
    implements
        Built<GCommentConnectOrCreateInput,
            GCommentConnectOrCreateInputBuilder> {
  GCommentConnectOrCreateInput._();

  factory GCommentConnectOrCreateInput(
          [Function(GCommentConnectOrCreateInputBuilder b) updates]) =
      _$GCommentConnectOrCreateInput;

  GCommentCreatorConnectOrCreateFieldInput? get creator;
  GCommentPostConnectOrCreateFieldInput? get post;
  static Serializer<GCommentConnectOrCreateInput> get serializer =>
      _$gCommentConnectOrCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentConnectOrCreateInput.serializer, this) as Map<String, dynamic>);
  static GCommentConnectOrCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentConnectOrCreateInput.serializer, json);
}

abstract class GCommentConnectOrCreateWhere
    implements
        Built<GCommentConnectOrCreateWhere,
            GCommentConnectOrCreateWhereBuilder> {
  GCommentConnectOrCreateWhere._();

  factory GCommentConnectOrCreateWhere(
          [Function(GCommentConnectOrCreateWhereBuilder b) updates]) =
      _$GCommentConnectOrCreateWhere;

  GCommentUniqueWhere get node;
  static Serializer<GCommentConnectOrCreateWhere> get serializer =>
      _$gCommentConnectOrCreateWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentConnectOrCreateWhere.serializer, this) as Map<String, dynamic>);
  static GCommentConnectOrCreateWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentConnectOrCreateWhere.serializer, json);
}

abstract class GCommentConnectWhere
    implements Built<GCommentConnectWhere, GCommentConnectWhereBuilder> {
  GCommentConnectWhere._();

  factory GCommentConnectWhere(
          [Function(GCommentConnectWhereBuilder b) updates]) =
      _$GCommentConnectWhere;

  GCommentWhere get node;
  static Serializer<GCommentConnectWhere> get serializer =>
      _$gCommentConnectWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentConnectWhere.serializer, this)
          as Map<String, dynamic>);
  static GCommentConnectWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentConnectWhere.serializer, json);
}

abstract class GCommentCreateInput
    implements Built<GCommentCreateInput, GCommentCreateInputBuilder> {
  GCommentCreateInput._();

  factory GCommentCreateInput(
      [Function(GCommentCreateInputBuilder b) updates]) = _$GCommentCreateInput;

  String get commentary;
  GCommentCreatorFieldInput? get creator;
  GCommentPostFieldInput? get post;
  static Serializer<GCommentCreateInput> get serializer =>
      _$gCommentCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentCreateInput.serializer, json);
}

abstract class GCommentCreatorAggregateInput
    implements
        Built<GCommentCreatorAggregateInput,
            GCommentCreatorAggregateInputBuilder> {
  GCommentCreatorAggregateInput._();

  factory GCommentCreatorAggregateInput(
          [Function(GCommentCreatorAggregateInputBuilder b) updates]) =
      _$GCommentCreatorAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GCommentCreatorAggregateInput>? get AND;
  BuiltList<GCommentCreatorAggregateInput>? get OR;
  GCommentCreatorNodeAggregationWhereInput? get node;
  static Serializer<GCommentCreatorAggregateInput> get serializer =>
      _$gCommentCreatorAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentCreatorAggregateInput.serializer, this) as Map<String, dynamic>);
  static GCommentCreatorAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorAggregateInput.serializer, json);
}

abstract class GCommentCreatorConnectFieldInput
    implements
        Built<GCommentCreatorConnectFieldInput,
            GCommentCreatorConnectFieldInputBuilder> {
  GCommentCreatorConnectFieldInput._();

  factory GCommentCreatorConnectFieldInput(
          [Function(GCommentCreatorConnectFieldInputBuilder b) updates]) =
      _$GCommentCreatorConnectFieldInput;

  GUserConnectWhere? get where;
  GUserConnectInput? get connect;
  static Serializer<GCommentCreatorConnectFieldInput> get serializer =>
      _$gCommentCreatorConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentCreatorConnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorConnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorConnectFieldInput.serializer, json);
}

abstract class GCommentCreatorConnectionSort
    implements
        Built<GCommentCreatorConnectionSort,
            GCommentCreatorConnectionSortBuilder> {
  GCommentCreatorConnectionSort._();

  factory GCommentCreatorConnectionSort(
          [Function(GCommentCreatorConnectionSortBuilder b) updates]) =
      _$GCommentCreatorConnectionSort;

  GUserSort? get node;
  static Serializer<GCommentCreatorConnectionSort> get serializer =>
      _$gCommentCreatorConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentCreatorConnectionSort.serializer, this) as Map<String, dynamic>);
  static GCommentCreatorConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorConnectionSort.serializer, json);
}

abstract class GCommentCreatorConnectionWhere
    implements
        Built<GCommentCreatorConnectionWhere,
            GCommentCreatorConnectionWhereBuilder> {
  GCommentCreatorConnectionWhere._();

  factory GCommentCreatorConnectionWhere(
          [Function(GCommentCreatorConnectionWhereBuilder b) updates]) =
      _$GCommentCreatorConnectionWhere;

  BuiltList<GCommentCreatorConnectionWhere>? get AND;
  BuiltList<GCommentCreatorConnectionWhere>? get OR;
  GUserWhere? get node;
  GUserWhere? get node_NOT;
  static Serializer<GCommentCreatorConnectionWhere> get serializer =>
      _$gCommentCreatorConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentCreatorConnectionWhere.serializer, this) as Map<String, dynamic>);
  static GCommentCreatorConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorConnectionWhere.serializer, json);
}

abstract class GCommentCreatorConnectOrCreateFieldInput
    implements
        Built<GCommentCreatorConnectOrCreateFieldInput,
            GCommentCreatorConnectOrCreateFieldInputBuilder> {
  GCommentCreatorConnectOrCreateFieldInput._();

  factory GCommentCreatorConnectOrCreateFieldInput(
      [Function(GCommentCreatorConnectOrCreateFieldInputBuilder b)
          updates]) = _$GCommentCreatorConnectOrCreateFieldInput;

  GUserConnectOrCreateWhere get where;
  GCommentCreatorConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GCommentCreatorConnectOrCreateFieldInput> get serializer =>
      _$gCommentCreatorConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GCommentCreatorConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentCreatorConnectOrCreateFieldInput.serializer, json);
}

abstract class GCommentCreatorConnectOrCreateFieldInputOnCreate
    implements
        Built<GCommentCreatorConnectOrCreateFieldInputOnCreate,
            GCommentCreatorConnectOrCreateFieldInputOnCreateBuilder> {
  GCommentCreatorConnectOrCreateFieldInputOnCreate._();

  factory GCommentCreatorConnectOrCreateFieldInputOnCreate(
      [Function(GCommentCreatorConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GCommentCreatorConnectOrCreateFieldInputOnCreate;

  GUserCreateInput get node;
  static Serializer<GCommentCreatorConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gCommentCreatorConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GCommentCreatorConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentCreatorConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GCommentCreatorCreateFieldInput
    implements
        Built<GCommentCreatorCreateFieldInput,
            GCommentCreatorCreateFieldInputBuilder> {
  GCommentCreatorCreateFieldInput._();

  factory GCommentCreatorCreateFieldInput(
          [Function(GCommentCreatorCreateFieldInputBuilder b) updates]) =
      _$GCommentCreatorCreateFieldInput;

  GUserCreateInput get node;
  static Serializer<GCommentCreatorCreateFieldInput> get serializer =>
      _$gCommentCreatorCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentCreatorCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorCreateFieldInput.serializer, json);
}

abstract class GCommentCreatorDeleteFieldInput
    implements
        Built<GCommentCreatorDeleteFieldInput,
            GCommentCreatorDeleteFieldInputBuilder> {
  GCommentCreatorDeleteFieldInput._();

  factory GCommentCreatorDeleteFieldInput(
          [Function(GCommentCreatorDeleteFieldInputBuilder b) updates]) =
      _$GCommentCreatorDeleteFieldInput;

  GCommentCreatorConnectionWhere? get where;
  GUserDeleteInput? get delete;
  static Serializer<GCommentCreatorDeleteFieldInput> get serializer =>
      _$gCommentCreatorDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentCreatorDeleteFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorDeleteFieldInput.serializer, json);
}

abstract class GCommentCreatorDisconnectFieldInput
    implements
        Built<GCommentCreatorDisconnectFieldInput,
            GCommentCreatorDisconnectFieldInputBuilder> {
  GCommentCreatorDisconnectFieldInput._();

  factory GCommentCreatorDisconnectFieldInput(
          [Function(GCommentCreatorDisconnectFieldInputBuilder b) updates]) =
      _$GCommentCreatorDisconnectFieldInput;

  GCommentCreatorConnectionWhere? get where;
  GUserDisconnectInput? get disconnect;
  static Serializer<GCommentCreatorDisconnectFieldInput> get serializer =>
      _$gCommentCreatorDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentCreatorDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentCreatorDisconnectFieldInput.serializer, json);
}

abstract class GCommentCreatorFieldInput
    implements
        Built<GCommentCreatorFieldInput, GCommentCreatorFieldInputBuilder> {
  GCommentCreatorFieldInput._();

  factory GCommentCreatorFieldInput(
          [Function(GCommentCreatorFieldInputBuilder b) updates]) =
      _$GCommentCreatorFieldInput;

  GCommentCreatorCreateFieldInput? get create;
  GCommentCreatorConnectFieldInput? get connect;
  GCommentCreatorConnectOrCreateFieldInput? get connectOrCreate;
  static Serializer<GCommentCreatorFieldInput> get serializer =>
      _$gCommentCreatorFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentCreatorFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentCreatorFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorFieldInput.serializer, json);
}

abstract class GCommentCreatorNodeAggregationWhereInput
    implements
        Built<GCommentCreatorNodeAggregationWhereInput,
            GCommentCreatorNodeAggregationWhereInputBuilder> {
  GCommentCreatorNodeAggregationWhereInput._();

  factory GCommentCreatorNodeAggregationWhereInput(
      [Function(GCommentCreatorNodeAggregationWhereInputBuilder b)
          updates]) = _$GCommentCreatorNodeAggregationWhereInput;

  BuiltList<GCommentCreatorNodeAggregationWhereInput>? get AND;
  BuiltList<GCommentCreatorNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get email_EQUAL;
  double? get email_AVERAGE_EQUAL;
  int? get email_LONGEST_EQUAL;
  int? get email_SHORTEST_EQUAL;
  int? get email_GT;
  double? get email_AVERAGE_GT;
  int? get email_LONGEST_GT;
  int? get email_SHORTEST_GT;
  int? get email_GTE;
  double? get email_AVERAGE_GTE;
  int? get email_LONGEST_GTE;
  int? get email_SHORTEST_GTE;
  int? get email_LT;
  double? get email_AVERAGE_LT;
  int? get email_LONGEST_LT;
  int? get email_SHORTEST_LT;
  int? get email_LTE;
  double? get email_AVERAGE_LTE;
  int? get email_LONGEST_LTE;
  int? get email_SHORTEST_LTE;
  String? get pseudo_EQUAL;
  double? get pseudo_AVERAGE_EQUAL;
  int? get pseudo_LONGEST_EQUAL;
  int? get pseudo_SHORTEST_EQUAL;
  int? get pseudo_GT;
  double? get pseudo_AVERAGE_GT;
  int? get pseudo_LONGEST_GT;
  int? get pseudo_SHORTEST_GT;
  int? get pseudo_GTE;
  double? get pseudo_AVERAGE_GTE;
  int? get pseudo_LONGEST_GTE;
  int? get pseudo_SHORTEST_GTE;
  int? get pseudo_LT;
  double? get pseudo_AVERAGE_LT;
  int? get pseudo_LONGEST_LT;
  int? get pseudo_SHORTEST_LT;
  int? get pseudo_LTE;
  double? get pseudo_AVERAGE_LTE;
  int? get pseudo_LONGEST_LTE;
  int? get pseudo_SHORTEST_LTE;
  String? get firstName_EQUAL;
  double? get firstName_AVERAGE_EQUAL;
  int? get firstName_LONGEST_EQUAL;
  int? get firstName_SHORTEST_EQUAL;
  int? get firstName_GT;
  double? get firstName_AVERAGE_GT;
  int? get firstName_LONGEST_GT;
  int? get firstName_SHORTEST_GT;
  int? get firstName_GTE;
  double? get firstName_AVERAGE_GTE;
  int? get firstName_LONGEST_GTE;
  int? get firstName_SHORTEST_GTE;
  int? get firstName_LT;
  double? get firstName_AVERAGE_LT;
  int? get firstName_LONGEST_LT;
  int? get firstName_SHORTEST_LT;
  int? get firstName_LTE;
  double? get firstName_AVERAGE_LTE;
  int? get firstName_LONGEST_LTE;
  int? get firstName_SHORTEST_LTE;
  String? get lastName_EQUAL;
  double? get lastName_AVERAGE_EQUAL;
  int? get lastName_LONGEST_EQUAL;
  int? get lastName_SHORTEST_EQUAL;
  int? get lastName_GT;
  double? get lastName_AVERAGE_GT;
  int? get lastName_LONGEST_GT;
  int? get lastName_SHORTEST_GT;
  int? get lastName_GTE;
  double? get lastName_AVERAGE_GTE;
  int? get lastName_LONGEST_GTE;
  int? get lastName_SHORTEST_GTE;
  int? get lastName_LT;
  double? get lastName_AVERAGE_LT;
  int? get lastName_LONGEST_LT;
  int? get lastName_SHORTEST_LT;
  int? get lastName_LTE;
  double? get lastName_AVERAGE_LTE;
  int? get lastName_LONGEST_LTE;
  int? get lastName_SHORTEST_LTE;
  String? get password_EQUAL;
  double? get password_AVERAGE_EQUAL;
  int? get password_LONGEST_EQUAL;
  int? get password_SHORTEST_EQUAL;
  int? get password_GT;
  double? get password_AVERAGE_GT;
  int? get password_LONGEST_GT;
  int? get password_SHORTEST_GT;
  int? get password_GTE;
  double? get password_AVERAGE_GTE;
  int? get password_LONGEST_GTE;
  int? get password_SHORTEST_GTE;
  int? get password_LT;
  double? get password_AVERAGE_LT;
  int? get password_LONGEST_LT;
  int? get password_SHORTEST_LT;
  int? get password_LTE;
  double? get password_AVERAGE_LTE;
  int? get password_LONGEST_LTE;
  int? get password_SHORTEST_LTE;
  String? get biography_EQUAL;
  double? get biography_AVERAGE_EQUAL;
  int? get biography_LONGEST_EQUAL;
  int? get biography_SHORTEST_EQUAL;
  int? get biography_GT;
  double? get biography_AVERAGE_GT;
  int? get biography_LONGEST_GT;
  int? get biography_SHORTEST_GT;
  int? get biography_GTE;
  double? get biography_AVERAGE_GTE;
  int? get biography_LONGEST_GTE;
  int? get biography_SHORTEST_GTE;
  int? get biography_LT;
  double? get biography_AVERAGE_LT;
  int? get biography_LONGEST_LT;
  int? get biography_SHORTEST_LT;
  int? get biography_LTE;
  double? get biography_AVERAGE_LTE;
  int? get biography_LONGEST_LTE;
  int? get biography_SHORTEST_LTE;
  String? get image_EQUAL;
  double? get image_AVERAGE_EQUAL;
  int? get image_LONGEST_EQUAL;
  int? get image_SHORTEST_EQUAL;
  int? get image_GT;
  double? get image_AVERAGE_GT;
  int? get image_LONGEST_GT;
  int? get image_SHORTEST_GT;
  int? get image_GTE;
  double? get image_AVERAGE_GTE;
  int? get image_LONGEST_GTE;
  int? get image_SHORTEST_GTE;
  int? get image_LT;
  double? get image_AVERAGE_LT;
  int? get image_LONGEST_LT;
  int? get image_SHORTEST_LT;
  int? get image_LTE;
  double? get image_AVERAGE_LTE;
  int? get image_LONGEST_LTE;
  int? get image_SHORTEST_LTE;
  String? get resetToken_EQUAL;
  double? get resetToken_AVERAGE_EQUAL;
  int? get resetToken_LONGEST_EQUAL;
  int? get resetToken_SHORTEST_EQUAL;
  int? get resetToken_GT;
  double? get resetToken_AVERAGE_GT;
  int? get resetToken_LONGEST_GT;
  int? get resetToken_SHORTEST_GT;
  int? get resetToken_GTE;
  double? get resetToken_AVERAGE_GTE;
  int? get resetToken_LONGEST_GTE;
  int? get resetToken_SHORTEST_GTE;
  int? get resetToken_LT;
  double? get resetToken_AVERAGE_LT;
  int? get resetToken_LONGEST_LT;
  int? get resetToken_SHORTEST_LT;
  int? get resetToken_LTE;
  double? get resetToken_AVERAGE_LTE;
  int? get resetToken_LONGEST_LTE;
  int? get resetToken_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  GDateTime? get resetTokenExpiry_EQUAL;
  GDateTime? get resetTokenExpiry_MIN_EQUAL;
  GDateTime? get resetTokenExpiry_MAX_EQUAL;
  GDateTime? get resetTokenExpiry_GT;
  GDateTime? get resetTokenExpiry_MIN_GT;
  GDateTime? get resetTokenExpiry_MAX_GT;
  GDateTime? get resetTokenExpiry_GTE;
  GDateTime? get resetTokenExpiry_MIN_GTE;
  GDateTime? get resetTokenExpiry_MAX_GTE;
  GDateTime? get resetTokenExpiry_LT;
  GDateTime? get resetTokenExpiry_MIN_LT;
  GDateTime? get resetTokenExpiry_MAX_LT;
  GDateTime? get resetTokenExpiry_LTE;
  GDateTime? get resetTokenExpiry_MIN_LTE;
  GDateTime? get resetTokenExpiry_MAX_LTE;
  static Serializer<GCommentCreatorNodeAggregationWhereInput> get serializer =>
      _$gCommentCreatorNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GCommentCreatorNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentCreatorNodeAggregationWhereInput.serializer, json);
}

abstract class GCommentCreatorUpdateConnectionInput
    implements
        Built<GCommentCreatorUpdateConnectionInput,
            GCommentCreatorUpdateConnectionInputBuilder> {
  GCommentCreatorUpdateConnectionInput._();

  factory GCommentCreatorUpdateConnectionInput(
          [Function(GCommentCreatorUpdateConnectionInputBuilder b) updates]) =
      _$GCommentCreatorUpdateConnectionInput;

  GUserUpdateInput? get node;
  static Serializer<GCommentCreatorUpdateConnectionInput> get serializer =>
      _$gCommentCreatorUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentCreatorUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentCreatorUpdateConnectionInput.serializer, json);
}

abstract class GCommentCreatorUpdateFieldInput
    implements
        Built<GCommentCreatorUpdateFieldInput,
            GCommentCreatorUpdateFieldInputBuilder> {
  GCommentCreatorUpdateFieldInput._();

  factory GCommentCreatorUpdateFieldInput(
          [Function(GCommentCreatorUpdateFieldInputBuilder b) updates]) =
      _$GCommentCreatorUpdateFieldInput;

  GCommentCreatorConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GCommentCreatorUpdateConnectionInput? get Gupdate;
  GCommentCreatorConnectFieldInput? get connect;
  GCommentCreatorDisconnectFieldInput? get disconnect;
  GCommentCreatorCreateFieldInput? get create;
  GCommentCreatorDeleteFieldInput? get delete;
  GCommentCreatorConnectOrCreateFieldInput? get connectOrCreate;
  static Serializer<GCommentCreatorUpdateFieldInput> get serializer =>
      _$gCommentCreatorUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentCreatorUpdateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentCreatorUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentCreatorUpdateFieldInput.serializer, json);
}

abstract class GCommentDeleteInput
    implements Built<GCommentDeleteInput, GCommentDeleteInputBuilder> {
  GCommentDeleteInput._();

  factory GCommentDeleteInput(
      [Function(GCommentDeleteInputBuilder b) updates]) = _$GCommentDeleteInput;

  GCommentCreatorDeleteFieldInput? get creator;
  GCommentPostDeleteFieldInput? get post;
  static Serializer<GCommentDeleteInput> get serializer =>
      _$gCommentDeleteInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentDeleteInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentDeleteInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentDeleteInput.serializer, json);
}

abstract class GCommentDisconnectInput
    implements Built<GCommentDisconnectInput, GCommentDisconnectInputBuilder> {
  GCommentDisconnectInput._();

  factory GCommentDisconnectInput(
          [Function(GCommentDisconnectInputBuilder b) updates]) =
      _$GCommentDisconnectInput;

  GCommentCreatorDisconnectFieldInput? get creator;
  GCommentPostDisconnectFieldInput? get post;
  static Serializer<GCommentDisconnectInput> get serializer =>
      _$gCommentDisconnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentDisconnectInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentDisconnectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentDisconnectInput.serializer, json);
}

abstract class GCommentOptions
    implements Built<GCommentOptions, GCommentOptionsBuilder> {
  GCommentOptions._();

  factory GCommentOptions([Function(GCommentOptionsBuilder b) updates]) =
      _$GCommentOptions;

  BuiltList<GCommentSort>? get sort;
  int? get limit;
  int? get offset;
  static Serializer<GCommentOptions> get serializer =>
      _$gCommentOptionsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentOptions.serializer, this)
          as Map<String, dynamic>);
  static GCommentOptions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentOptions.serializer, json);
}

abstract class GCommentPostAggregateInput
    implements
        Built<GCommentPostAggregateInput, GCommentPostAggregateInputBuilder> {
  GCommentPostAggregateInput._();

  factory GCommentPostAggregateInput(
          [Function(GCommentPostAggregateInputBuilder b) updates]) =
      _$GCommentPostAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GCommentPostAggregateInput>? get AND;
  BuiltList<GCommentPostAggregateInput>? get OR;
  GCommentPostNodeAggregationWhereInput? get node;
  static Serializer<GCommentPostAggregateInput> get serializer =>
      _$gCommentPostAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostAggregateInput.serializer, this) as Map<String, dynamic>);
  static GCommentPostAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostAggregateInput.serializer, json);
}

abstract class GCommentPostConnectFieldInput
    implements
        Built<GCommentPostConnectFieldInput,
            GCommentPostConnectFieldInputBuilder> {
  GCommentPostConnectFieldInput._();

  factory GCommentPostConnectFieldInput(
          [Function(GCommentPostConnectFieldInputBuilder b) updates]) =
      _$GCommentPostConnectFieldInput;

  GPostConnectWhere? get where;
  GPostConnectInput? get connect;
  static Serializer<GCommentPostConnectFieldInput> get serializer =>
      _$gCommentPostConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostConnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GCommentPostConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostConnectFieldInput.serializer, json);
}

abstract class GCommentPostConnectionSort
    implements
        Built<GCommentPostConnectionSort, GCommentPostConnectionSortBuilder> {
  GCommentPostConnectionSort._();

  factory GCommentPostConnectionSort(
          [Function(GCommentPostConnectionSortBuilder b) updates]) =
      _$GCommentPostConnectionSort;

  GPostSort? get node;
  static Serializer<GCommentPostConnectionSort> get serializer =>
      _$gCommentPostConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostConnectionSort.serializer, this) as Map<String, dynamic>);
  static GCommentPostConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostConnectionSort.serializer, json);
}

abstract class GCommentPostConnectionWhere
    implements
        Built<GCommentPostConnectionWhere, GCommentPostConnectionWhereBuilder> {
  GCommentPostConnectionWhere._();

  factory GCommentPostConnectionWhere(
          [Function(GCommentPostConnectionWhereBuilder b) updates]) =
      _$GCommentPostConnectionWhere;

  BuiltList<GCommentPostConnectionWhere>? get AND;
  BuiltList<GCommentPostConnectionWhere>? get OR;
  GPostWhere? get node;
  GPostWhere? get node_NOT;
  static Serializer<GCommentPostConnectionWhere> get serializer =>
      _$gCommentPostConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostConnectionWhere.serializer, this) as Map<String, dynamic>);
  static GCommentPostConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostConnectionWhere.serializer, json);
}

abstract class GCommentPostConnectOrCreateFieldInput
    implements
        Built<GCommentPostConnectOrCreateFieldInput,
            GCommentPostConnectOrCreateFieldInputBuilder> {
  GCommentPostConnectOrCreateFieldInput._();

  factory GCommentPostConnectOrCreateFieldInput(
          [Function(GCommentPostConnectOrCreateFieldInputBuilder b) updates]) =
      _$GCommentPostConnectOrCreateFieldInput;

  GPostConnectOrCreateWhere get where;
  GCommentPostConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GCommentPostConnectOrCreateFieldInput> get serializer =>
      _$gCommentPostConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentPostConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentPostConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentPostConnectOrCreateFieldInput.serializer, json);
}

abstract class GCommentPostConnectOrCreateFieldInputOnCreate
    implements
        Built<GCommentPostConnectOrCreateFieldInputOnCreate,
            GCommentPostConnectOrCreateFieldInputOnCreateBuilder> {
  GCommentPostConnectOrCreateFieldInputOnCreate._();

  factory GCommentPostConnectOrCreateFieldInputOnCreate(
      [Function(GCommentPostConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GCommentPostConnectOrCreateFieldInputOnCreate;

  GPostCreateInput get node;
  static Serializer<GCommentPostConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gCommentPostConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GCommentPostConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GCommentPostConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentPostConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GCommentPostCreateFieldInput
    implements
        Built<GCommentPostCreateFieldInput,
            GCommentPostCreateFieldInputBuilder> {
  GCommentPostCreateFieldInput._();

  factory GCommentPostCreateFieldInput(
          [Function(GCommentPostCreateFieldInputBuilder b) updates]) =
      _$GCommentPostCreateFieldInput;

  GPostCreateInput get node;
  static Serializer<GCommentPostCreateFieldInput> get serializer =>
      _$gCommentPostCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GCommentPostCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostCreateFieldInput.serializer, json);
}

abstract class GCommentPostDeleteFieldInput
    implements
        Built<GCommentPostDeleteFieldInput,
            GCommentPostDeleteFieldInputBuilder> {
  GCommentPostDeleteFieldInput._();

  factory GCommentPostDeleteFieldInput(
          [Function(GCommentPostDeleteFieldInputBuilder b) updates]) =
      _$GCommentPostDeleteFieldInput;

  GCommentPostConnectionWhere? get where;
  GPostDeleteInput? get delete;
  static Serializer<GCommentPostDeleteFieldInput> get serializer =>
      _$gCommentPostDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GCommentPostDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostDeleteFieldInput.serializer, json);
}

abstract class GCommentPostDisconnectFieldInput
    implements
        Built<GCommentPostDisconnectFieldInput,
            GCommentPostDisconnectFieldInputBuilder> {
  GCommentPostDisconnectFieldInput._();

  factory GCommentPostDisconnectFieldInput(
          [Function(GCommentPostDisconnectFieldInputBuilder b) updates]) =
      _$GCommentPostDisconnectFieldInput;

  GCommentPostConnectionWhere? get where;
  GPostDisconnectInput? get disconnect;
  static Serializer<GCommentPostDisconnectFieldInput> get serializer =>
      _$gCommentPostDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentPostDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentPostDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostDisconnectFieldInput.serializer, json);
}

abstract class GCommentPostFieldInput
    implements Built<GCommentPostFieldInput, GCommentPostFieldInputBuilder> {
  GCommentPostFieldInput._();

  factory GCommentPostFieldInput(
          [Function(GCommentPostFieldInputBuilder b) updates]) =
      _$GCommentPostFieldInput;

  GCommentPostCreateFieldInput? get create;
  GCommentPostConnectFieldInput? get connect;
  GCommentPostConnectOrCreateFieldInput? get connectOrCreate;
  static Serializer<GCommentPostFieldInput> get serializer =>
      _$gCommentPostFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentPostFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentPostFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentPostFieldInput.serializer, json);
}

abstract class GCommentPostNodeAggregationWhereInput
    implements
        Built<GCommentPostNodeAggregationWhereInput,
            GCommentPostNodeAggregationWhereInputBuilder> {
  GCommentPostNodeAggregationWhereInput._();

  factory GCommentPostNodeAggregationWhereInput(
          [Function(GCommentPostNodeAggregationWhereInputBuilder b) updates]) =
      _$GCommentPostNodeAggregationWhereInput;

  BuiltList<GCommentPostNodeAggregationWhereInput>? get AND;
  BuiltList<GCommentPostNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get music_EQUAL;
  double? get music_AVERAGE_EQUAL;
  int? get music_LONGEST_EQUAL;
  int? get music_SHORTEST_EQUAL;
  int? get music_GT;
  double? get music_AVERAGE_GT;
  int? get music_LONGEST_GT;
  int? get music_SHORTEST_GT;
  int? get music_GTE;
  double? get music_AVERAGE_GTE;
  int? get music_LONGEST_GTE;
  int? get music_SHORTEST_GTE;
  int? get music_LT;
  double? get music_AVERAGE_LT;
  int? get music_LONGEST_LT;
  int? get music_SHORTEST_LT;
  int? get music_LTE;
  double? get music_AVERAGE_LTE;
  int? get music_LONGEST_LTE;
  int? get music_SHORTEST_LTE;
  String? get description_EQUAL;
  double? get description_AVERAGE_EQUAL;
  int? get description_LONGEST_EQUAL;
  int? get description_SHORTEST_EQUAL;
  int? get description_GT;
  double? get description_AVERAGE_GT;
  int? get description_LONGEST_GT;
  int? get description_SHORTEST_GT;
  int? get description_GTE;
  double? get description_AVERAGE_GTE;
  int? get description_LONGEST_GTE;
  int? get description_SHORTEST_GTE;
  int? get description_LT;
  double? get description_AVERAGE_LT;
  int? get description_LONGEST_LT;
  int? get description_SHORTEST_LT;
  int? get description_LTE;
  double? get description_AVERAGE_LTE;
  int? get description_LONGEST_LTE;
  int? get description_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  static Serializer<GCommentPostNodeAggregationWhereInput> get serializer =>
      _$gCommentPostNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentPostNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentPostNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GCommentPostNodeAggregationWhereInput.serializer, json);
}

abstract class GCommentPostUpdateConnectionInput
    implements
        Built<GCommentPostUpdateConnectionInput,
            GCommentPostUpdateConnectionInputBuilder> {
  GCommentPostUpdateConnectionInput._();

  factory GCommentPostUpdateConnectionInput(
          [Function(GCommentPostUpdateConnectionInputBuilder b) updates]) =
      _$GCommentPostUpdateConnectionInput;

  GPostUpdateInput? get node;
  static Serializer<GCommentPostUpdateConnectionInput> get serializer =>
      _$gCommentPostUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GCommentPostUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GCommentPostUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostUpdateConnectionInput.serializer, json);
}

abstract class GCommentPostUpdateFieldInput
    implements
        Built<GCommentPostUpdateFieldInput,
            GCommentPostUpdateFieldInputBuilder> {
  GCommentPostUpdateFieldInput._();

  factory GCommentPostUpdateFieldInput(
          [Function(GCommentPostUpdateFieldInputBuilder b) updates]) =
      _$GCommentPostUpdateFieldInput;

  GCommentPostConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GCommentPostUpdateConnectionInput? get Gupdate;
  GCommentPostConnectFieldInput? get connect;
  GCommentPostDisconnectFieldInput? get disconnect;
  GCommentPostCreateFieldInput? get create;
  GCommentPostDeleteFieldInput? get delete;
  GCommentPostConnectOrCreateFieldInput? get connectOrCreate;
  static Serializer<GCommentPostUpdateFieldInput> get serializer =>
      _$gCommentPostUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCommentPostUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GCommentPostUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCommentPostUpdateFieldInput.serializer, json);
}

abstract class GCommentRelationInput
    implements Built<GCommentRelationInput, GCommentRelationInputBuilder> {
  GCommentRelationInput._();

  factory GCommentRelationInput(
          [Function(GCommentRelationInputBuilder b) updates]) =
      _$GCommentRelationInput;

  GCommentCreatorCreateFieldInput? get creator;
  GCommentPostCreateFieldInput? get post;
  static Serializer<GCommentRelationInput> get serializer =>
      _$gCommentRelationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentRelationInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentRelationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentRelationInput.serializer, json);
}

abstract class GCommentSort
    implements Built<GCommentSort, GCommentSortBuilder> {
  GCommentSort._();

  factory GCommentSort([Function(GCommentSortBuilder b) updates]) =
      _$GCommentSort;

  GSortDirection? get id;
  GSortDirection? get commentary;
  GSortDirection? get createdAt;
  GSortDirection? get updatedAt;
  static Serializer<GCommentSort> get serializer => _$gCommentSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentSort.serializer, this)
          as Map<String, dynamic>);
  static GCommentSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentSort.serializer, json);
}

abstract class GCommentUniqueWhere
    implements Built<GCommentUniqueWhere, GCommentUniqueWhereBuilder> {
  GCommentUniqueWhere._();

  factory GCommentUniqueWhere(
      [Function(GCommentUniqueWhereBuilder b) updates]) = _$GCommentUniqueWhere;

  String? get id;
  static Serializer<GCommentUniqueWhere> get serializer =>
      _$gCommentUniqueWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentUniqueWhere.serializer, this)
          as Map<String, dynamic>);
  static GCommentUniqueWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentUniqueWhere.serializer, json);
}

abstract class GCommentUpdateInput
    implements Built<GCommentUpdateInput, GCommentUpdateInputBuilder> {
  GCommentUpdateInput._();

  factory GCommentUpdateInput(
      [Function(GCommentUpdateInputBuilder b) updates]) = _$GCommentUpdateInput;

  String? get commentary;
  GCommentCreatorUpdateFieldInput? get creator;
  GCommentPostUpdateFieldInput? get post;
  static Serializer<GCommentUpdateInput> get serializer =>
      _$gCommentUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GCommentUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentUpdateInput.serializer, json);
}

abstract class GCommentWhere
    implements Built<GCommentWhere, GCommentWhereBuilder> {
  GCommentWhere._();

  factory GCommentWhere([Function(GCommentWhereBuilder b) updates]) =
      _$GCommentWhere;

  BuiltList<GCommentWhere>? get OR;
  BuiltList<GCommentWhere>? get AND;
  String? get id;
  String? get id_NOT;
  BuiltList<String>? get id_IN;
  BuiltList<String>? get id_NOT_IN;
  String? get id_CONTAINS;
  String? get id_NOT_CONTAINS;
  String? get id_STARTS_WITH;
  String? get id_NOT_STARTS_WITH;
  String? get id_ENDS_WITH;
  String? get id_NOT_ENDS_WITH;
  String? get commentary;
  String? get commentary_NOT;
  BuiltList<String>? get commentary_IN;
  BuiltList<String>? get commentary_NOT_IN;
  String? get commentary_CONTAINS;
  String? get commentary_NOT_CONTAINS;
  String? get commentary_STARTS_WITH;
  String? get commentary_NOT_STARTS_WITH;
  String? get commentary_ENDS_WITH;
  String? get commentary_NOT_ENDS_WITH;
  GDateTime? get createdAt;
  GDateTime? get createdAt_NOT;
  BuiltList<GDateTime>? get createdAt_IN;
  BuiltList<GDateTime>? get createdAt_NOT_IN;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get updatedAt;
  GDateTime? get updatedAt_NOT;
  BuiltList<GDateTime>? get updatedAt_IN;
  BuiltList<GDateTime>? get updatedAt_NOT_IN;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_GTE;
  GUserWhere? get creator;
  GUserWhere? get creator_NOT;
  GCommentCreatorAggregateInput? get creatorAggregate;
  GPostWhere? get post;
  GPostWhere? get post_NOT;
  GCommentPostAggregateInput? get postAggregate;
  GCommentCreatorConnectionWhere? get creatorConnection;
  GCommentCreatorConnectionWhere? get creatorConnection_NOT;
  GCommentPostConnectionWhere? get postConnection;
  GCommentPostConnectionWhere? get postConnection_NOT;
  static Serializer<GCommentWhere> get serializer => _$gCommentWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCommentWhere.serializer, this)
          as Map<String, dynamic>);
  static GCommentWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCommentWhere.serializer, json);
}

abstract class GHashtagCreateInput
    implements Built<GHashtagCreateInput, GHashtagCreateInputBuilder> {
  GHashtagCreateInput._();

  factory GHashtagCreateInput(
      [Function(GHashtagCreateInputBuilder b) updates]) = _$GHashtagCreateInput;

  String get hashtag;
  static Serializer<GHashtagCreateInput> get serializer =>
      _$gHashtagCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GHashtagCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GHashtagCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GHashtagCreateInput.serializer, json);
}

abstract class GHashtagOptions
    implements Built<GHashtagOptions, GHashtagOptionsBuilder> {
  GHashtagOptions._();

  factory GHashtagOptions([Function(GHashtagOptionsBuilder b) updates]) =
      _$GHashtagOptions;

  BuiltList<GHashtagSort>? get sort;
  int? get limit;
  int? get offset;
  static Serializer<GHashtagOptions> get serializer =>
      _$gHashtagOptionsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GHashtagOptions.serializer, this)
          as Map<String, dynamic>);
  static GHashtagOptions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GHashtagOptions.serializer, json);
}

abstract class GHashtagSort
    implements Built<GHashtagSort, GHashtagSortBuilder> {
  GHashtagSort._();

  factory GHashtagSort([Function(GHashtagSortBuilder b) updates]) =
      _$GHashtagSort;

  GSortDirection? get id;
  GSortDirection? get hashtag;
  GSortDirection? get createdAt;
  GSortDirection? get updatedAt;
  static Serializer<GHashtagSort> get serializer => _$gHashtagSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GHashtagSort.serializer, this)
          as Map<String, dynamic>);
  static GHashtagSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GHashtagSort.serializer, json);
}

abstract class GHashtagUpdateInput
    implements Built<GHashtagUpdateInput, GHashtagUpdateInputBuilder> {
  GHashtagUpdateInput._();

  factory GHashtagUpdateInput(
      [Function(GHashtagUpdateInputBuilder b) updates]) = _$GHashtagUpdateInput;

  String? get hashtag;
  static Serializer<GHashtagUpdateInput> get serializer =>
      _$gHashtagUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GHashtagUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GHashtagUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GHashtagUpdateInput.serializer, json);
}

abstract class GHashtagWhere
    implements Built<GHashtagWhere, GHashtagWhereBuilder> {
  GHashtagWhere._();

  factory GHashtagWhere([Function(GHashtagWhereBuilder b) updates]) =
      _$GHashtagWhere;

  BuiltList<GHashtagWhere>? get OR;
  BuiltList<GHashtagWhere>? get AND;
  String? get id;
  String? get id_NOT;
  BuiltList<String>? get id_IN;
  BuiltList<String>? get id_NOT_IN;
  String? get id_CONTAINS;
  String? get id_NOT_CONTAINS;
  String? get id_STARTS_WITH;
  String? get id_NOT_STARTS_WITH;
  String? get id_ENDS_WITH;
  String? get id_NOT_ENDS_WITH;
  String? get hashtag;
  String? get hashtag_NOT;
  BuiltList<String>? get hashtag_IN;
  BuiltList<String>? get hashtag_NOT_IN;
  String? get hashtag_CONTAINS;
  String? get hashtag_NOT_CONTAINS;
  String? get hashtag_STARTS_WITH;
  String? get hashtag_NOT_STARTS_WITH;
  String? get hashtag_ENDS_WITH;
  String? get hashtag_NOT_ENDS_WITH;
  GDateTime? get createdAt;
  GDateTime? get createdAt_NOT;
  BuiltList<GDateTime>? get createdAt_IN;
  BuiltList<GDateTime>? get createdAt_NOT_IN;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get updatedAt;
  GDateTime? get updatedAt_NOT;
  BuiltList<GDateTime>? get updatedAt_IN;
  BuiltList<GDateTime>? get updatedAt_NOT_IN;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_GTE;
  static Serializer<GHashtagWhere> get serializer => _$gHashtagWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GHashtagWhere.serializer, this)
          as Map<String, dynamic>);
  static GHashtagWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GHashtagWhere.serializer, json);
}

abstract class GPointDistance
    implements Built<GPointDistance, GPointDistanceBuilder> {
  GPointDistance._();

  factory GPointDistance([Function(GPointDistanceBuilder b) updates]) =
      _$GPointDistance;

  GPointInput get point;
  double get distance;
  static Serializer<GPointDistance> get serializer =>
      _$gPointDistanceSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPointDistance.serializer, this)
          as Map<String, dynamic>);
  static GPointDistance? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPointDistance.serializer, json);
}

abstract class GPointInput implements Built<GPointInput, GPointInputBuilder> {
  GPointInput._();

  factory GPointInput([Function(GPointInputBuilder b) updates]) = _$GPointInput;

  double get longitude;
  double get latitude;
  double? get height;
  static Serializer<GPointInput> get serializer => _$gPointInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPointInput.serializer, this)
          as Map<String, dynamic>);
  static GPointInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPointInput.serializer, json);
}

abstract class GPostCommentsAggregateInput
    implements
        Built<GPostCommentsAggregateInput, GPostCommentsAggregateInputBuilder> {
  GPostCommentsAggregateInput._();

  factory GPostCommentsAggregateInput(
          [Function(GPostCommentsAggregateInputBuilder b) updates]) =
      _$GPostCommentsAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GPostCommentsAggregateInput>? get AND;
  BuiltList<GPostCommentsAggregateInput>? get OR;
  GPostCommentsNodeAggregationWhereInput? get node;
  static Serializer<GPostCommentsAggregateInput> get serializer =>
      _$gPostCommentsAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsAggregateInput.serializer, this) as Map<String, dynamic>);
  static GPostCommentsAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsAggregateInput.serializer, json);
}

abstract class GPostCommentsConnectFieldInput
    implements
        Built<GPostCommentsConnectFieldInput,
            GPostCommentsConnectFieldInputBuilder> {
  GPostCommentsConnectFieldInput._();

  factory GPostCommentsConnectFieldInput(
          [Function(GPostCommentsConnectFieldInputBuilder b) updates]) =
      _$GPostCommentsConnectFieldInput;

  GCommentConnectWhere? get where;
  BuiltList<GCommentConnectInput>? get connect;
  static Serializer<GPostCommentsConnectFieldInput> get serializer =>
      _$gPostCommentsConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsConnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCommentsConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsConnectFieldInput.serializer, json);
}

abstract class GPostCommentsConnectionSort
    implements
        Built<GPostCommentsConnectionSort, GPostCommentsConnectionSortBuilder> {
  GPostCommentsConnectionSort._();

  factory GPostCommentsConnectionSort(
          [Function(GPostCommentsConnectionSortBuilder b) updates]) =
      _$GPostCommentsConnectionSort;

  GCommentSort? get node;
  static Serializer<GPostCommentsConnectionSort> get serializer =>
      _$gPostCommentsConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsConnectionSort.serializer, this) as Map<String, dynamic>);
  static GPostCommentsConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsConnectionSort.serializer, json);
}

abstract class GPostCommentsConnectionWhere
    implements
        Built<GPostCommentsConnectionWhere,
            GPostCommentsConnectionWhereBuilder> {
  GPostCommentsConnectionWhere._();

  factory GPostCommentsConnectionWhere(
          [Function(GPostCommentsConnectionWhereBuilder b) updates]) =
      _$GPostCommentsConnectionWhere;

  BuiltList<GPostCommentsConnectionWhere>? get AND;
  BuiltList<GPostCommentsConnectionWhere>? get OR;
  GCommentWhere? get node;
  GCommentWhere? get node_NOT;
  static Serializer<GPostCommentsConnectionWhere> get serializer =>
      _$gPostCommentsConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsConnectionWhere.serializer, this) as Map<String, dynamic>);
  static GPostCommentsConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsConnectionWhere.serializer, json);
}

abstract class GPostCommentsConnectOrCreateFieldInput
    implements
        Built<GPostCommentsConnectOrCreateFieldInput,
            GPostCommentsConnectOrCreateFieldInputBuilder> {
  GPostCommentsConnectOrCreateFieldInput._();

  factory GPostCommentsConnectOrCreateFieldInput(
          [Function(GPostCommentsConnectOrCreateFieldInputBuilder b) updates]) =
      _$GPostCommentsConnectOrCreateFieldInput;

  GCommentConnectOrCreateWhere get where;
  GPostCommentsConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GPostCommentsConnectOrCreateFieldInput> get serializer =>
      _$gPostCommentsConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GPostCommentsConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCommentsConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostCommentsConnectOrCreateFieldInput.serializer, json);
}

abstract class GPostCommentsConnectOrCreateFieldInputOnCreate
    implements
        Built<GPostCommentsConnectOrCreateFieldInputOnCreate,
            GPostCommentsConnectOrCreateFieldInputOnCreateBuilder> {
  GPostCommentsConnectOrCreateFieldInputOnCreate._();

  factory GPostCommentsConnectOrCreateFieldInputOnCreate(
      [Function(GPostCommentsConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GPostCommentsConnectOrCreateFieldInputOnCreate;

  GCommentCreateInput get node;
  static Serializer<GPostCommentsConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gPostCommentsConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GPostCommentsConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GPostCommentsConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostCommentsConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GPostCommentsCreateFieldInput
    implements
        Built<GPostCommentsCreateFieldInput,
            GPostCommentsCreateFieldInputBuilder> {
  GPostCommentsCreateFieldInput._();

  factory GPostCommentsCreateFieldInput(
          [Function(GPostCommentsCreateFieldInputBuilder b) updates]) =
      _$GPostCommentsCreateFieldInput;

  GCommentCreateInput get node;
  static Serializer<GPostCommentsCreateFieldInput> get serializer =>
      _$gPostCommentsCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCommentsCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsCreateFieldInput.serializer, json);
}

abstract class GPostCommentsDeleteFieldInput
    implements
        Built<GPostCommentsDeleteFieldInput,
            GPostCommentsDeleteFieldInputBuilder> {
  GPostCommentsDeleteFieldInput._();

  factory GPostCommentsDeleteFieldInput(
          [Function(GPostCommentsDeleteFieldInputBuilder b) updates]) =
      _$GPostCommentsDeleteFieldInput;

  GPostCommentsConnectionWhere? get where;
  GCommentDeleteInput? get delete;
  static Serializer<GPostCommentsDeleteFieldInput> get serializer =>
      _$gPostCommentsDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCommentsDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsDeleteFieldInput.serializer, json);
}

abstract class GPostCommentsDisconnectFieldInput
    implements
        Built<GPostCommentsDisconnectFieldInput,
            GPostCommentsDisconnectFieldInputBuilder> {
  GPostCommentsDisconnectFieldInput._();

  factory GPostCommentsDisconnectFieldInput(
          [Function(GPostCommentsDisconnectFieldInputBuilder b) updates]) =
      _$GPostCommentsDisconnectFieldInput;

  GPostCommentsConnectionWhere? get where;
  GCommentDisconnectInput? get disconnect;
  static Serializer<GPostCommentsDisconnectFieldInput> get serializer =>
      _$gPostCommentsDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostCommentsDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCommentsDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsDisconnectFieldInput.serializer, json);
}

abstract class GPostCommentsFieldInput
    implements Built<GPostCommentsFieldInput, GPostCommentsFieldInputBuilder> {
  GPostCommentsFieldInput._();

  factory GPostCommentsFieldInput(
          [Function(GPostCommentsFieldInputBuilder b) updates]) =
      _$GPostCommentsFieldInput;

  BuiltList<GPostCommentsCreateFieldInput>? get create;
  BuiltList<GPostCommentsConnectFieldInput>? get connect;
  BuiltList<GPostCommentsConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GPostCommentsFieldInput> get serializer =>
      _$gPostCommentsFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostCommentsFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GPostCommentsFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostCommentsFieldInput.serializer, json);
}

abstract class GPostCommentsNodeAggregationWhereInput
    implements
        Built<GPostCommentsNodeAggregationWhereInput,
            GPostCommentsNodeAggregationWhereInputBuilder> {
  GPostCommentsNodeAggregationWhereInput._();

  factory GPostCommentsNodeAggregationWhereInput(
          [Function(GPostCommentsNodeAggregationWhereInputBuilder b) updates]) =
      _$GPostCommentsNodeAggregationWhereInput;

  BuiltList<GPostCommentsNodeAggregationWhereInput>? get AND;
  BuiltList<GPostCommentsNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get commentary_EQUAL;
  double? get commentary_AVERAGE_EQUAL;
  int? get commentary_LONGEST_EQUAL;
  int? get commentary_SHORTEST_EQUAL;
  int? get commentary_GT;
  double? get commentary_AVERAGE_GT;
  int? get commentary_LONGEST_GT;
  int? get commentary_SHORTEST_GT;
  int? get commentary_GTE;
  double? get commentary_AVERAGE_GTE;
  int? get commentary_LONGEST_GTE;
  int? get commentary_SHORTEST_GTE;
  int? get commentary_LT;
  double? get commentary_AVERAGE_LT;
  int? get commentary_LONGEST_LT;
  int? get commentary_SHORTEST_LT;
  int? get commentary_LTE;
  double? get commentary_AVERAGE_LTE;
  int? get commentary_LONGEST_LTE;
  int? get commentary_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  static Serializer<GPostCommentsNodeAggregationWhereInput> get serializer =>
      _$gPostCommentsNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GPostCommentsNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCommentsNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostCommentsNodeAggregationWhereInput.serializer, json);
}

abstract class GPostCommentsUpdateConnectionInput
    implements
        Built<GPostCommentsUpdateConnectionInput,
            GPostCommentsUpdateConnectionInputBuilder> {
  GPostCommentsUpdateConnectionInput._();

  factory GPostCommentsUpdateConnectionInput(
          [Function(GPostCommentsUpdateConnectionInputBuilder b) updates]) =
      _$GPostCommentsUpdateConnectionInput;

  GCommentUpdateInput? get node;
  static Serializer<GPostCommentsUpdateConnectionInput> get serializer =>
      _$gPostCommentsUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostCommentsUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCommentsUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsUpdateConnectionInput.serializer, json);
}

abstract class GPostCommentsUpdateFieldInput
    implements
        Built<GPostCommentsUpdateFieldInput,
            GPostCommentsUpdateFieldInputBuilder> {
  GPostCommentsUpdateFieldInput._();

  factory GPostCommentsUpdateFieldInput(
          [Function(GPostCommentsUpdateFieldInputBuilder b) updates]) =
      _$GPostCommentsUpdateFieldInput;

  GPostCommentsConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GPostCommentsUpdateConnectionInput? get Gupdate;
  BuiltList<GPostCommentsConnectFieldInput>? get connect;
  BuiltList<GPostCommentsDisconnectFieldInput>? get disconnect;
  BuiltList<GPostCommentsCreateFieldInput>? get create;
  BuiltList<GPostCommentsDeleteFieldInput>? get delete;
  BuiltList<GPostCommentsConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GPostCommentsUpdateFieldInput> get serializer =>
      _$gPostCommentsUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCommentsUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCommentsUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCommentsUpdateFieldInput.serializer, json);
}

abstract class GPostConnectInput
    implements Built<GPostConnectInput, GPostConnectInputBuilder> {
  GPostConnectInput._();

  factory GPostConnectInput([Function(GPostConnectInputBuilder b) updates]) =
      _$GPostConnectInput;

  GPostCreatorConnectFieldInput? get creator;
  BuiltList<GPostLikesConnectFieldInput>? get likes;
  BuiltList<GPostCommentsConnectFieldInput>? get comments;
  static Serializer<GPostConnectInput> get serializer =>
      _$gPostConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GPostConnectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostConnectInput.serializer, json);
}

abstract class GPostConnectOrCreateInput
    implements
        Built<GPostConnectOrCreateInput, GPostConnectOrCreateInputBuilder> {
  GPostConnectOrCreateInput._();

  factory GPostConnectOrCreateInput(
          [Function(GPostConnectOrCreateInputBuilder b) updates]) =
      _$GPostConnectOrCreateInput;

  GPostCreatorConnectOrCreateFieldInput? get creator;
  BuiltList<GPostLikesConnectOrCreateFieldInput>? get likes;
  BuiltList<GPostCommentsConnectOrCreateFieldInput>? get comments;
  static Serializer<GPostConnectOrCreateInput> get serializer =>
      _$gPostConnectOrCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostConnectOrCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GPostConnectOrCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostConnectOrCreateInput.serializer, json);
}

abstract class GPostConnectOrCreateWhere
    implements
        Built<GPostConnectOrCreateWhere, GPostConnectOrCreateWhereBuilder> {
  GPostConnectOrCreateWhere._();

  factory GPostConnectOrCreateWhere(
          [Function(GPostConnectOrCreateWhereBuilder b) updates]) =
      _$GPostConnectOrCreateWhere;

  GPostUniqueWhere get node;
  static Serializer<GPostConnectOrCreateWhere> get serializer =>
      _$gPostConnectOrCreateWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostConnectOrCreateWhere.serializer, this)
          as Map<String, dynamic>);
  static GPostConnectOrCreateWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostConnectOrCreateWhere.serializer, json);
}

abstract class GPostConnectWhere
    implements Built<GPostConnectWhere, GPostConnectWhereBuilder> {
  GPostConnectWhere._();

  factory GPostConnectWhere([Function(GPostConnectWhereBuilder b) updates]) =
      _$GPostConnectWhere;

  GPostWhere get node;
  static Serializer<GPostConnectWhere> get serializer =>
      _$gPostConnectWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostConnectWhere.serializer, this)
          as Map<String, dynamic>);
  static GPostConnectWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostConnectWhere.serializer, json);
}

abstract class GPostCreateInput
    implements Built<GPostCreateInput, GPostCreateInputBuilder> {
  GPostCreateInput._();

  factory GPostCreateInput([Function(GPostCreateInputBuilder b) updates]) =
      _$GPostCreateInput;

  String? get music;
  String get description;
  GPostCreatorFieldInput? get creator;
  GPostLikesFieldInput? get likes;
  GPostCommentsFieldInput? get comments;
  static Serializer<GPostCreateInput> get serializer =>
      _$gPostCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GPostCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostCreateInput.serializer, json);
}

abstract class GPostCreatorAggregateInput
    implements
        Built<GPostCreatorAggregateInput, GPostCreatorAggregateInputBuilder> {
  GPostCreatorAggregateInput._();

  factory GPostCreatorAggregateInput(
          [Function(GPostCreatorAggregateInputBuilder b) updates]) =
      _$GPostCreatorAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GPostCreatorAggregateInput>? get AND;
  BuiltList<GPostCreatorAggregateInput>? get OR;
  GPostCreatorNodeAggregationWhereInput? get node;
  static Serializer<GPostCreatorAggregateInput> get serializer =>
      _$gPostCreatorAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorAggregateInput.serializer, this) as Map<String, dynamic>);
  static GPostCreatorAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorAggregateInput.serializer, json);
}

abstract class GPostCreatorConnectFieldInput
    implements
        Built<GPostCreatorConnectFieldInput,
            GPostCreatorConnectFieldInputBuilder> {
  GPostCreatorConnectFieldInput._();

  factory GPostCreatorConnectFieldInput(
          [Function(GPostCreatorConnectFieldInputBuilder b) updates]) =
      _$GPostCreatorConnectFieldInput;

  GUserConnectWhere? get where;
  GUserConnectInput? get connect;
  static Serializer<GPostCreatorConnectFieldInput> get serializer =>
      _$gPostCreatorConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorConnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCreatorConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorConnectFieldInput.serializer, json);
}

abstract class GPostCreatorConnectionSort
    implements
        Built<GPostCreatorConnectionSort, GPostCreatorConnectionSortBuilder> {
  GPostCreatorConnectionSort._();

  factory GPostCreatorConnectionSort(
          [Function(GPostCreatorConnectionSortBuilder b) updates]) =
      _$GPostCreatorConnectionSort;

  GUserSort? get node;
  static Serializer<GPostCreatorConnectionSort> get serializer =>
      _$gPostCreatorConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorConnectionSort.serializer, this) as Map<String, dynamic>);
  static GPostCreatorConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorConnectionSort.serializer, json);
}

abstract class GPostCreatorConnectionWhere
    implements
        Built<GPostCreatorConnectionWhere, GPostCreatorConnectionWhereBuilder> {
  GPostCreatorConnectionWhere._();

  factory GPostCreatorConnectionWhere(
          [Function(GPostCreatorConnectionWhereBuilder b) updates]) =
      _$GPostCreatorConnectionWhere;

  BuiltList<GPostCreatorConnectionWhere>? get AND;
  BuiltList<GPostCreatorConnectionWhere>? get OR;
  GUserWhere? get node;
  GUserWhere? get node_NOT;
  static Serializer<GPostCreatorConnectionWhere> get serializer =>
      _$gPostCreatorConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorConnectionWhere.serializer, this) as Map<String, dynamic>);
  static GPostCreatorConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorConnectionWhere.serializer, json);
}

abstract class GPostCreatorConnectOrCreateFieldInput
    implements
        Built<GPostCreatorConnectOrCreateFieldInput,
            GPostCreatorConnectOrCreateFieldInputBuilder> {
  GPostCreatorConnectOrCreateFieldInput._();

  factory GPostCreatorConnectOrCreateFieldInput(
          [Function(GPostCreatorConnectOrCreateFieldInputBuilder b) updates]) =
      _$GPostCreatorConnectOrCreateFieldInput;

  GUserConnectOrCreateWhere get where;
  GPostCreatorConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GPostCreatorConnectOrCreateFieldInput> get serializer =>
      _$gPostCreatorConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostCreatorConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCreatorConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostCreatorConnectOrCreateFieldInput.serializer, json);
}

abstract class GPostCreatorConnectOrCreateFieldInputOnCreate
    implements
        Built<GPostCreatorConnectOrCreateFieldInputOnCreate,
            GPostCreatorConnectOrCreateFieldInputOnCreateBuilder> {
  GPostCreatorConnectOrCreateFieldInputOnCreate._();

  factory GPostCreatorConnectOrCreateFieldInputOnCreate(
      [Function(GPostCreatorConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GPostCreatorConnectOrCreateFieldInputOnCreate;

  GUserCreateInput get node;
  static Serializer<GPostCreatorConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gPostCreatorConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GPostCreatorConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GPostCreatorConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostCreatorConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GPostCreatorCreateFieldInput
    implements
        Built<GPostCreatorCreateFieldInput,
            GPostCreatorCreateFieldInputBuilder> {
  GPostCreatorCreateFieldInput._();

  factory GPostCreatorCreateFieldInput(
          [Function(GPostCreatorCreateFieldInputBuilder b) updates]) =
      _$GPostCreatorCreateFieldInput;

  GUserCreateInput get node;
  static Serializer<GPostCreatorCreateFieldInput> get serializer =>
      _$gPostCreatorCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCreatorCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorCreateFieldInput.serializer, json);
}

abstract class GPostCreatorDeleteFieldInput
    implements
        Built<GPostCreatorDeleteFieldInput,
            GPostCreatorDeleteFieldInputBuilder> {
  GPostCreatorDeleteFieldInput._();

  factory GPostCreatorDeleteFieldInput(
          [Function(GPostCreatorDeleteFieldInputBuilder b) updates]) =
      _$GPostCreatorDeleteFieldInput;

  GPostCreatorConnectionWhere? get where;
  GUserDeleteInput? get delete;
  static Serializer<GPostCreatorDeleteFieldInput> get serializer =>
      _$gPostCreatorDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCreatorDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorDeleteFieldInput.serializer, json);
}

abstract class GPostCreatorDisconnectFieldInput
    implements
        Built<GPostCreatorDisconnectFieldInput,
            GPostCreatorDisconnectFieldInputBuilder> {
  GPostCreatorDisconnectFieldInput._();

  factory GPostCreatorDisconnectFieldInput(
          [Function(GPostCreatorDisconnectFieldInputBuilder b) updates]) =
      _$GPostCreatorDisconnectFieldInput;

  GPostCreatorConnectionWhere? get where;
  GUserDisconnectInput? get disconnect;
  static Serializer<GPostCreatorDisconnectFieldInput> get serializer =>
      _$gPostCreatorDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostCreatorDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCreatorDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorDisconnectFieldInput.serializer, json);
}

abstract class GPostCreatorFieldInput
    implements Built<GPostCreatorFieldInput, GPostCreatorFieldInputBuilder> {
  GPostCreatorFieldInput._();

  factory GPostCreatorFieldInput(
          [Function(GPostCreatorFieldInputBuilder b) updates]) =
      _$GPostCreatorFieldInput;

  GPostCreatorCreateFieldInput? get create;
  GPostCreatorConnectFieldInput? get connect;
  GPostCreatorConnectOrCreateFieldInput? get connectOrCreate;
  static Serializer<GPostCreatorFieldInput> get serializer =>
      _$gPostCreatorFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostCreatorFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GPostCreatorFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostCreatorFieldInput.serializer, json);
}

abstract class GPostCreatorNodeAggregationWhereInput
    implements
        Built<GPostCreatorNodeAggregationWhereInput,
            GPostCreatorNodeAggregationWhereInputBuilder> {
  GPostCreatorNodeAggregationWhereInput._();

  factory GPostCreatorNodeAggregationWhereInput(
          [Function(GPostCreatorNodeAggregationWhereInputBuilder b) updates]) =
      _$GPostCreatorNodeAggregationWhereInput;

  BuiltList<GPostCreatorNodeAggregationWhereInput>? get AND;
  BuiltList<GPostCreatorNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get email_EQUAL;
  double? get email_AVERAGE_EQUAL;
  int? get email_LONGEST_EQUAL;
  int? get email_SHORTEST_EQUAL;
  int? get email_GT;
  double? get email_AVERAGE_GT;
  int? get email_LONGEST_GT;
  int? get email_SHORTEST_GT;
  int? get email_GTE;
  double? get email_AVERAGE_GTE;
  int? get email_LONGEST_GTE;
  int? get email_SHORTEST_GTE;
  int? get email_LT;
  double? get email_AVERAGE_LT;
  int? get email_LONGEST_LT;
  int? get email_SHORTEST_LT;
  int? get email_LTE;
  double? get email_AVERAGE_LTE;
  int? get email_LONGEST_LTE;
  int? get email_SHORTEST_LTE;
  String? get pseudo_EQUAL;
  double? get pseudo_AVERAGE_EQUAL;
  int? get pseudo_LONGEST_EQUAL;
  int? get pseudo_SHORTEST_EQUAL;
  int? get pseudo_GT;
  double? get pseudo_AVERAGE_GT;
  int? get pseudo_LONGEST_GT;
  int? get pseudo_SHORTEST_GT;
  int? get pseudo_GTE;
  double? get pseudo_AVERAGE_GTE;
  int? get pseudo_LONGEST_GTE;
  int? get pseudo_SHORTEST_GTE;
  int? get pseudo_LT;
  double? get pseudo_AVERAGE_LT;
  int? get pseudo_LONGEST_LT;
  int? get pseudo_SHORTEST_LT;
  int? get pseudo_LTE;
  double? get pseudo_AVERAGE_LTE;
  int? get pseudo_LONGEST_LTE;
  int? get pseudo_SHORTEST_LTE;
  String? get firstName_EQUAL;
  double? get firstName_AVERAGE_EQUAL;
  int? get firstName_LONGEST_EQUAL;
  int? get firstName_SHORTEST_EQUAL;
  int? get firstName_GT;
  double? get firstName_AVERAGE_GT;
  int? get firstName_LONGEST_GT;
  int? get firstName_SHORTEST_GT;
  int? get firstName_GTE;
  double? get firstName_AVERAGE_GTE;
  int? get firstName_LONGEST_GTE;
  int? get firstName_SHORTEST_GTE;
  int? get firstName_LT;
  double? get firstName_AVERAGE_LT;
  int? get firstName_LONGEST_LT;
  int? get firstName_SHORTEST_LT;
  int? get firstName_LTE;
  double? get firstName_AVERAGE_LTE;
  int? get firstName_LONGEST_LTE;
  int? get firstName_SHORTEST_LTE;
  String? get lastName_EQUAL;
  double? get lastName_AVERAGE_EQUAL;
  int? get lastName_LONGEST_EQUAL;
  int? get lastName_SHORTEST_EQUAL;
  int? get lastName_GT;
  double? get lastName_AVERAGE_GT;
  int? get lastName_LONGEST_GT;
  int? get lastName_SHORTEST_GT;
  int? get lastName_GTE;
  double? get lastName_AVERAGE_GTE;
  int? get lastName_LONGEST_GTE;
  int? get lastName_SHORTEST_GTE;
  int? get lastName_LT;
  double? get lastName_AVERAGE_LT;
  int? get lastName_LONGEST_LT;
  int? get lastName_SHORTEST_LT;
  int? get lastName_LTE;
  double? get lastName_AVERAGE_LTE;
  int? get lastName_LONGEST_LTE;
  int? get lastName_SHORTEST_LTE;
  String? get password_EQUAL;
  double? get password_AVERAGE_EQUAL;
  int? get password_LONGEST_EQUAL;
  int? get password_SHORTEST_EQUAL;
  int? get password_GT;
  double? get password_AVERAGE_GT;
  int? get password_LONGEST_GT;
  int? get password_SHORTEST_GT;
  int? get password_GTE;
  double? get password_AVERAGE_GTE;
  int? get password_LONGEST_GTE;
  int? get password_SHORTEST_GTE;
  int? get password_LT;
  double? get password_AVERAGE_LT;
  int? get password_LONGEST_LT;
  int? get password_SHORTEST_LT;
  int? get password_LTE;
  double? get password_AVERAGE_LTE;
  int? get password_LONGEST_LTE;
  int? get password_SHORTEST_LTE;
  String? get biography_EQUAL;
  double? get biography_AVERAGE_EQUAL;
  int? get biography_LONGEST_EQUAL;
  int? get biography_SHORTEST_EQUAL;
  int? get biography_GT;
  double? get biography_AVERAGE_GT;
  int? get biography_LONGEST_GT;
  int? get biography_SHORTEST_GT;
  int? get biography_GTE;
  double? get biography_AVERAGE_GTE;
  int? get biography_LONGEST_GTE;
  int? get biography_SHORTEST_GTE;
  int? get biography_LT;
  double? get biography_AVERAGE_LT;
  int? get biography_LONGEST_LT;
  int? get biography_SHORTEST_LT;
  int? get biography_LTE;
  double? get biography_AVERAGE_LTE;
  int? get biography_LONGEST_LTE;
  int? get biography_SHORTEST_LTE;
  String? get image_EQUAL;
  double? get image_AVERAGE_EQUAL;
  int? get image_LONGEST_EQUAL;
  int? get image_SHORTEST_EQUAL;
  int? get image_GT;
  double? get image_AVERAGE_GT;
  int? get image_LONGEST_GT;
  int? get image_SHORTEST_GT;
  int? get image_GTE;
  double? get image_AVERAGE_GTE;
  int? get image_LONGEST_GTE;
  int? get image_SHORTEST_GTE;
  int? get image_LT;
  double? get image_AVERAGE_LT;
  int? get image_LONGEST_LT;
  int? get image_SHORTEST_LT;
  int? get image_LTE;
  double? get image_AVERAGE_LTE;
  int? get image_LONGEST_LTE;
  int? get image_SHORTEST_LTE;
  String? get resetToken_EQUAL;
  double? get resetToken_AVERAGE_EQUAL;
  int? get resetToken_LONGEST_EQUAL;
  int? get resetToken_SHORTEST_EQUAL;
  int? get resetToken_GT;
  double? get resetToken_AVERAGE_GT;
  int? get resetToken_LONGEST_GT;
  int? get resetToken_SHORTEST_GT;
  int? get resetToken_GTE;
  double? get resetToken_AVERAGE_GTE;
  int? get resetToken_LONGEST_GTE;
  int? get resetToken_SHORTEST_GTE;
  int? get resetToken_LT;
  double? get resetToken_AVERAGE_LT;
  int? get resetToken_LONGEST_LT;
  int? get resetToken_SHORTEST_LT;
  int? get resetToken_LTE;
  double? get resetToken_AVERAGE_LTE;
  int? get resetToken_LONGEST_LTE;
  int? get resetToken_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  GDateTime? get resetTokenExpiry_EQUAL;
  GDateTime? get resetTokenExpiry_MIN_EQUAL;
  GDateTime? get resetTokenExpiry_MAX_EQUAL;
  GDateTime? get resetTokenExpiry_GT;
  GDateTime? get resetTokenExpiry_MIN_GT;
  GDateTime? get resetTokenExpiry_MAX_GT;
  GDateTime? get resetTokenExpiry_GTE;
  GDateTime? get resetTokenExpiry_MIN_GTE;
  GDateTime? get resetTokenExpiry_MAX_GTE;
  GDateTime? get resetTokenExpiry_LT;
  GDateTime? get resetTokenExpiry_MIN_LT;
  GDateTime? get resetTokenExpiry_MAX_LT;
  GDateTime? get resetTokenExpiry_LTE;
  GDateTime? get resetTokenExpiry_MIN_LTE;
  GDateTime? get resetTokenExpiry_MAX_LTE;
  static Serializer<GPostCreatorNodeAggregationWhereInput> get serializer =>
      _$gPostCreatorNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostCreatorNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCreatorNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostCreatorNodeAggregationWhereInput.serializer, json);
}

abstract class GPostCreatorUpdateConnectionInput
    implements
        Built<GPostCreatorUpdateConnectionInput,
            GPostCreatorUpdateConnectionInputBuilder> {
  GPostCreatorUpdateConnectionInput._();

  factory GPostCreatorUpdateConnectionInput(
          [Function(GPostCreatorUpdateConnectionInputBuilder b) updates]) =
      _$GPostCreatorUpdateConnectionInput;

  GUserUpdateInput? get node;
  static Serializer<GPostCreatorUpdateConnectionInput> get serializer =>
      _$gPostCreatorUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostCreatorUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GPostCreatorUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorUpdateConnectionInput.serializer, json);
}

abstract class GPostCreatorUpdateFieldInput
    implements
        Built<GPostCreatorUpdateFieldInput,
            GPostCreatorUpdateFieldInputBuilder> {
  GPostCreatorUpdateFieldInput._();

  factory GPostCreatorUpdateFieldInput(
          [Function(GPostCreatorUpdateFieldInputBuilder b) updates]) =
      _$GPostCreatorUpdateFieldInput;

  GPostCreatorConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GPostCreatorUpdateConnectionInput? get Gupdate;
  GPostCreatorConnectFieldInput? get connect;
  GPostCreatorDisconnectFieldInput? get disconnect;
  GPostCreatorCreateFieldInput? get create;
  GPostCreatorDeleteFieldInput? get delete;
  GPostCreatorConnectOrCreateFieldInput? get connectOrCreate;
  static Serializer<GPostCreatorUpdateFieldInput> get serializer =>
      _$gPostCreatorUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostCreatorUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostCreatorUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostCreatorUpdateFieldInput.serializer, json);
}

abstract class GPostDeleteInput
    implements Built<GPostDeleteInput, GPostDeleteInputBuilder> {
  GPostDeleteInput._();

  factory GPostDeleteInput([Function(GPostDeleteInputBuilder b) updates]) =
      _$GPostDeleteInput;

  GPostCreatorDeleteFieldInput? get creator;
  BuiltList<GPostLikesDeleteFieldInput>? get likes;
  BuiltList<GPostCommentsDeleteFieldInput>? get comments;
  static Serializer<GPostDeleteInput> get serializer =>
      _$gPostDeleteInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostDeleteInput.serializer, this)
          as Map<String, dynamic>);
  static GPostDeleteInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostDeleteInput.serializer, json);
}

abstract class GPostDisconnectInput
    implements Built<GPostDisconnectInput, GPostDisconnectInputBuilder> {
  GPostDisconnectInput._();

  factory GPostDisconnectInput(
          [Function(GPostDisconnectInputBuilder b) updates]) =
      _$GPostDisconnectInput;

  GPostCreatorDisconnectFieldInput? get creator;
  BuiltList<GPostLikesDisconnectFieldInput>? get likes;
  BuiltList<GPostCommentsDisconnectFieldInput>? get comments;
  static Serializer<GPostDisconnectInput> get serializer =>
      _$gPostDisconnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostDisconnectInput.serializer, this)
          as Map<String, dynamic>);
  static GPostDisconnectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostDisconnectInput.serializer, json);
}

abstract class GPostLikesAggregateInput
    implements
        Built<GPostLikesAggregateInput, GPostLikesAggregateInputBuilder> {
  GPostLikesAggregateInput._();

  factory GPostLikesAggregateInput(
          [Function(GPostLikesAggregateInputBuilder b) updates]) =
      _$GPostLikesAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GPostLikesAggregateInput>? get AND;
  BuiltList<GPostLikesAggregateInput>? get OR;
  GPostLikesNodeAggregationWhereInput? get node;
  static Serializer<GPostLikesAggregateInput> get serializer =>
      _$gPostLikesAggregateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostLikesAggregateInput.serializer, this)
          as Map<String, dynamic>);
  static GPostLikesAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesAggregateInput.serializer, json);
}

abstract class GPostLikesConnectFieldInput
    implements
        Built<GPostLikesConnectFieldInput, GPostLikesConnectFieldInputBuilder> {
  GPostLikesConnectFieldInput._();

  factory GPostLikesConnectFieldInput(
          [Function(GPostLikesConnectFieldInputBuilder b) updates]) =
      _$GPostLikesConnectFieldInput;

  GUserConnectWhere? get where;
  BuiltList<GUserConnectInput>? get connect;
  static Serializer<GPostLikesConnectFieldInput> get serializer =>
      _$gPostLikesConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostLikesConnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostLikesConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesConnectFieldInput.serializer, json);
}

abstract class GPostLikesConnectionSort
    implements
        Built<GPostLikesConnectionSort, GPostLikesConnectionSortBuilder> {
  GPostLikesConnectionSort._();

  factory GPostLikesConnectionSort(
          [Function(GPostLikesConnectionSortBuilder b) updates]) =
      _$GPostLikesConnectionSort;

  GUserSort? get node;
  static Serializer<GPostLikesConnectionSort> get serializer =>
      _$gPostLikesConnectionSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostLikesConnectionSort.serializer, this)
          as Map<String, dynamic>);
  static GPostLikesConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesConnectionSort.serializer, json);
}

abstract class GPostLikesConnectionWhere
    implements
        Built<GPostLikesConnectionWhere, GPostLikesConnectionWhereBuilder> {
  GPostLikesConnectionWhere._();

  factory GPostLikesConnectionWhere(
          [Function(GPostLikesConnectionWhereBuilder b) updates]) =
      _$GPostLikesConnectionWhere;

  BuiltList<GPostLikesConnectionWhere>? get AND;
  BuiltList<GPostLikesConnectionWhere>? get OR;
  GUserWhere? get node;
  GUserWhere? get node_NOT;
  static Serializer<GPostLikesConnectionWhere> get serializer =>
      _$gPostLikesConnectionWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostLikesConnectionWhere.serializer, this)
          as Map<String, dynamic>);
  static GPostLikesConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesConnectionWhere.serializer, json);
}

abstract class GPostLikesConnectOrCreateFieldInput
    implements
        Built<GPostLikesConnectOrCreateFieldInput,
            GPostLikesConnectOrCreateFieldInputBuilder> {
  GPostLikesConnectOrCreateFieldInput._();

  factory GPostLikesConnectOrCreateFieldInput(
          [Function(GPostLikesConnectOrCreateFieldInputBuilder b) updates]) =
      _$GPostLikesConnectOrCreateFieldInput;

  GUserConnectOrCreateWhere get where;
  GPostLikesConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GPostLikesConnectOrCreateFieldInput> get serializer =>
      _$gPostLikesConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostLikesConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GPostLikesConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostLikesConnectOrCreateFieldInput.serializer, json);
}

abstract class GPostLikesConnectOrCreateFieldInputOnCreate
    implements
        Built<GPostLikesConnectOrCreateFieldInputOnCreate,
            GPostLikesConnectOrCreateFieldInputOnCreateBuilder> {
  GPostLikesConnectOrCreateFieldInputOnCreate._();

  factory GPostLikesConnectOrCreateFieldInputOnCreate(
      [Function(GPostLikesConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GPostLikesConnectOrCreateFieldInputOnCreate;

  GUserCreateInput get node;
  static Serializer<GPostLikesConnectOrCreateFieldInputOnCreate>
      get serializer => _$gPostLikesConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GPostLikesConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GPostLikesConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostLikesConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GPostLikesCreateFieldInput
    implements
        Built<GPostLikesCreateFieldInput, GPostLikesCreateFieldInputBuilder> {
  GPostLikesCreateFieldInput._();

  factory GPostLikesCreateFieldInput(
          [Function(GPostLikesCreateFieldInputBuilder b) updates]) =
      _$GPostLikesCreateFieldInput;

  GUserCreateInput get node;
  static Serializer<GPostLikesCreateFieldInput> get serializer =>
      _$gPostLikesCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostLikesCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostLikesCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesCreateFieldInput.serializer, json);
}

abstract class GPostLikesDeleteFieldInput
    implements
        Built<GPostLikesDeleteFieldInput, GPostLikesDeleteFieldInputBuilder> {
  GPostLikesDeleteFieldInput._();

  factory GPostLikesDeleteFieldInput(
          [Function(GPostLikesDeleteFieldInputBuilder b) updates]) =
      _$GPostLikesDeleteFieldInput;

  GPostLikesConnectionWhere? get where;
  GUserDeleteInput? get delete;
  static Serializer<GPostLikesDeleteFieldInput> get serializer =>
      _$gPostLikesDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostLikesDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostLikesDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesDeleteFieldInput.serializer, json);
}

abstract class GPostLikesDisconnectFieldInput
    implements
        Built<GPostLikesDisconnectFieldInput,
            GPostLikesDisconnectFieldInputBuilder> {
  GPostLikesDisconnectFieldInput._();

  factory GPostLikesDisconnectFieldInput(
          [Function(GPostLikesDisconnectFieldInputBuilder b) updates]) =
      _$GPostLikesDisconnectFieldInput;

  GPostLikesConnectionWhere? get where;
  GUserDisconnectInput? get disconnect;
  static Serializer<GPostLikesDisconnectFieldInput> get serializer =>
      _$gPostLikesDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostLikesDisconnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostLikesDisconnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesDisconnectFieldInput.serializer, json);
}

abstract class GPostLikesFieldInput
    implements Built<GPostLikesFieldInput, GPostLikesFieldInputBuilder> {
  GPostLikesFieldInput._();

  factory GPostLikesFieldInput(
          [Function(GPostLikesFieldInputBuilder b) updates]) =
      _$GPostLikesFieldInput;

  BuiltList<GPostLikesCreateFieldInput>? get create;
  BuiltList<GPostLikesConnectFieldInput>? get connect;
  BuiltList<GPostLikesConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GPostLikesFieldInput> get serializer =>
      _$gPostLikesFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostLikesFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GPostLikesFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostLikesFieldInput.serializer, json);
}

abstract class GPostLikesNodeAggregationWhereInput
    implements
        Built<GPostLikesNodeAggregationWhereInput,
            GPostLikesNodeAggregationWhereInputBuilder> {
  GPostLikesNodeAggregationWhereInput._();

  factory GPostLikesNodeAggregationWhereInput(
          [Function(GPostLikesNodeAggregationWhereInputBuilder b) updates]) =
      _$GPostLikesNodeAggregationWhereInput;

  BuiltList<GPostLikesNodeAggregationWhereInput>? get AND;
  BuiltList<GPostLikesNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get email_EQUAL;
  double? get email_AVERAGE_EQUAL;
  int? get email_LONGEST_EQUAL;
  int? get email_SHORTEST_EQUAL;
  int? get email_GT;
  double? get email_AVERAGE_GT;
  int? get email_LONGEST_GT;
  int? get email_SHORTEST_GT;
  int? get email_GTE;
  double? get email_AVERAGE_GTE;
  int? get email_LONGEST_GTE;
  int? get email_SHORTEST_GTE;
  int? get email_LT;
  double? get email_AVERAGE_LT;
  int? get email_LONGEST_LT;
  int? get email_SHORTEST_LT;
  int? get email_LTE;
  double? get email_AVERAGE_LTE;
  int? get email_LONGEST_LTE;
  int? get email_SHORTEST_LTE;
  String? get pseudo_EQUAL;
  double? get pseudo_AVERAGE_EQUAL;
  int? get pseudo_LONGEST_EQUAL;
  int? get pseudo_SHORTEST_EQUAL;
  int? get pseudo_GT;
  double? get pseudo_AVERAGE_GT;
  int? get pseudo_LONGEST_GT;
  int? get pseudo_SHORTEST_GT;
  int? get pseudo_GTE;
  double? get pseudo_AVERAGE_GTE;
  int? get pseudo_LONGEST_GTE;
  int? get pseudo_SHORTEST_GTE;
  int? get pseudo_LT;
  double? get pseudo_AVERAGE_LT;
  int? get pseudo_LONGEST_LT;
  int? get pseudo_SHORTEST_LT;
  int? get pseudo_LTE;
  double? get pseudo_AVERAGE_LTE;
  int? get pseudo_LONGEST_LTE;
  int? get pseudo_SHORTEST_LTE;
  String? get firstName_EQUAL;
  double? get firstName_AVERAGE_EQUAL;
  int? get firstName_LONGEST_EQUAL;
  int? get firstName_SHORTEST_EQUAL;
  int? get firstName_GT;
  double? get firstName_AVERAGE_GT;
  int? get firstName_LONGEST_GT;
  int? get firstName_SHORTEST_GT;
  int? get firstName_GTE;
  double? get firstName_AVERAGE_GTE;
  int? get firstName_LONGEST_GTE;
  int? get firstName_SHORTEST_GTE;
  int? get firstName_LT;
  double? get firstName_AVERAGE_LT;
  int? get firstName_LONGEST_LT;
  int? get firstName_SHORTEST_LT;
  int? get firstName_LTE;
  double? get firstName_AVERAGE_LTE;
  int? get firstName_LONGEST_LTE;
  int? get firstName_SHORTEST_LTE;
  String? get lastName_EQUAL;
  double? get lastName_AVERAGE_EQUAL;
  int? get lastName_LONGEST_EQUAL;
  int? get lastName_SHORTEST_EQUAL;
  int? get lastName_GT;
  double? get lastName_AVERAGE_GT;
  int? get lastName_LONGEST_GT;
  int? get lastName_SHORTEST_GT;
  int? get lastName_GTE;
  double? get lastName_AVERAGE_GTE;
  int? get lastName_LONGEST_GTE;
  int? get lastName_SHORTEST_GTE;
  int? get lastName_LT;
  double? get lastName_AVERAGE_LT;
  int? get lastName_LONGEST_LT;
  int? get lastName_SHORTEST_LT;
  int? get lastName_LTE;
  double? get lastName_AVERAGE_LTE;
  int? get lastName_LONGEST_LTE;
  int? get lastName_SHORTEST_LTE;
  String? get password_EQUAL;
  double? get password_AVERAGE_EQUAL;
  int? get password_LONGEST_EQUAL;
  int? get password_SHORTEST_EQUAL;
  int? get password_GT;
  double? get password_AVERAGE_GT;
  int? get password_LONGEST_GT;
  int? get password_SHORTEST_GT;
  int? get password_GTE;
  double? get password_AVERAGE_GTE;
  int? get password_LONGEST_GTE;
  int? get password_SHORTEST_GTE;
  int? get password_LT;
  double? get password_AVERAGE_LT;
  int? get password_LONGEST_LT;
  int? get password_SHORTEST_LT;
  int? get password_LTE;
  double? get password_AVERAGE_LTE;
  int? get password_LONGEST_LTE;
  int? get password_SHORTEST_LTE;
  String? get biography_EQUAL;
  double? get biography_AVERAGE_EQUAL;
  int? get biography_LONGEST_EQUAL;
  int? get biography_SHORTEST_EQUAL;
  int? get biography_GT;
  double? get biography_AVERAGE_GT;
  int? get biography_LONGEST_GT;
  int? get biography_SHORTEST_GT;
  int? get biography_GTE;
  double? get biography_AVERAGE_GTE;
  int? get biography_LONGEST_GTE;
  int? get biography_SHORTEST_GTE;
  int? get biography_LT;
  double? get biography_AVERAGE_LT;
  int? get biography_LONGEST_LT;
  int? get biography_SHORTEST_LT;
  int? get biography_LTE;
  double? get biography_AVERAGE_LTE;
  int? get biography_LONGEST_LTE;
  int? get biography_SHORTEST_LTE;
  String? get image_EQUAL;
  double? get image_AVERAGE_EQUAL;
  int? get image_LONGEST_EQUAL;
  int? get image_SHORTEST_EQUAL;
  int? get image_GT;
  double? get image_AVERAGE_GT;
  int? get image_LONGEST_GT;
  int? get image_SHORTEST_GT;
  int? get image_GTE;
  double? get image_AVERAGE_GTE;
  int? get image_LONGEST_GTE;
  int? get image_SHORTEST_GTE;
  int? get image_LT;
  double? get image_AVERAGE_LT;
  int? get image_LONGEST_LT;
  int? get image_SHORTEST_LT;
  int? get image_LTE;
  double? get image_AVERAGE_LTE;
  int? get image_LONGEST_LTE;
  int? get image_SHORTEST_LTE;
  String? get resetToken_EQUAL;
  double? get resetToken_AVERAGE_EQUAL;
  int? get resetToken_LONGEST_EQUAL;
  int? get resetToken_SHORTEST_EQUAL;
  int? get resetToken_GT;
  double? get resetToken_AVERAGE_GT;
  int? get resetToken_LONGEST_GT;
  int? get resetToken_SHORTEST_GT;
  int? get resetToken_GTE;
  double? get resetToken_AVERAGE_GTE;
  int? get resetToken_LONGEST_GTE;
  int? get resetToken_SHORTEST_GTE;
  int? get resetToken_LT;
  double? get resetToken_AVERAGE_LT;
  int? get resetToken_LONGEST_LT;
  int? get resetToken_SHORTEST_LT;
  int? get resetToken_LTE;
  double? get resetToken_AVERAGE_LTE;
  int? get resetToken_LONGEST_LTE;
  int? get resetToken_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  GDateTime? get resetTokenExpiry_EQUAL;
  GDateTime? get resetTokenExpiry_MIN_EQUAL;
  GDateTime? get resetTokenExpiry_MAX_EQUAL;
  GDateTime? get resetTokenExpiry_GT;
  GDateTime? get resetTokenExpiry_MIN_GT;
  GDateTime? get resetTokenExpiry_MAX_GT;
  GDateTime? get resetTokenExpiry_GTE;
  GDateTime? get resetTokenExpiry_MIN_GTE;
  GDateTime? get resetTokenExpiry_MAX_GTE;
  GDateTime? get resetTokenExpiry_LT;
  GDateTime? get resetTokenExpiry_MIN_LT;
  GDateTime? get resetTokenExpiry_MAX_LT;
  GDateTime? get resetTokenExpiry_LTE;
  GDateTime? get resetTokenExpiry_MIN_LTE;
  GDateTime? get resetTokenExpiry_MAX_LTE;
  static Serializer<GPostLikesNodeAggregationWhereInput> get serializer =>
      _$gPostLikesNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostLikesNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GPostLikesNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GPostLikesNodeAggregationWhereInput.serializer, json);
}

abstract class GPostLikesUpdateConnectionInput
    implements
        Built<GPostLikesUpdateConnectionInput,
            GPostLikesUpdateConnectionInputBuilder> {
  GPostLikesUpdateConnectionInput._();

  factory GPostLikesUpdateConnectionInput(
          [Function(GPostLikesUpdateConnectionInputBuilder b) updates]) =
      _$GPostLikesUpdateConnectionInput;

  GUserUpdateInput? get node;
  static Serializer<GPostLikesUpdateConnectionInput> get serializer =>
      _$gPostLikesUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GPostLikesUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GPostLikesUpdateConnectionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesUpdateConnectionInput.serializer, json);
}

abstract class GPostLikesUpdateFieldInput
    implements
        Built<GPostLikesUpdateFieldInput, GPostLikesUpdateFieldInputBuilder> {
  GPostLikesUpdateFieldInput._();

  factory GPostLikesUpdateFieldInput(
          [Function(GPostLikesUpdateFieldInputBuilder b) updates]) =
      _$GPostLikesUpdateFieldInput;

  GPostLikesConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GPostLikesUpdateConnectionInput? get Gupdate;
  BuiltList<GPostLikesConnectFieldInput>? get connect;
  BuiltList<GPostLikesDisconnectFieldInput>? get disconnect;
  BuiltList<GPostLikesCreateFieldInput>? get create;
  BuiltList<GPostLikesDeleteFieldInput>? get delete;
  BuiltList<GPostLikesConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GPostLikesUpdateFieldInput> get serializer =>
      _$gPostLikesUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPostLikesUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GPostLikesUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPostLikesUpdateFieldInput.serializer, json);
}

abstract class GPostOptions
    implements Built<GPostOptions, GPostOptionsBuilder> {
  GPostOptions._();

  factory GPostOptions([Function(GPostOptionsBuilder b) updates]) =
      _$GPostOptions;

  BuiltList<GPostSort>? get sort;
  int? get limit;
  int? get offset;
  static Serializer<GPostOptions> get serializer => _$gPostOptionsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostOptions.serializer, this)
          as Map<String, dynamic>);
  static GPostOptions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostOptions.serializer, json);
}

abstract class GPostRelationInput
    implements Built<GPostRelationInput, GPostRelationInputBuilder> {
  GPostRelationInput._();

  factory GPostRelationInput([Function(GPostRelationInputBuilder b) updates]) =
      _$GPostRelationInput;

  GPostCreatorCreateFieldInput? get creator;
  BuiltList<GPostLikesCreateFieldInput>? get likes;
  BuiltList<GPostCommentsCreateFieldInput>? get comments;
  static Serializer<GPostRelationInput> get serializer =>
      _$gPostRelationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostRelationInput.serializer, this)
          as Map<String, dynamic>);
  static GPostRelationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostRelationInput.serializer, json);
}

abstract class GPostSort implements Built<GPostSort, GPostSortBuilder> {
  GPostSort._();

  factory GPostSort([Function(GPostSortBuilder b) updates]) = _$GPostSort;

  GSortDirection? get id;
  GSortDirection? get music;
  GSortDirection? get description;
  GSortDirection? get createdAt;
  GSortDirection? get updatedAt;
  static Serializer<GPostSort> get serializer => _$gPostSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostSort.serializer, this)
          as Map<String, dynamic>);
  static GPostSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostSort.serializer, json);
}

abstract class GPostUniqueWhere
    implements Built<GPostUniqueWhere, GPostUniqueWhereBuilder> {
  GPostUniqueWhere._();

  factory GPostUniqueWhere([Function(GPostUniqueWhereBuilder b) updates]) =
      _$GPostUniqueWhere;

  String? get id;
  static Serializer<GPostUniqueWhere> get serializer =>
      _$gPostUniqueWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostUniqueWhere.serializer, this)
          as Map<String, dynamic>);
  static GPostUniqueWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostUniqueWhere.serializer, json);
}

abstract class GPostUpdateInput
    implements Built<GPostUpdateInput, GPostUpdateInputBuilder> {
  GPostUpdateInput._();

  factory GPostUpdateInput([Function(GPostUpdateInputBuilder b) updates]) =
      _$GPostUpdateInput;

  String? get music;
  String? get description;
  GPostCreatorUpdateFieldInput? get creator;
  BuiltList<GPostLikesUpdateFieldInput>? get likes;
  BuiltList<GPostCommentsUpdateFieldInput>? get comments;
  static Serializer<GPostUpdateInput> get serializer =>
      _$gPostUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GPostUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostUpdateInput.serializer, json);
}

abstract class GPostWhere implements Built<GPostWhere, GPostWhereBuilder> {
  GPostWhere._();

  factory GPostWhere([Function(GPostWhereBuilder b) updates]) = _$GPostWhere;

  BuiltList<GPostWhere>? get OR;
  BuiltList<GPostWhere>? get AND;
  String? get id;
  String? get id_NOT;
  BuiltList<String>? get id_IN;
  BuiltList<String>? get id_NOT_IN;
  String? get id_CONTAINS;
  String? get id_NOT_CONTAINS;
  String? get id_STARTS_WITH;
  String? get id_NOT_STARTS_WITH;
  String? get id_ENDS_WITH;
  String? get id_NOT_ENDS_WITH;
  String? get music;
  String? get music_NOT;
  BuiltList<String>? get music_IN;
  BuiltList<String>? get music_NOT_IN;
  String? get music_CONTAINS;
  String? get music_NOT_CONTAINS;
  String? get music_STARTS_WITH;
  String? get music_NOT_STARTS_WITH;
  String? get music_ENDS_WITH;
  String? get music_NOT_ENDS_WITH;
  String? get description;
  String? get description_NOT;
  BuiltList<String>? get description_IN;
  BuiltList<String>? get description_NOT_IN;
  String? get description_CONTAINS;
  String? get description_NOT_CONTAINS;
  String? get description_STARTS_WITH;
  String? get description_NOT_STARTS_WITH;
  String? get description_ENDS_WITH;
  String? get description_NOT_ENDS_WITH;
  GDateTime? get createdAt;
  GDateTime? get createdAt_NOT;
  BuiltList<GDateTime>? get createdAt_IN;
  BuiltList<GDateTime>? get createdAt_NOT_IN;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get updatedAt;
  GDateTime? get updatedAt_NOT;
  BuiltList<GDateTime>? get updatedAt_IN;
  BuiltList<GDateTime>? get updatedAt_NOT_IN;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_GTE;
  GUserWhere? get creator;
  GUserWhere? get creator_NOT;
  GPostCreatorAggregateInput? get creatorAggregate;
  GUserWhere? get likes;
  GUserWhere? get likes_NOT;
  GPostLikesAggregateInput? get likesAggregate;
  GCommentWhere? get comments;
  GCommentWhere? get comments_NOT;
  GPostCommentsAggregateInput? get commentsAggregate;
  GPostCreatorConnectionWhere? get creatorConnection;
  GPostCreatorConnectionWhere? get creatorConnection_NOT;
  GPostLikesConnectionWhere? get likesConnection;
  GPostLikesConnectionWhere? get likesConnection_NOT;
  GPostCommentsConnectionWhere? get commentsConnection;
  GPostCommentsConnectionWhere? get commentsConnection_NOT;
  static Serializer<GPostWhere> get serializer => _$gPostWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPostWhere.serializer, this)
          as Map<String, dynamic>);
  static GPostWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPostWhere.serializer, json);
}

abstract class GStatusCreateInput
    implements Built<GStatusCreateInput, GStatusCreateInputBuilder> {
  GStatusCreateInput._();

  factory GStatusCreateInput([Function(GStatusCreateInputBuilder b) updates]) =
      _$GStatusCreateInput;

  GRequestStatus get Status;
  static Serializer<GStatusCreateInput> get serializer =>
      _$gStatusCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GStatusCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GStatusCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GStatusCreateInput.serializer, json);
}

abstract class GStatusSort implements Built<GStatusSort, GStatusSortBuilder> {
  GStatusSort._();

  factory GStatusSort([Function(GStatusSortBuilder b) updates]) = _$GStatusSort;

  GSortDirection? get Status;
  static Serializer<GStatusSort> get serializer => _$gStatusSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GStatusSort.serializer, this)
          as Map<String, dynamic>);
  static GStatusSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GStatusSort.serializer, json);
}

abstract class GStatusUpdateInput
    implements Built<GStatusUpdateInput, GStatusUpdateInputBuilder> {
  GStatusUpdateInput._();

  factory GStatusUpdateInput([Function(GStatusUpdateInputBuilder b) updates]) =
      _$GStatusUpdateInput;

  GRequestStatus? get Status;
  static Serializer<GStatusUpdateInput> get serializer =>
      _$gStatusUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GStatusUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GStatusUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GStatusUpdateInput.serializer, json);
}

abstract class GStatusWhere
    implements Built<GStatusWhere, GStatusWhereBuilder> {
  GStatusWhere._();

  factory GStatusWhere([Function(GStatusWhereBuilder b) updates]) =
      _$GStatusWhere;

  BuiltList<GStatusWhere>? get OR;
  BuiltList<GStatusWhere>? get AND;
  GRequestStatus? get Status;
  GRequestStatus? get Status_NOT;
  BuiltList<GRequestStatus>? get Status_IN;
  BuiltList<GRequestStatus>? get Status_NOT_IN;
  static Serializer<GStatusWhere> get serializer => _$gStatusWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GStatusWhere.serializer, this)
          as Map<String, dynamic>);
  static GStatusWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GStatusWhere.serializer, json);
}

abstract class GUserCommentLikesAggregateInput
    implements
        Built<GUserCommentLikesAggregateInput,
            GUserCommentLikesAggregateInputBuilder> {
  GUserCommentLikesAggregateInput._();

  factory GUserCommentLikesAggregateInput(
          [Function(GUserCommentLikesAggregateInputBuilder b) updates]) =
      _$GUserCommentLikesAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GUserCommentLikesAggregateInput>? get AND;
  BuiltList<GUserCommentLikesAggregateInput>? get OR;
  GUserCommentLikesNodeAggregationWhereInput? get node;
  static Serializer<GUserCommentLikesAggregateInput> get serializer =>
      _$gUserCommentLikesAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesAggregateInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesAggregateInput.serializer, json);
}

abstract class GUserCommentLikesConnectFieldInput
    implements
        Built<GUserCommentLikesConnectFieldInput,
            GUserCommentLikesConnectFieldInputBuilder> {
  GUserCommentLikesConnectFieldInput._();

  factory GUserCommentLikesConnectFieldInput(
          [Function(GUserCommentLikesConnectFieldInputBuilder b) updates]) =
      _$GUserCommentLikesConnectFieldInput;

  GCommentConnectWhere? get where;
  BuiltList<GCommentConnectInput>? get connect;
  static Serializer<GUserCommentLikesConnectFieldInput> get serializer =>
      _$gUserCommentLikesConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesConnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesConnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesConnectFieldInput.serializer, json);
}

abstract class GUserCommentLikesConnectionSort
    implements
        Built<GUserCommentLikesConnectionSort,
            GUserCommentLikesConnectionSortBuilder> {
  GUserCommentLikesConnectionSort._();

  factory GUserCommentLikesConnectionSort(
          [Function(GUserCommentLikesConnectionSortBuilder b) updates]) =
      _$GUserCommentLikesConnectionSort;

  GCommentSort? get node;
  static Serializer<GUserCommentLikesConnectionSort> get serializer =>
      _$gUserCommentLikesConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesConnectionSort.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesConnectionSort.serializer, json);
}

abstract class GUserCommentLikesConnectionWhere
    implements
        Built<GUserCommentLikesConnectionWhere,
            GUserCommentLikesConnectionWhereBuilder> {
  GUserCommentLikesConnectionWhere._();

  factory GUserCommentLikesConnectionWhere(
          [Function(GUserCommentLikesConnectionWhereBuilder b) updates]) =
      _$GUserCommentLikesConnectionWhere;

  BuiltList<GUserCommentLikesConnectionWhere>? get AND;
  BuiltList<GUserCommentLikesConnectionWhere>? get OR;
  GCommentWhere? get node;
  GCommentWhere? get node_NOT;
  static Serializer<GUserCommentLikesConnectionWhere> get serializer =>
      _$gUserCommentLikesConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesConnectionWhere.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesConnectionWhere? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesConnectionWhere.serializer, json);
}

abstract class GUserCommentLikesConnectOrCreateFieldInput
    implements
        Built<GUserCommentLikesConnectOrCreateFieldInput,
            GUserCommentLikesConnectOrCreateFieldInputBuilder> {
  GUserCommentLikesConnectOrCreateFieldInput._();

  factory GUserCommentLikesConnectOrCreateFieldInput(
      [Function(GUserCommentLikesConnectOrCreateFieldInputBuilder b)
          updates]) = _$GUserCommentLikesConnectOrCreateFieldInput;

  GCommentConnectOrCreateWhere get where;
  GUserCommentLikesConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GUserCommentLikesConnectOrCreateFieldInput>
      get serializer => _$gUserCommentLikesConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserCommentLikesConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserCommentLikesConnectOrCreateFieldInput.serializer, json);
}

abstract class GUserCommentLikesConnectOrCreateFieldInputOnCreate
    implements
        Built<GUserCommentLikesConnectOrCreateFieldInputOnCreate,
            GUserCommentLikesConnectOrCreateFieldInputOnCreateBuilder> {
  GUserCommentLikesConnectOrCreateFieldInputOnCreate._();

  factory GUserCommentLikesConnectOrCreateFieldInputOnCreate(
      [Function(GUserCommentLikesConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GUserCommentLikesConnectOrCreateFieldInputOnCreate;

  GCommentCreateInput get node;
  static Serializer<GUserCommentLikesConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gUserCommentLikesConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserCommentLikesConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserCommentLikesConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GUserCommentLikesCreateFieldInput
    implements
        Built<GUserCommentLikesCreateFieldInput,
            GUserCommentLikesCreateFieldInputBuilder> {
  GUserCommentLikesCreateFieldInput._();

  factory GUserCommentLikesCreateFieldInput(
          [Function(GUserCommentLikesCreateFieldInputBuilder b) updates]) =
      _$GUserCommentLikesCreateFieldInput;

  GCommentCreateInput get node;
  static Serializer<GUserCommentLikesCreateFieldInput> get serializer =>
      _$gUserCommentLikesCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesCreateFieldInput.serializer, json);
}

abstract class GUserCommentLikesDeleteFieldInput
    implements
        Built<GUserCommentLikesDeleteFieldInput,
            GUserCommentLikesDeleteFieldInputBuilder> {
  GUserCommentLikesDeleteFieldInput._();

  factory GUserCommentLikesDeleteFieldInput(
          [Function(GUserCommentLikesDeleteFieldInputBuilder b) updates]) =
      _$GUserCommentLikesDeleteFieldInput;

  GUserCommentLikesConnectionWhere? get where;
  GCommentDeleteInput? get delete;
  static Serializer<GUserCommentLikesDeleteFieldInput> get serializer =>
      _$gUserCommentLikesDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesDeleteFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesDeleteFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesDeleteFieldInput.serializer, json);
}

abstract class GUserCommentLikesDisconnectFieldInput
    implements
        Built<GUserCommentLikesDisconnectFieldInput,
            GUserCommentLikesDisconnectFieldInputBuilder> {
  GUserCommentLikesDisconnectFieldInput._();

  factory GUserCommentLikesDisconnectFieldInput(
          [Function(GUserCommentLikesDisconnectFieldInputBuilder b) updates]) =
      _$GUserCommentLikesDisconnectFieldInput;

  GUserCommentLikesConnectionWhere? get where;
  GCommentDisconnectInput? get disconnect;
  static Serializer<GUserCommentLikesDisconnectFieldInput> get serializer =>
      _$gUserCommentLikesDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserCommentLikesDisconnectFieldInput.serializer, json);
}

abstract class GUserCommentLikesFieldInput
    implements
        Built<GUserCommentLikesFieldInput, GUserCommentLikesFieldInputBuilder> {
  GUserCommentLikesFieldInput._();

  factory GUserCommentLikesFieldInput(
          [Function(GUserCommentLikesFieldInputBuilder b) updates]) =
      _$GUserCommentLikesFieldInput;

  BuiltList<GUserCommentLikesCreateFieldInput>? get create;
  BuiltList<GUserCommentLikesConnectFieldInput>? get connect;
  BuiltList<GUserCommentLikesConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserCommentLikesFieldInput> get serializer =>
      _$gUserCommentLikesFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserCommentLikesFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserCommentLikesFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesFieldInput.serializer, json);
}

abstract class GUserCommentLikesNodeAggregationWhereInput
    implements
        Built<GUserCommentLikesNodeAggregationWhereInput,
            GUserCommentLikesNodeAggregationWhereInputBuilder> {
  GUserCommentLikesNodeAggregationWhereInput._();

  factory GUserCommentLikesNodeAggregationWhereInput(
      [Function(GUserCommentLikesNodeAggregationWhereInputBuilder b)
          updates]) = _$GUserCommentLikesNodeAggregationWhereInput;

  BuiltList<GUserCommentLikesNodeAggregationWhereInput>? get AND;
  BuiltList<GUserCommentLikesNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get commentary_EQUAL;
  double? get commentary_AVERAGE_EQUAL;
  int? get commentary_LONGEST_EQUAL;
  int? get commentary_SHORTEST_EQUAL;
  int? get commentary_GT;
  double? get commentary_AVERAGE_GT;
  int? get commentary_LONGEST_GT;
  int? get commentary_SHORTEST_GT;
  int? get commentary_GTE;
  double? get commentary_AVERAGE_GTE;
  int? get commentary_LONGEST_GTE;
  int? get commentary_SHORTEST_GTE;
  int? get commentary_LT;
  double? get commentary_AVERAGE_LT;
  int? get commentary_LONGEST_LT;
  int? get commentary_SHORTEST_LT;
  int? get commentary_LTE;
  double? get commentary_AVERAGE_LTE;
  int? get commentary_LONGEST_LTE;
  int? get commentary_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  static Serializer<GUserCommentLikesNodeAggregationWhereInput>
      get serializer => _$gUserCommentLikesNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserCommentLikesNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserCommentLikesNodeAggregationWhereInput.serializer, json);
}

abstract class GUserCommentLikesUpdateConnectionInput
    implements
        Built<GUserCommentLikesUpdateConnectionInput,
            GUserCommentLikesUpdateConnectionInputBuilder> {
  GUserCommentLikesUpdateConnectionInput._();

  factory GUserCommentLikesUpdateConnectionInput(
          [Function(GUserCommentLikesUpdateConnectionInputBuilder b) updates]) =
      _$GUserCommentLikesUpdateConnectionInput;

  GCommentUpdateInput? get node;
  static Serializer<GUserCommentLikesUpdateConnectionInput> get serializer =>
      _$gUserCommentLikesUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserCommentLikesUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserCommentLikesUpdateConnectionInput.serializer, json);
}

abstract class GUserCommentLikesUpdateFieldInput
    implements
        Built<GUserCommentLikesUpdateFieldInput,
            GUserCommentLikesUpdateFieldInputBuilder> {
  GUserCommentLikesUpdateFieldInput._();

  factory GUserCommentLikesUpdateFieldInput(
          [Function(GUserCommentLikesUpdateFieldInputBuilder b) updates]) =
      _$GUserCommentLikesUpdateFieldInput;

  GUserCommentLikesConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GUserCommentLikesUpdateConnectionInput? get Gupdate;
  BuiltList<GUserCommentLikesConnectFieldInput>? get connect;
  BuiltList<GUserCommentLikesDisconnectFieldInput>? get disconnect;
  BuiltList<GUserCommentLikesCreateFieldInput>? get create;
  BuiltList<GUserCommentLikesDeleteFieldInput>? get delete;
  BuiltList<GUserCommentLikesConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserCommentLikesUpdateFieldInput> get serializer =>
      _$gUserCommentLikesUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserCommentLikesUpdateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserCommentLikesUpdateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserCommentLikesUpdateFieldInput.serializer, json);
}

abstract class GUserConnectInput
    implements Built<GUserConnectInput, GUserConnectInputBuilder> {
  GUserConnectInput._();

  factory GUserConnectInput([Function(GUserConnectInputBuilder b) updates]) =
      _$GUserConnectInput;

  BuiltList<GUserPostsConnectFieldInput>? get posts;
  BuiltList<GUserPostLikesConnectFieldInput>? get postLikes;
  BuiltList<GUserCommentLikesConnectFieldInput>? get commentLikes;
  BuiltList<GUserFriendsConnectFieldInput>? get friends;
  static Serializer<GUserConnectInput> get serializer =>
      _$gUserConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GUserConnectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserConnectInput.serializer, json);
}

abstract class GUserConnectOrCreateInput
    implements
        Built<GUserConnectOrCreateInput, GUserConnectOrCreateInputBuilder> {
  GUserConnectOrCreateInput._();

  factory GUserConnectOrCreateInput(
          [Function(GUserConnectOrCreateInputBuilder b) updates]) =
      _$GUserConnectOrCreateInput;

  BuiltList<GUserPostsConnectOrCreateFieldInput>? get posts;
  BuiltList<GUserPostLikesConnectOrCreateFieldInput>? get postLikes;
  BuiltList<GUserCommentLikesConnectOrCreateFieldInput>? get commentLikes;
  BuiltList<GUserFriendsConnectOrCreateFieldInput>? get friends;
  static Serializer<GUserConnectOrCreateInput> get serializer =>
      _$gUserConnectOrCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserConnectOrCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GUserConnectOrCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserConnectOrCreateInput.serializer, json);
}

abstract class GUserConnectOrCreateWhere
    implements
        Built<GUserConnectOrCreateWhere, GUserConnectOrCreateWhereBuilder> {
  GUserConnectOrCreateWhere._();

  factory GUserConnectOrCreateWhere(
          [Function(GUserConnectOrCreateWhereBuilder b) updates]) =
      _$GUserConnectOrCreateWhere;

  GUserUniqueWhere get node;
  static Serializer<GUserConnectOrCreateWhere> get serializer =>
      _$gUserConnectOrCreateWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserConnectOrCreateWhere.serializer, this)
          as Map<String, dynamic>);
  static GUserConnectOrCreateWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserConnectOrCreateWhere.serializer, json);
}

abstract class GUserConnectWhere
    implements Built<GUserConnectWhere, GUserConnectWhereBuilder> {
  GUserConnectWhere._();

  factory GUserConnectWhere([Function(GUserConnectWhereBuilder b) updates]) =
      _$GUserConnectWhere;

  GUserWhere get node;
  static Serializer<GUserConnectWhere> get serializer =>
      _$gUserConnectWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserConnectWhere.serializer, this)
          as Map<String, dynamic>);
  static GUserConnectWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserConnectWhere.serializer, json);
}

abstract class GUserCreateInput
    implements Built<GUserCreateInput, GUserCreateInputBuilder> {
  GUserCreateInput._();

  factory GUserCreateInput([Function(GUserCreateInputBuilder b) updates]) =
      _$GUserCreateInput;

  String get email;
  String get pseudo;
  String get firstName;
  String get lastName;
  String get password;
  String? get biography;
  String? get image;
  String? get resetToken;
  GDateTime? get resetTokenExpiry;
  GPointInput? get location;
  GUserPostsFieldInput? get posts;
  GUserPostLikesFieldInput? get postLikes;
  GUserCommentLikesFieldInput? get commentLikes;
  GUserFriendsFieldInput? get friends;
  static Serializer<GUserCreateInput> get serializer =>
      _$gUserCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GUserCreateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserCreateInput.serializer, json);
}

abstract class GUserDeleteInput
    implements Built<GUserDeleteInput, GUserDeleteInputBuilder> {
  GUserDeleteInput._();

  factory GUserDeleteInput([Function(GUserDeleteInputBuilder b) updates]) =
      _$GUserDeleteInput;

  BuiltList<GUserPostsDeleteFieldInput>? get posts;
  BuiltList<GUserPostLikesDeleteFieldInput>? get postLikes;
  BuiltList<GUserCommentLikesDeleteFieldInput>? get commentLikes;
  BuiltList<GUserFriendsDeleteFieldInput>? get friends;
  static Serializer<GUserDeleteInput> get serializer =>
      _$gUserDeleteInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserDeleteInput.serializer, this)
          as Map<String, dynamic>);
  static GUserDeleteInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserDeleteInput.serializer, json);
}

abstract class GUserDisconnectInput
    implements Built<GUserDisconnectInput, GUserDisconnectInputBuilder> {
  GUserDisconnectInput._();

  factory GUserDisconnectInput(
          [Function(GUserDisconnectInputBuilder b) updates]) =
      _$GUserDisconnectInput;

  BuiltList<GUserPostsDisconnectFieldInput>? get posts;
  BuiltList<GUserPostLikesDisconnectFieldInput>? get postLikes;
  BuiltList<GUserCommentLikesDisconnectFieldInput>? get commentLikes;
  BuiltList<GUserFriendsDisconnectFieldInput>? get friends;
  static Serializer<GUserDisconnectInput> get serializer =>
      _$gUserDisconnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserDisconnectInput.serializer, this)
          as Map<String, dynamic>);
  static GUserDisconnectInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserDisconnectInput.serializer, json);
}

abstract class GUserFriendsAggregateInput
    implements
        Built<GUserFriendsAggregateInput, GUserFriendsAggregateInputBuilder> {
  GUserFriendsAggregateInput._();

  factory GUserFriendsAggregateInput(
          [Function(GUserFriendsAggregateInputBuilder b) updates]) =
      _$GUserFriendsAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GUserFriendsAggregateInput>? get AND;
  BuiltList<GUserFriendsAggregateInput>? get OR;
  GUserFriendsNodeAggregationWhereInput? get node;
  static Serializer<GUserFriendsAggregateInput> get serializer =>
      _$gUserFriendsAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsAggregateInput.serializer, this) as Map<String, dynamic>);
  static GUserFriendsAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsAggregateInput.serializer, json);
}

abstract class GUserFriendsConnectFieldInput
    implements
        Built<GUserFriendsConnectFieldInput,
            GUserFriendsConnectFieldInputBuilder> {
  GUserFriendsConnectFieldInput._();

  factory GUserFriendsConnectFieldInput(
          [Function(GUserFriendsConnectFieldInputBuilder b) updates]) =
      _$GUserFriendsConnectFieldInput;

  GUserConnectWhere? get where;
  BuiltList<GUserConnectInput>? get connect;
  GStatusCreateInput get edge;
  static Serializer<GUserFriendsConnectFieldInput> get serializer =>
      _$gUserFriendsConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsConnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserFriendsConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsConnectFieldInput.serializer, json);
}

abstract class GUserFriendsConnectionSort
    implements
        Built<GUserFriendsConnectionSort, GUserFriendsConnectionSortBuilder> {
  GUserFriendsConnectionSort._();

  factory GUserFriendsConnectionSort(
          [Function(GUserFriendsConnectionSortBuilder b) updates]) =
      _$GUserFriendsConnectionSort;

  GStatusSort? get edge;
  GUserSort? get node;
  static Serializer<GUserFriendsConnectionSort> get serializer =>
      _$gUserFriendsConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsConnectionSort.serializer, this) as Map<String, dynamic>);
  static GUserFriendsConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsConnectionSort.serializer, json);
}

abstract class GUserFriendsConnectionWhere
    implements
        Built<GUserFriendsConnectionWhere, GUserFriendsConnectionWhereBuilder> {
  GUserFriendsConnectionWhere._();

  factory GUserFriendsConnectionWhere(
          [Function(GUserFriendsConnectionWhereBuilder b) updates]) =
      _$GUserFriendsConnectionWhere;

  BuiltList<GUserFriendsConnectionWhere>? get AND;
  BuiltList<GUserFriendsConnectionWhere>? get OR;
  GStatusWhere? get edge;
  GStatusWhere? get edge_NOT;
  GUserWhere? get node;
  GUserWhere? get node_NOT;
  static Serializer<GUserFriendsConnectionWhere> get serializer =>
      _$gUserFriendsConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsConnectionWhere.serializer, this) as Map<String, dynamic>);
  static GUserFriendsConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsConnectionWhere.serializer, json);
}

abstract class GUserFriendsConnectOrCreateFieldInput
    implements
        Built<GUserFriendsConnectOrCreateFieldInput,
            GUserFriendsConnectOrCreateFieldInputBuilder> {
  GUserFriendsConnectOrCreateFieldInput._();

  factory GUserFriendsConnectOrCreateFieldInput(
          [Function(GUserFriendsConnectOrCreateFieldInputBuilder b) updates]) =
      _$GUserFriendsConnectOrCreateFieldInput;

  GUserConnectOrCreateWhere get where;
  GUserFriendsConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GUserFriendsConnectOrCreateFieldInput> get serializer =>
      _$gUserFriendsConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserFriendsConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserFriendsConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserFriendsConnectOrCreateFieldInput.serializer, json);
}

abstract class GUserFriendsConnectOrCreateFieldInputOnCreate
    implements
        Built<GUserFriendsConnectOrCreateFieldInputOnCreate,
            GUserFriendsConnectOrCreateFieldInputOnCreateBuilder> {
  GUserFriendsConnectOrCreateFieldInputOnCreate._();

  factory GUserFriendsConnectOrCreateFieldInputOnCreate(
      [Function(GUserFriendsConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GUserFriendsConnectOrCreateFieldInputOnCreate;

  GUserCreateInput get node;
  GStatusCreateInput get edge;
  static Serializer<GUserFriendsConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gUserFriendsConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserFriendsConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GUserFriendsConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserFriendsConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GUserFriendsCreateFieldInput
    implements
        Built<GUserFriendsCreateFieldInput,
            GUserFriendsCreateFieldInputBuilder> {
  GUserFriendsCreateFieldInput._();

  factory GUserFriendsCreateFieldInput(
          [Function(GUserFriendsCreateFieldInputBuilder b) updates]) =
      _$GUserFriendsCreateFieldInput;

  GUserCreateInput get node;
  GStatusCreateInput get edge;
  static Serializer<GUserFriendsCreateFieldInput> get serializer =>
      _$gUserFriendsCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserFriendsCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsCreateFieldInput.serializer, json);
}

abstract class GUserFriendsDeleteFieldInput
    implements
        Built<GUserFriendsDeleteFieldInput,
            GUserFriendsDeleteFieldInputBuilder> {
  GUserFriendsDeleteFieldInput._();

  factory GUserFriendsDeleteFieldInput(
          [Function(GUserFriendsDeleteFieldInputBuilder b) updates]) =
      _$GUserFriendsDeleteFieldInput;

  GUserFriendsConnectionWhere? get where;
  GUserDeleteInput? get delete;
  static Serializer<GUserFriendsDeleteFieldInput> get serializer =>
      _$gUserFriendsDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserFriendsDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsDeleteFieldInput.serializer, json);
}

abstract class GUserFriendsDisconnectFieldInput
    implements
        Built<GUserFriendsDisconnectFieldInput,
            GUserFriendsDisconnectFieldInputBuilder> {
  GUserFriendsDisconnectFieldInput._();

  factory GUserFriendsDisconnectFieldInput(
          [Function(GUserFriendsDisconnectFieldInputBuilder b) updates]) =
      _$GUserFriendsDisconnectFieldInput;

  GUserFriendsConnectionWhere? get where;
  GUserDisconnectInput? get disconnect;
  static Serializer<GUserFriendsDisconnectFieldInput> get serializer =>
      _$gUserFriendsDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserFriendsDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserFriendsDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsDisconnectFieldInput.serializer, json);
}

abstract class GUserFriendsFieldInput
    implements Built<GUserFriendsFieldInput, GUserFriendsFieldInputBuilder> {
  GUserFriendsFieldInput._();

  factory GUserFriendsFieldInput(
          [Function(GUserFriendsFieldInputBuilder b) updates]) =
      _$GUserFriendsFieldInput;

  BuiltList<GUserFriendsCreateFieldInput>? get create;
  BuiltList<GUserFriendsConnectFieldInput>? get connect;
  BuiltList<GUserFriendsConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserFriendsFieldInput> get serializer =>
      _$gUserFriendsFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserFriendsFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GUserFriendsFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserFriendsFieldInput.serializer, json);
}

abstract class GUserFriendsNodeAggregationWhereInput
    implements
        Built<GUserFriendsNodeAggregationWhereInput,
            GUserFriendsNodeAggregationWhereInputBuilder> {
  GUserFriendsNodeAggregationWhereInput._();

  factory GUserFriendsNodeAggregationWhereInput(
          [Function(GUserFriendsNodeAggregationWhereInputBuilder b) updates]) =
      _$GUserFriendsNodeAggregationWhereInput;

  BuiltList<GUserFriendsNodeAggregationWhereInput>? get AND;
  BuiltList<GUserFriendsNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get email_EQUAL;
  double? get email_AVERAGE_EQUAL;
  int? get email_LONGEST_EQUAL;
  int? get email_SHORTEST_EQUAL;
  int? get email_GT;
  double? get email_AVERAGE_GT;
  int? get email_LONGEST_GT;
  int? get email_SHORTEST_GT;
  int? get email_GTE;
  double? get email_AVERAGE_GTE;
  int? get email_LONGEST_GTE;
  int? get email_SHORTEST_GTE;
  int? get email_LT;
  double? get email_AVERAGE_LT;
  int? get email_LONGEST_LT;
  int? get email_SHORTEST_LT;
  int? get email_LTE;
  double? get email_AVERAGE_LTE;
  int? get email_LONGEST_LTE;
  int? get email_SHORTEST_LTE;
  String? get pseudo_EQUAL;
  double? get pseudo_AVERAGE_EQUAL;
  int? get pseudo_LONGEST_EQUAL;
  int? get pseudo_SHORTEST_EQUAL;
  int? get pseudo_GT;
  double? get pseudo_AVERAGE_GT;
  int? get pseudo_LONGEST_GT;
  int? get pseudo_SHORTEST_GT;
  int? get pseudo_GTE;
  double? get pseudo_AVERAGE_GTE;
  int? get pseudo_LONGEST_GTE;
  int? get pseudo_SHORTEST_GTE;
  int? get pseudo_LT;
  double? get pseudo_AVERAGE_LT;
  int? get pseudo_LONGEST_LT;
  int? get pseudo_SHORTEST_LT;
  int? get pseudo_LTE;
  double? get pseudo_AVERAGE_LTE;
  int? get pseudo_LONGEST_LTE;
  int? get pseudo_SHORTEST_LTE;
  String? get firstName_EQUAL;
  double? get firstName_AVERAGE_EQUAL;
  int? get firstName_LONGEST_EQUAL;
  int? get firstName_SHORTEST_EQUAL;
  int? get firstName_GT;
  double? get firstName_AVERAGE_GT;
  int? get firstName_LONGEST_GT;
  int? get firstName_SHORTEST_GT;
  int? get firstName_GTE;
  double? get firstName_AVERAGE_GTE;
  int? get firstName_LONGEST_GTE;
  int? get firstName_SHORTEST_GTE;
  int? get firstName_LT;
  double? get firstName_AVERAGE_LT;
  int? get firstName_LONGEST_LT;
  int? get firstName_SHORTEST_LT;
  int? get firstName_LTE;
  double? get firstName_AVERAGE_LTE;
  int? get firstName_LONGEST_LTE;
  int? get firstName_SHORTEST_LTE;
  String? get lastName_EQUAL;
  double? get lastName_AVERAGE_EQUAL;
  int? get lastName_LONGEST_EQUAL;
  int? get lastName_SHORTEST_EQUAL;
  int? get lastName_GT;
  double? get lastName_AVERAGE_GT;
  int? get lastName_LONGEST_GT;
  int? get lastName_SHORTEST_GT;
  int? get lastName_GTE;
  double? get lastName_AVERAGE_GTE;
  int? get lastName_LONGEST_GTE;
  int? get lastName_SHORTEST_GTE;
  int? get lastName_LT;
  double? get lastName_AVERAGE_LT;
  int? get lastName_LONGEST_LT;
  int? get lastName_SHORTEST_LT;
  int? get lastName_LTE;
  double? get lastName_AVERAGE_LTE;
  int? get lastName_LONGEST_LTE;
  int? get lastName_SHORTEST_LTE;
  String? get password_EQUAL;
  double? get password_AVERAGE_EQUAL;
  int? get password_LONGEST_EQUAL;
  int? get password_SHORTEST_EQUAL;
  int? get password_GT;
  double? get password_AVERAGE_GT;
  int? get password_LONGEST_GT;
  int? get password_SHORTEST_GT;
  int? get password_GTE;
  double? get password_AVERAGE_GTE;
  int? get password_LONGEST_GTE;
  int? get password_SHORTEST_GTE;
  int? get password_LT;
  double? get password_AVERAGE_LT;
  int? get password_LONGEST_LT;
  int? get password_SHORTEST_LT;
  int? get password_LTE;
  double? get password_AVERAGE_LTE;
  int? get password_LONGEST_LTE;
  int? get password_SHORTEST_LTE;
  String? get biography_EQUAL;
  double? get biography_AVERAGE_EQUAL;
  int? get biography_LONGEST_EQUAL;
  int? get biography_SHORTEST_EQUAL;
  int? get biography_GT;
  double? get biography_AVERAGE_GT;
  int? get biography_LONGEST_GT;
  int? get biography_SHORTEST_GT;
  int? get biography_GTE;
  double? get biography_AVERAGE_GTE;
  int? get biography_LONGEST_GTE;
  int? get biography_SHORTEST_GTE;
  int? get biography_LT;
  double? get biography_AVERAGE_LT;
  int? get biography_LONGEST_LT;
  int? get biography_SHORTEST_LT;
  int? get biography_LTE;
  double? get biography_AVERAGE_LTE;
  int? get biography_LONGEST_LTE;
  int? get biography_SHORTEST_LTE;
  String? get image_EQUAL;
  double? get image_AVERAGE_EQUAL;
  int? get image_LONGEST_EQUAL;
  int? get image_SHORTEST_EQUAL;
  int? get image_GT;
  double? get image_AVERAGE_GT;
  int? get image_LONGEST_GT;
  int? get image_SHORTEST_GT;
  int? get image_GTE;
  double? get image_AVERAGE_GTE;
  int? get image_LONGEST_GTE;
  int? get image_SHORTEST_GTE;
  int? get image_LT;
  double? get image_AVERAGE_LT;
  int? get image_LONGEST_LT;
  int? get image_SHORTEST_LT;
  int? get image_LTE;
  double? get image_AVERAGE_LTE;
  int? get image_LONGEST_LTE;
  int? get image_SHORTEST_LTE;
  String? get resetToken_EQUAL;
  double? get resetToken_AVERAGE_EQUAL;
  int? get resetToken_LONGEST_EQUAL;
  int? get resetToken_SHORTEST_EQUAL;
  int? get resetToken_GT;
  double? get resetToken_AVERAGE_GT;
  int? get resetToken_LONGEST_GT;
  int? get resetToken_SHORTEST_GT;
  int? get resetToken_GTE;
  double? get resetToken_AVERAGE_GTE;
  int? get resetToken_LONGEST_GTE;
  int? get resetToken_SHORTEST_GTE;
  int? get resetToken_LT;
  double? get resetToken_AVERAGE_LT;
  int? get resetToken_LONGEST_LT;
  int? get resetToken_SHORTEST_LT;
  int? get resetToken_LTE;
  double? get resetToken_AVERAGE_LTE;
  int? get resetToken_LONGEST_LTE;
  int? get resetToken_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  GDateTime? get resetTokenExpiry_EQUAL;
  GDateTime? get resetTokenExpiry_MIN_EQUAL;
  GDateTime? get resetTokenExpiry_MAX_EQUAL;
  GDateTime? get resetTokenExpiry_GT;
  GDateTime? get resetTokenExpiry_MIN_GT;
  GDateTime? get resetTokenExpiry_MAX_GT;
  GDateTime? get resetTokenExpiry_GTE;
  GDateTime? get resetTokenExpiry_MIN_GTE;
  GDateTime? get resetTokenExpiry_MAX_GTE;
  GDateTime? get resetTokenExpiry_LT;
  GDateTime? get resetTokenExpiry_MIN_LT;
  GDateTime? get resetTokenExpiry_MAX_LT;
  GDateTime? get resetTokenExpiry_LTE;
  GDateTime? get resetTokenExpiry_MIN_LTE;
  GDateTime? get resetTokenExpiry_MAX_LTE;
  static Serializer<GUserFriendsNodeAggregationWhereInput> get serializer =>
      _$gUserFriendsNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserFriendsNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GUserFriendsNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserFriendsNodeAggregationWhereInput.serializer, json);
}

abstract class GUserFriendsUpdateConnectionInput
    implements
        Built<GUserFriendsUpdateConnectionInput,
            GUserFriendsUpdateConnectionInputBuilder> {
  GUserFriendsUpdateConnectionInput._();

  factory GUserFriendsUpdateConnectionInput(
          [Function(GUserFriendsUpdateConnectionInputBuilder b) updates]) =
      _$GUserFriendsUpdateConnectionInput;

  GUserUpdateInput? get node;
  GStatusUpdateInput? get edge;
  static Serializer<GUserFriendsUpdateConnectionInput> get serializer =>
      _$gUserFriendsUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserFriendsUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GUserFriendsUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsUpdateConnectionInput.serializer, json);
}

abstract class GUserFriendsUpdateFieldInput
    implements
        Built<GUserFriendsUpdateFieldInput,
            GUserFriendsUpdateFieldInputBuilder> {
  GUserFriendsUpdateFieldInput._();

  factory GUserFriendsUpdateFieldInput(
          [Function(GUserFriendsUpdateFieldInputBuilder b) updates]) =
      _$GUserFriendsUpdateFieldInput;

  GUserFriendsConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GUserFriendsUpdateConnectionInput? get Gupdate;
  BuiltList<GUserFriendsConnectFieldInput>? get connect;
  BuiltList<GUserFriendsDisconnectFieldInput>? get disconnect;
  BuiltList<GUserFriendsCreateFieldInput>? get create;
  BuiltList<GUserFriendsDeleteFieldInput>? get delete;
  BuiltList<GUserFriendsConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserFriendsUpdateFieldInput> get serializer =>
      _$gUserFriendsUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserFriendsUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserFriendsUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserFriendsUpdateFieldInput.serializer, json);
}

abstract class GUserOptions
    implements Built<GUserOptions, GUserOptionsBuilder> {
  GUserOptions._();

  factory GUserOptions([Function(GUserOptionsBuilder b) updates]) =
      _$GUserOptions;

  BuiltList<GUserSort>? get sort;
  int? get limit;
  int? get offset;
  static Serializer<GUserOptions> get serializer => _$gUserOptionsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserOptions.serializer, this)
          as Map<String, dynamic>);
  static GUserOptions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserOptions.serializer, json);
}

abstract class GUserPostLikesAggregateInput
    implements
        Built<GUserPostLikesAggregateInput,
            GUserPostLikesAggregateInputBuilder> {
  GUserPostLikesAggregateInput._();

  factory GUserPostLikesAggregateInput(
          [Function(GUserPostLikesAggregateInputBuilder b) updates]) =
      _$GUserPostLikesAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GUserPostLikesAggregateInput>? get AND;
  BuiltList<GUserPostLikesAggregateInput>? get OR;
  GUserPostLikesNodeAggregationWhereInput? get node;
  static Serializer<GUserPostLikesAggregateInput> get serializer =>
      _$gUserPostLikesAggregateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostLikesAggregateInput.serializer, this) as Map<String, dynamic>);
  static GUserPostLikesAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesAggregateInput.serializer, json);
}

abstract class GUserPostLikesConnectFieldInput
    implements
        Built<GUserPostLikesConnectFieldInput,
            GUserPostLikesConnectFieldInputBuilder> {
  GUserPostLikesConnectFieldInput._();

  factory GUserPostLikesConnectFieldInput(
          [Function(GUserPostLikesConnectFieldInputBuilder b) updates]) =
      _$GUserPostLikesConnectFieldInput;

  GPostConnectWhere? get where;
  BuiltList<GPostConnectInput>? get connect;
  static Serializer<GUserPostLikesConnectFieldInput> get serializer =>
      _$gUserPostLikesConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserPostLikesConnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostLikesConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesConnectFieldInput.serializer, json);
}

abstract class GUserPostLikesConnectionSort
    implements
        Built<GUserPostLikesConnectionSort,
            GUserPostLikesConnectionSortBuilder> {
  GUserPostLikesConnectionSort._();

  factory GUserPostLikesConnectionSort(
          [Function(GUserPostLikesConnectionSortBuilder b) updates]) =
      _$GUserPostLikesConnectionSort;

  GPostSort? get node;
  static Serializer<GUserPostLikesConnectionSort> get serializer =>
      _$gUserPostLikesConnectionSortSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostLikesConnectionSort.serializer, this) as Map<String, dynamic>);
  static GUserPostLikesConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesConnectionSort.serializer, json);
}

abstract class GUserPostLikesConnectionWhere
    implements
        Built<GUserPostLikesConnectionWhere,
            GUserPostLikesConnectionWhereBuilder> {
  GUserPostLikesConnectionWhere._();

  factory GUserPostLikesConnectionWhere(
          [Function(GUserPostLikesConnectionWhereBuilder b) updates]) =
      _$GUserPostLikesConnectionWhere;

  BuiltList<GUserPostLikesConnectionWhere>? get AND;
  BuiltList<GUserPostLikesConnectionWhere>? get OR;
  GPostWhere? get node;
  GPostWhere? get node_NOT;
  static Serializer<GUserPostLikesConnectionWhere> get serializer =>
      _$gUserPostLikesConnectionWhereSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostLikesConnectionWhere.serializer, this) as Map<String, dynamic>);
  static GUserPostLikesConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesConnectionWhere.serializer, json);
}

abstract class GUserPostLikesConnectOrCreateFieldInput
    implements
        Built<GUserPostLikesConnectOrCreateFieldInput,
            GUserPostLikesConnectOrCreateFieldInputBuilder> {
  GUserPostLikesConnectOrCreateFieldInput._();

  factory GUserPostLikesConnectOrCreateFieldInput(
      [Function(GUserPostLikesConnectOrCreateFieldInputBuilder b)
          updates]) = _$GUserPostLikesConnectOrCreateFieldInput;

  GPostConnectOrCreateWhere get where;
  GUserPostLikesConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GUserPostLikesConnectOrCreateFieldInput> get serializer =>
      _$gUserPostLikesConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserPostLikesConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostLikesConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostLikesConnectOrCreateFieldInput.serializer, json);
}

abstract class GUserPostLikesConnectOrCreateFieldInputOnCreate
    implements
        Built<GUserPostLikesConnectOrCreateFieldInputOnCreate,
            GUserPostLikesConnectOrCreateFieldInputOnCreateBuilder> {
  GUserPostLikesConnectOrCreateFieldInputOnCreate._();

  factory GUserPostLikesConnectOrCreateFieldInputOnCreate(
      [Function(GUserPostLikesConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GUserPostLikesConnectOrCreateFieldInputOnCreate;

  GPostCreateInput get node;
  static Serializer<GUserPostLikesConnectOrCreateFieldInputOnCreate>
      get serializer =>
          _$gUserPostLikesConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserPostLikesConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GUserPostLikesConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostLikesConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GUserPostLikesCreateFieldInput
    implements
        Built<GUserPostLikesCreateFieldInput,
            GUserPostLikesCreateFieldInputBuilder> {
  GUserPostLikesCreateFieldInput._();

  factory GUserPostLikesCreateFieldInput(
          [Function(GUserPostLikesCreateFieldInputBuilder b) updates]) =
      _$GUserPostLikesCreateFieldInput;

  GPostCreateInput get node;
  static Serializer<GUserPostLikesCreateFieldInput> get serializer =>
      _$gUserPostLikesCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostLikesCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostLikesCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesCreateFieldInput.serializer, json);
}

abstract class GUserPostLikesDeleteFieldInput
    implements
        Built<GUserPostLikesDeleteFieldInput,
            GUserPostLikesDeleteFieldInputBuilder> {
  GUserPostLikesDeleteFieldInput._();

  factory GUserPostLikesDeleteFieldInput(
          [Function(GUserPostLikesDeleteFieldInputBuilder b) updates]) =
      _$GUserPostLikesDeleteFieldInput;

  GUserPostLikesConnectionWhere? get where;
  GPostDeleteInput? get delete;
  static Serializer<GUserPostLikesDeleteFieldInput> get serializer =>
      _$gUserPostLikesDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostLikesDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostLikesDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesDeleteFieldInput.serializer, json);
}

abstract class GUserPostLikesDisconnectFieldInput
    implements
        Built<GUserPostLikesDisconnectFieldInput,
            GUserPostLikesDisconnectFieldInputBuilder> {
  GUserPostLikesDisconnectFieldInput._();

  factory GUserPostLikesDisconnectFieldInput(
          [Function(GUserPostLikesDisconnectFieldInputBuilder b) updates]) =
      _$GUserPostLikesDisconnectFieldInput;

  GUserPostLikesConnectionWhere? get where;
  GPostDisconnectInput? get disconnect;
  static Serializer<GUserPostLikesDisconnectFieldInput> get serializer =>
      _$gUserPostLikesDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserPostLikesDisconnectFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostLikesDisconnectFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesDisconnectFieldInput.serializer, json);
}

abstract class GUserPostLikesFieldInput
    implements
        Built<GUserPostLikesFieldInput, GUserPostLikesFieldInputBuilder> {
  GUserPostLikesFieldInput._();

  factory GUserPostLikesFieldInput(
          [Function(GUserPostLikesFieldInputBuilder b) updates]) =
      _$GUserPostLikesFieldInput;

  BuiltList<GUserPostLikesCreateFieldInput>? get create;
  BuiltList<GUserPostLikesConnectFieldInput>? get connect;
  BuiltList<GUserPostLikesConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserPostLikesFieldInput> get serializer =>
      _$gUserPostLikesFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserPostLikesFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GUserPostLikesFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesFieldInput.serializer, json);
}

abstract class GUserPostLikesNodeAggregationWhereInput
    implements
        Built<GUserPostLikesNodeAggregationWhereInput,
            GUserPostLikesNodeAggregationWhereInputBuilder> {
  GUserPostLikesNodeAggregationWhereInput._();

  factory GUserPostLikesNodeAggregationWhereInput(
      [Function(GUserPostLikesNodeAggregationWhereInputBuilder b)
          updates]) = _$GUserPostLikesNodeAggregationWhereInput;

  BuiltList<GUserPostLikesNodeAggregationWhereInput>? get AND;
  BuiltList<GUserPostLikesNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get music_EQUAL;
  double? get music_AVERAGE_EQUAL;
  int? get music_LONGEST_EQUAL;
  int? get music_SHORTEST_EQUAL;
  int? get music_GT;
  double? get music_AVERAGE_GT;
  int? get music_LONGEST_GT;
  int? get music_SHORTEST_GT;
  int? get music_GTE;
  double? get music_AVERAGE_GTE;
  int? get music_LONGEST_GTE;
  int? get music_SHORTEST_GTE;
  int? get music_LT;
  double? get music_AVERAGE_LT;
  int? get music_LONGEST_LT;
  int? get music_SHORTEST_LT;
  int? get music_LTE;
  double? get music_AVERAGE_LTE;
  int? get music_LONGEST_LTE;
  int? get music_SHORTEST_LTE;
  String? get description_EQUAL;
  double? get description_AVERAGE_EQUAL;
  int? get description_LONGEST_EQUAL;
  int? get description_SHORTEST_EQUAL;
  int? get description_GT;
  double? get description_AVERAGE_GT;
  int? get description_LONGEST_GT;
  int? get description_SHORTEST_GT;
  int? get description_GTE;
  double? get description_AVERAGE_GTE;
  int? get description_LONGEST_GTE;
  int? get description_SHORTEST_GTE;
  int? get description_LT;
  double? get description_AVERAGE_LT;
  int? get description_LONGEST_LT;
  int? get description_SHORTEST_LT;
  int? get description_LTE;
  double? get description_AVERAGE_LTE;
  int? get description_LONGEST_LTE;
  int? get description_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  static Serializer<GUserPostLikesNodeAggregationWhereInput> get serializer =>
      _$gUserPostLikesNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserPostLikesNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostLikesNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostLikesNodeAggregationWhereInput.serializer, json);
}

abstract class GUserPostLikesUpdateConnectionInput
    implements
        Built<GUserPostLikesUpdateConnectionInput,
            GUserPostLikesUpdateConnectionInputBuilder> {
  GUserPostLikesUpdateConnectionInput._();

  factory GUserPostLikesUpdateConnectionInput(
          [Function(GUserPostLikesUpdateConnectionInputBuilder b) updates]) =
      _$GUserPostLikesUpdateConnectionInput;

  GPostUpdateInput? get node;
  static Serializer<GUserPostLikesUpdateConnectionInput> get serializer =>
      _$gUserPostLikesUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserPostLikesUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostLikesUpdateConnectionInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostLikesUpdateConnectionInput.serializer, json);
}

abstract class GUserPostLikesUpdateFieldInput
    implements
        Built<GUserPostLikesUpdateFieldInput,
            GUserPostLikesUpdateFieldInputBuilder> {
  GUserPostLikesUpdateFieldInput._();

  factory GUserPostLikesUpdateFieldInput(
          [Function(GUserPostLikesUpdateFieldInputBuilder b) updates]) =
      _$GUserPostLikesUpdateFieldInput;

  GUserPostLikesConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GUserPostLikesUpdateConnectionInput? get Gupdate;
  BuiltList<GUserPostLikesConnectFieldInput>? get connect;
  BuiltList<GUserPostLikesDisconnectFieldInput>? get disconnect;
  BuiltList<GUserPostLikesCreateFieldInput>? get create;
  BuiltList<GUserPostLikesDeleteFieldInput>? get delete;
  BuiltList<GUserPostLikesConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserPostLikesUpdateFieldInput> get serializer =>
      _$gUserPostLikesUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostLikesUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostLikesUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostLikesUpdateFieldInput.serializer, json);
}

abstract class GUserPostsAggregateInput
    implements
        Built<GUserPostsAggregateInput, GUserPostsAggregateInputBuilder> {
  GUserPostsAggregateInput._();

  factory GUserPostsAggregateInput(
          [Function(GUserPostsAggregateInputBuilder b) updates]) =
      _$GUserPostsAggregateInput;

  int? get count;
  int? get count_LT;
  int? get count_LTE;
  int? get count_GT;
  int? get count_GTE;
  BuiltList<GUserPostsAggregateInput>? get AND;
  BuiltList<GUserPostsAggregateInput>? get OR;
  GUserPostsNodeAggregationWhereInput? get node;
  static Serializer<GUserPostsAggregateInput> get serializer =>
      _$gUserPostsAggregateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserPostsAggregateInput.serializer, this)
          as Map<String, dynamic>);
  static GUserPostsAggregateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsAggregateInput.serializer, json);
}

abstract class GUserPostsConnectFieldInput
    implements
        Built<GUserPostsConnectFieldInput, GUserPostsConnectFieldInputBuilder> {
  GUserPostsConnectFieldInput._();

  factory GUserPostsConnectFieldInput(
          [Function(GUserPostsConnectFieldInputBuilder b) updates]) =
      _$GUserPostsConnectFieldInput;

  GPostConnectWhere? get where;
  BuiltList<GPostConnectInput>? get connect;
  static Serializer<GUserPostsConnectFieldInput> get serializer =>
      _$gUserPostsConnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostsConnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostsConnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsConnectFieldInput.serializer, json);
}

abstract class GUserPostsConnectionSort
    implements
        Built<GUserPostsConnectionSort, GUserPostsConnectionSortBuilder> {
  GUserPostsConnectionSort._();

  factory GUserPostsConnectionSort(
          [Function(GUserPostsConnectionSortBuilder b) updates]) =
      _$GUserPostsConnectionSort;

  GPostSort? get node;
  static Serializer<GUserPostsConnectionSort> get serializer =>
      _$gUserPostsConnectionSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserPostsConnectionSort.serializer, this)
          as Map<String, dynamic>);
  static GUserPostsConnectionSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsConnectionSort.serializer, json);
}

abstract class GUserPostsConnectionWhere
    implements
        Built<GUserPostsConnectionWhere, GUserPostsConnectionWhereBuilder> {
  GUserPostsConnectionWhere._();

  factory GUserPostsConnectionWhere(
          [Function(GUserPostsConnectionWhereBuilder b) updates]) =
      _$GUserPostsConnectionWhere;

  BuiltList<GUserPostsConnectionWhere>? get AND;
  BuiltList<GUserPostsConnectionWhere>? get OR;
  GPostWhere? get node;
  GPostWhere? get node_NOT;
  static Serializer<GUserPostsConnectionWhere> get serializer =>
      _$gUserPostsConnectionWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserPostsConnectionWhere.serializer, this)
          as Map<String, dynamic>);
  static GUserPostsConnectionWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsConnectionWhere.serializer, json);
}

abstract class GUserPostsConnectOrCreateFieldInput
    implements
        Built<GUserPostsConnectOrCreateFieldInput,
            GUserPostsConnectOrCreateFieldInputBuilder> {
  GUserPostsConnectOrCreateFieldInput._();

  factory GUserPostsConnectOrCreateFieldInput(
          [Function(GUserPostsConnectOrCreateFieldInputBuilder b) updates]) =
      _$GUserPostsConnectOrCreateFieldInput;

  GPostConnectOrCreateWhere get where;
  GUserPostsConnectOrCreateFieldInputOnCreate get onCreate;
  static Serializer<GUserPostsConnectOrCreateFieldInput> get serializer =>
      _$gUserPostsConnectOrCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserPostsConnectOrCreateFieldInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostsConnectOrCreateFieldInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostsConnectOrCreateFieldInput.serializer, json);
}

abstract class GUserPostsConnectOrCreateFieldInputOnCreate
    implements
        Built<GUserPostsConnectOrCreateFieldInputOnCreate,
            GUserPostsConnectOrCreateFieldInputOnCreateBuilder> {
  GUserPostsConnectOrCreateFieldInputOnCreate._();

  factory GUserPostsConnectOrCreateFieldInputOnCreate(
      [Function(GUserPostsConnectOrCreateFieldInputOnCreateBuilder b)
          updates]) = _$GUserPostsConnectOrCreateFieldInputOnCreate;

  GPostCreateInput get node;
  static Serializer<GUserPostsConnectOrCreateFieldInputOnCreate>
      get serializer => _$gUserPostsConnectOrCreateFieldInputOnCreateSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GUserPostsConnectOrCreateFieldInputOnCreate.serializer, this)
      as Map<String, dynamic>);
  static GUserPostsConnectOrCreateFieldInputOnCreate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostsConnectOrCreateFieldInputOnCreate.serializer, json);
}

abstract class GUserPostsCreateFieldInput
    implements
        Built<GUserPostsCreateFieldInput, GUserPostsCreateFieldInputBuilder> {
  GUserPostsCreateFieldInput._();

  factory GUserPostsCreateFieldInput(
          [Function(GUserPostsCreateFieldInputBuilder b) updates]) =
      _$GUserPostsCreateFieldInput;

  GPostCreateInput get node;
  static Serializer<GUserPostsCreateFieldInput> get serializer =>
      _$gUserPostsCreateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostsCreateFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostsCreateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsCreateFieldInput.serializer, json);
}

abstract class GUserPostsDeleteFieldInput
    implements
        Built<GUserPostsDeleteFieldInput, GUserPostsDeleteFieldInputBuilder> {
  GUserPostsDeleteFieldInput._();

  factory GUserPostsDeleteFieldInput(
          [Function(GUserPostsDeleteFieldInputBuilder b) updates]) =
      _$GUserPostsDeleteFieldInput;

  GUserPostsConnectionWhere? get where;
  GPostDeleteInput? get delete;
  static Serializer<GUserPostsDeleteFieldInput> get serializer =>
      _$gUserPostsDeleteFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostsDeleteFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostsDeleteFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsDeleteFieldInput.serializer, json);
}

abstract class GUserPostsDisconnectFieldInput
    implements
        Built<GUserPostsDisconnectFieldInput,
            GUserPostsDisconnectFieldInputBuilder> {
  GUserPostsDisconnectFieldInput._();

  factory GUserPostsDisconnectFieldInput(
          [Function(GUserPostsDisconnectFieldInputBuilder b) updates]) =
      _$GUserPostsDisconnectFieldInput;

  GUserPostsConnectionWhere? get where;
  GPostDisconnectInput? get disconnect;
  static Serializer<GUserPostsDisconnectFieldInput> get serializer =>
      _$gUserPostsDisconnectFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostsDisconnectFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostsDisconnectFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsDisconnectFieldInput.serializer, json);
}

abstract class GUserPostsFieldInput
    implements Built<GUserPostsFieldInput, GUserPostsFieldInputBuilder> {
  GUserPostsFieldInput._();

  factory GUserPostsFieldInput(
          [Function(GUserPostsFieldInputBuilder b) updates]) =
      _$GUserPostsFieldInput;

  BuiltList<GUserPostsCreateFieldInput>? get create;
  BuiltList<GUserPostsConnectFieldInput>? get connect;
  BuiltList<GUserPostsConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserPostsFieldInput> get serializer =>
      _$gUserPostsFieldInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserPostsFieldInput.serializer, this)
          as Map<String, dynamic>);
  static GUserPostsFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserPostsFieldInput.serializer, json);
}

abstract class GUserPostsNodeAggregationWhereInput
    implements
        Built<GUserPostsNodeAggregationWhereInput,
            GUserPostsNodeAggregationWhereInputBuilder> {
  GUserPostsNodeAggregationWhereInput._();

  factory GUserPostsNodeAggregationWhereInput(
          [Function(GUserPostsNodeAggregationWhereInputBuilder b) updates]) =
      _$GUserPostsNodeAggregationWhereInput;

  BuiltList<GUserPostsNodeAggregationWhereInput>? get AND;
  BuiltList<GUserPostsNodeAggregationWhereInput>? get OR;
  String? get id_EQUAL;
  String? get music_EQUAL;
  double? get music_AVERAGE_EQUAL;
  int? get music_LONGEST_EQUAL;
  int? get music_SHORTEST_EQUAL;
  int? get music_GT;
  double? get music_AVERAGE_GT;
  int? get music_LONGEST_GT;
  int? get music_SHORTEST_GT;
  int? get music_GTE;
  double? get music_AVERAGE_GTE;
  int? get music_LONGEST_GTE;
  int? get music_SHORTEST_GTE;
  int? get music_LT;
  double? get music_AVERAGE_LT;
  int? get music_LONGEST_LT;
  int? get music_SHORTEST_LT;
  int? get music_LTE;
  double? get music_AVERAGE_LTE;
  int? get music_LONGEST_LTE;
  int? get music_SHORTEST_LTE;
  String? get description_EQUAL;
  double? get description_AVERAGE_EQUAL;
  int? get description_LONGEST_EQUAL;
  int? get description_SHORTEST_EQUAL;
  int? get description_GT;
  double? get description_AVERAGE_GT;
  int? get description_LONGEST_GT;
  int? get description_SHORTEST_GT;
  int? get description_GTE;
  double? get description_AVERAGE_GTE;
  int? get description_LONGEST_GTE;
  int? get description_SHORTEST_GTE;
  int? get description_LT;
  double? get description_AVERAGE_LT;
  int? get description_LONGEST_LT;
  int? get description_SHORTEST_LT;
  int? get description_LTE;
  double? get description_AVERAGE_LTE;
  int? get description_LONGEST_LTE;
  int? get description_SHORTEST_LTE;
  GDateTime? get createdAt_EQUAL;
  GDateTime? get createdAt_MIN_EQUAL;
  GDateTime? get createdAt_MAX_EQUAL;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_MIN_GT;
  GDateTime? get createdAt_MAX_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get createdAt_MIN_GTE;
  GDateTime? get createdAt_MAX_GTE;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_MIN_LT;
  GDateTime? get createdAt_MAX_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_MIN_LTE;
  GDateTime? get createdAt_MAX_LTE;
  GDateTime? get updatedAt_EQUAL;
  GDateTime? get updatedAt_MIN_EQUAL;
  GDateTime? get updatedAt_MAX_EQUAL;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_MIN_GT;
  GDateTime? get updatedAt_MAX_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get updatedAt_MIN_GTE;
  GDateTime? get updatedAt_MAX_GTE;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_MIN_LT;
  GDateTime? get updatedAt_MAX_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_MIN_LTE;
  GDateTime? get updatedAt_MAX_LTE;
  static Serializer<GUserPostsNodeAggregationWhereInput> get serializer =>
      _$gUserPostsNodeAggregationWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserPostsNodeAggregationWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostsNodeAggregationWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GUserPostsNodeAggregationWhereInput.serializer, json);
}

abstract class GUserPostsUpdateConnectionInput
    implements
        Built<GUserPostsUpdateConnectionInput,
            GUserPostsUpdateConnectionInputBuilder> {
  GUserPostsUpdateConnectionInput._();

  factory GUserPostsUpdateConnectionInput(
          [Function(GUserPostsUpdateConnectionInputBuilder b) updates]) =
      _$GUserPostsUpdateConnectionInput;

  GPostUpdateInput? get node;
  static Serializer<GUserPostsUpdateConnectionInput> get serializer =>
      _$gUserPostsUpdateConnectionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GUserPostsUpdateConnectionInput.serializer, this)
      as Map<String, dynamic>);
  static GUserPostsUpdateConnectionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsUpdateConnectionInput.serializer, json);
}

abstract class GUserPostsUpdateFieldInput
    implements
        Built<GUserPostsUpdateFieldInput, GUserPostsUpdateFieldInputBuilder> {
  GUserPostsUpdateFieldInput._();

  factory GUserPostsUpdateFieldInput(
          [Function(GUserPostsUpdateFieldInputBuilder b) updates]) =
      _$GUserPostsUpdateFieldInput;

  GUserPostsConnectionWhere? get where;
  @BuiltValueField(wireName: 'update')
  GUserPostsUpdateConnectionInput? get Gupdate;
  BuiltList<GUserPostsConnectFieldInput>? get connect;
  BuiltList<GUserPostsDisconnectFieldInput>? get disconnect;
  BuiltList<GUserPostsCreateFieldInput>? get create;
  BuiltList<GUserPostsDeleteFieldInput>? get delete;
  BuiltList<GUserPostsConnectOrCreateFieldInput>? get connectOrCreate;
  static Serializer<GUserPostsUpdateFieldInput> get serializer =>
      _$gUserPostsUpdateFieldInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUserPostsUpdateFieldInput.serializer, this) as Map<String, dynamic>);
  static GUserPostsUpdateFieldInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUserPostsUpdateFieldInput.serializer, json);
}

abstract class GUserRelationInput
    implements Built<GUserRelationInput, GUserRelationInputBuilder> {
  GUserRelationInput._();

  factory GUserRelationInput([Function(GUserRelationInputBuilder b) updates]) =
      _$GUserRelationInput;

  BuiltList<GUserPostsCreateFieldInput>? get posts;
  BuiltList<GUserPostLikesCreateFieldInput>? get postLikes;
  BuiltList<GUserCommentLikesCreateFieldInput>? get commentLikes;
  BuiltList<GUserFriendsCreateFieldInput>? get friends;
  static Serializer<GUserRelationInput> get serializer =>
      _$gUserRelationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserRelationInput.serializer, this)
          as Map<String, dynamic>);
  static GUserRelationInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserRelationInput.serializer, json);
}

abstract class GUserSort implements Built<GUserSort, GUserSortBuilder> {
  GUserSort._();

  factory GUserSort([Function(GUserSortBuilder b) updates]) = _$GUserSort;

  GSortDirection? get id;
  GSortDirection? get email;
  GSortDirection? get pseudo;
  GSortDirection? get firstName;
  GSortDirection? get lastName;
  GSortDirection? get password;
  GSortDirection? get biography;
  GSortDirection? get image;
  GSortDirection? get resetToken;
  GSortDirection? get createdAt;
  GSortDirection? get updatedAt;
  GSortDirection? get resetTokenExpiry;
  GSortDirection? get location;
  static Serializer<GUserSort> get serializer => _$gUserSortSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserSort.serializer, this)
          as Map<String, dynamic>);
  static GUserSort? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserSort.serializer, json);
}

abstract class GUserUniqueWhere
    implements Built<GUserUniqueWhere, GUserUniqueWhereBuilder> {
  GUserUniqueWhere._();

  factory GUserUniqueWhere([Function(GUserUniqueWhereBuilder b) updates]) =
      _$GUserUniqueWhere;

  String? get id;
  String? get email;
  String? get pseudo;
  static Serializer<GUserUniqueWhere> get serializer =>
      _$gUserUniqueWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserUniqueWhere.serializer, this)
          as Map<String, dynamic>);
  static GUserUniqueWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserUniqueWhere.serializer, json);
}

abstract class GUserUpdateInput
    implements Built<GUserUpdateInput, GUserUpdateInputBuilder> {
  GUserUpdateInput._();

  factory GUserUpdateInput([Function(GUserUpdateInputBuilder b) updates]) =
      _$GUserUpdateInput;

  String? get email;
  String? get pseudo;
  String? get firstName;
  String? get lastName;
  String? get password;
  String? get biography;
  String? get image;
  String? get resetToken;
  GDateTime? get resetTokenExpiry;
  GPointInput? get location;
  BuiltList<GUserPostsUpdateFieldInput>? get posts;
  BuiltList<GUserPostLikesUpdateFieldInput>? get postLikes;
  BuiltList<GUserCommentLikesUpdateFieldInput>? get commentLikes;
  BuiltList<GUserFriendsUpdateFieldInput>? get friends;
  static Serializer<GUserUpdateInput> get serializer =>
      _$gUserUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GUserUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserUpdateInput.serializer, json);
}

abstract class GUserWhere implements Built<GUserWhere, GUserWhereBuilder> {
  GUserWhere._();

  factory GUserWhere([Function(GUserWhereBuilder b) updates]) = _$GUserWhere;

  BuiltList<GUserWhere>? get OR;
  BuiltList<GUserWhere>? get AND;
  String? get id;
  String? get id_NOT;
  BuiltList<String>? get id_IN;
  BuiltList<String>? get id_NOT_IN;
  String? get id_CONTAINS;
  String? get id_NOT_CONTAINS;
  String? get id_STARTS_WITH;
  String? get id_NOT_STARTS_WITH;
  String? get id_ENDS_WITH;
  String? get id_NOT_ENDS_WITH;
  String? get email;
  String? get email_NOT;
  BuiltList<String>? get email_IN;
  BuiltList<String>? get email_NOT_IN;
  String? get email_CONTAINS;
  String? get email_NOT_CONTAINS;
  String? get email_STARTS_WITH;
  String? get email_NOT_STARTS_WITH;
  String? get email_ENDS_WITH;
  String? get email_NOT_ENDS_WITH;
  String? get pseudo;
  String? get pseudo_NOT;
  BuiltList<String>? get pseudo_IN;
  BuiltList<String>? get pseudo_NOT_IN;
  String? get pseudo_CONTAINS;
  String? get pseudo_NOT_CONTAINS;
  String? get pseudo_STARTS_WITH;
  String? get pseudo_NOT_STARTS_WITH;
  String? get pseudo_ENDS_WITH;
  String? get pseudo_NOT_ENDS_WITH;
  String? get firstName;
  String? get firstName_NOT;
  BuiltList<String>? get firstName_IN;
  BuiltList<String>? get firstName_NOT_IN;
  String? get firstName_CONTAINS;
  String? get firstName_NOT_CONTAINS;
  String? get firstName_STARTS_WITH;
  String? get firstName_NOT_STARTS_WITH;
  String? get firstName_ENDS_WITH;
  String? get firstName_NOT_ENDS_WITH;
  String? get lastName;
  String? get lastName_NOT;
  BuiltList<String>? get lastName_IN;
  BuiltList<String>? get lastName_NOT_IN;
  String? get lastName_CONTAINS;
  String? get lastName_NOT_CONTAINS;
  String? get lastName_STARTS_WITH;
  String? get lastName_NOT_STARTS_WITH;
  String? get lastName_ENDS_WITH;
  String? get lastName_NOT_ENDS_WITH;
  String? get password;
  String? get password_NOT;
  BuiltList<String>? get password_IN;
  BuiltList<String>? get password_NOT_IN;
  String? get password_CONTAINS;
  String? get password_NOT_CONTAINS;
  String? get password_STARTS_WITH;
  String? get password_NOT_STARTS_WITH;
  String? get password_ENDS_WITH;
  String? get password_NOT_ENDS_WITH;
  String? get biography;
  String? get biography_NOT;
  BuiltList<String>? get biography_IN;
  BuiltList<String>? get biography_NOT_IN;
  String? get biography_CONTAINS;
  String? get biography_NOT_CONTAINS;
  String? get biography_STARTS_WITH;
  String? get biography_NOT_STARTS_WITH;
  String? get biography_ENDS_WITH;
  String? get biography_NOT_ENDS_WITH;
  String? get image;
  String? get image_NOT;
  BuiltList<String>? get image_IN;
  BuiltList<String>? get image_NOT_IN;
  String? get image_CONTAINS;
  String? get image_NOT_CONTAINS;
  String? get image_STARTS_WITH;
  String? get image_NOT_STARTS_WITH;
  String? get image_ENDS_WITH;
  String? get image_NOT_ENDS_WITH;
  String? get resetToken;
  String? get resetToken_NOT;
  BuiltList<String>? get resetToken_IN;
  BuiltList<String>? get resetToken_NOT_IN;
  String? get resetToken_CONTAINS;
  String? get resetToken_NOT_CONTAINS;
  String? get resetToken_STARTS_WITH;
  String? get resetToken_NOT_STARTS_WITH;
  String? get resetToken_ENDS_WITH;
  String? get resetToken_NOT_ENDS_WITH;
  GDateTime? get createdAt;
  GDateTime? get createdAt_NOT;
  BuiltList<GDateTime>? get createdAt_IN;
  BuiltList<GDateTime>? get createdAt_NOT_IN;
  GDateTime? get createdAt_LT;
  GDateTime? get createdAt_LTE;
  GDateTime? get createdAt_GT;
  GDateTime? get createdAt_GTE;
  GDateTime? get updatedAt;
  GDateTime? get updatedAt_NOT;
  BuiltList<GDateTime>? get updatedAt_IN;
  BuiltList<GDateTime>? get updatedAt_NOT_IN;
  GDateTime? get updatedAt_LT;
  GDateTime? get updatedAt_LTE;
  GDateTime? get updatedAt_GT;
  GDateTime? get updatedAt_GTE;
  GDateTime? get resetTokenExpiry;
  GDateTime? get resetTokenExpiry_NOT;
  BuiltList<GDateTime>? get resetTokenExpiry_IN;
  BuiltList<GDateTime>? get resetTokenExpiry_NOT_IN;
  GDateTime? get resetTokenExpiry_LT;
  GDateTime? get resetTokenExpiry_LTE;
  GDateTime? get resetTokenExpiry_GT;
  GDateTime? get resetTokenExpiry_GTE;
  GPointInput? get location;
  GPointInput? get location_NOT;
  BuiltList<GPointInput>? get location_IN;
  BuiltList<GPointInput>? get location_NOT_IN;
  GPointDistance? get location_DISTANCE;
  GPointDistance? get location_LT;
  GPointDistance? get location_LTE;
  GPointDistance? get location_GT;
  GPointDistance? get location_GTE;
  GPostWhere? get posts;
  GPostWhere? get posts_NOT;
  GUserPostsAggregateInput? get postsAggregate;
  GPostWhere? get postLikes;
  GPostWhere? get postLikes_NOT;
  GUserPostLikesAggregateInput? get postLikesAggregate;
  GCommentWhere? get commentLikes;
  GCommentWhere? get commentLikes_NOT;
  GUserCommentLikesAggregateInput? get commentLikesAggregate;
  GUserWhere? get friends;
  GUserWhere? get friends_NOT;
  GUserFriendsAggregateInput? get friendsAggregate;
  GUserPostsConnectionWhere? get postsConnection;
  GUserPostsConnectionWhere? get postsConnection_NOT;
  GUserPostLikesConnectionWhere? get postLikesConnection;
  GUserPostLikesConnectionWhere? get postLikesConnection_NOT;
  GUserCommentLikesConnectionWhere? get commentLikesConnection;
  GUserCommentLikesConnectionWhere? get commentLikesConnection_NOT;
  GUserFriendsConnectionWhere? get friendsConnection;
  GUserFriendsConnectionWhere? get friendsConnection_NOT;
  static Serializer<GUserWhere> get serializer => _$gUserWhereSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserWhere.serializer, this)
          as Map<String, dynamic>);
  static GUserWhere? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserWhere.serializer, json);
}

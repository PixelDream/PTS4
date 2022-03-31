// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_comments.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoadCommentsData> _$gLoadCommentsDataSerializer =
    new _$GLoadCommentsDataSerializer();
Serializer<GLoadCommentsData_comments> _$gLoadCommentsDataCommentsSerializer =
    new _$GLoadCommentsData_commentsSerializer();
Serializer<GLoadCommentsData_comments_creator>
    _$gLoadCommentsDataCommentsCreatorSerializer =
    new _$GLoadCommentsData_comments_creatorSerializer();

class _$GLoadCommentsDataSerializer
    implements StructuredSerializer<GLoadCommentsData> {
  @override
  final Iterable<Type> types = const [GLoadCommentsData, _$GLoadCommentsData];
  @override
  final String wireName = 'GLoadCommentsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoadCommentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GLoadCommentsData_comments)])),
    ];

    return result;
  }

  @override
  GLoadCommentsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoadCommentsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GLoadCommentsData_comments)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoadCommentsData_commentsSerializer
    implements StructuredSerializer<GLoadCommentsData_comments> {
  @override
  final Iterable<Type> types = const [
    GLoadCommentsData_comments,
    _$GLoadCommentsData_comments
  ];
  @override
  final String wireName = 'GLoadCommentsData_comments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoadCommentsData_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'commentary',
      serializers.serialize(object.commentary,
          specifiedType: const FullType(String)),
      'creator',
      serializers.serialize(object.creator,
          specifiedType: const FullType(GLoadCommentsData_comments_creator)),
    ];

    return result;
  }

  @override
  GLoadCommentsData_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoadCommentsData_commentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commentary':
          result.commentary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLoadCommentsData_comments_creator))!
              as GLoadCommentsData_comments_creator);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoadCommentsData_comments_creatorSerializer
    implements StructuredSerializer<GLoadCommentsData_comments_creator> {
  @override
  final Iterable<Type> types = const [
    GLoadCommentsData_comments_creator,
    _$GLoadCommentsData_comments_creator
  ];
  @override
  final String wireName = 'GLoadCommentsData_comments_creator';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoadCommentsData_comments_creator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLoadCommentsData_comments_creator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoadCommentsData_comments_creatorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoadCommentsData extends GLoadCommentsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GLoadCommentsData_comments> comments;

  factory _$GLoadCommentsData(
          [void Function(GLoadCommentsDataBuilder)? updates]) =>
      (new GLoadCommentsDataBuilder()..update(updates)).build();

  _$GLoadCommentsData._({required this.G__typename, required this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoadCommentsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        comments, 'GLoadCommentsData', 'comments');
  }

  @override
  GLoadCommentsData rebuild(void Function(GLoadCommentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoadCommentsDataBuilder toBuilder() =>
      new GLoadCommentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoadCommentsData &&
        G__typename == other.G__typename &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoadCommentsData')
          ..add('G__typename', G__typename)
          ..add('comments', comments))
        .toString();
  }
}

class GLoadCommentsDataBuilder
    implements Builder<GLoadCommentsData, GLoadCommentsDataBuilder> {
  _$GLoadCommentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GLoadCommentsData_comments>? _comments;
  ListBuilder<GLoadCommentsData_comments> get comments =>
      _$this._comments ??= new ListBuilder<GLoadCommentsData_comments>();
  set comments(ListBuilder<GLoadCommentsData_comments>? comments) =>
      _$this._comments = comments;

  GLoadCommentsDataBuilder() {
    GLoadCommentsData._initializeBuilder(this);
  }

  GLoadCommentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _comments = $v.comments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoadCommentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoadCommentsData;
  }

  @override
  void update(void Function(GLoadCommentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoadCommentsData build() {
    _$GLoadCommentsData _$result;
    try {
      _$result = _$v ??
          new _$GLoadCommentsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLoadCommentsData', 'G__typename'),
              comments: comments.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoadCommentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoadCommentsData_comments extends GLoadCommentsData_comments {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String commentary;
  @override
  final GLoadCommentsData_comments_creator creator;

  factory _$GLoadCommentsData_comments(
          [void Function(GLoadCommentsData_commentsBuilder)? updates]) =>
      (new GLoadCommentsData_commentsBuilder()..update(updates)).build();

  _$GLoadCommentsData_comments._(
      {required this.G__typename,
      required this.id,
      required this.commentary,
      required this.creator})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoadCommentsData_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GLoadCommentsData_comments', 'id');
    BuiltValueNullFieldError.checkNotNull(
        commentary, 'GLoadCommentsData_comments', 'commentary');
    BuiltValueNullFieldError.checkNotNull(
        creator, 'GLoadCommentsData_comments', 'creator');
  }

  @override
  GLoadCommentsData_comments rebuild(
          void Function(GLoadCommentsData_commentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoadCommentsData_commentsBuilder toBuilder() =>
      new GLoadCommentsData_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoadCommentsData_comments &&
        G__typename == other.G__typename &&
        id == other.id &&
        commentary == other.commentary &&
        creator == other.creator;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
            commentary.hashCode),
        creator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoadCommentsData_comments')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('commentary', commentary)
          ..add('creator', creator))
        .toString();
  }
}

class GLoadCommentsData_commentsBuilder
    implements
        Builder<GLoadCommentsData_comments, GLoadCommentsData_commentsBuilder> {
  _$GLoadCommentsData_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _commentary;
  String? get commentary => _$this._commentary;
  set commentary(String? commentary) => _$this._commentary = commentary;

  GLoadCommentsData_comments_creatorBuilder? _creator;
  GLoadCommentsData_comments_creatorBuilder get creator =>
      _$this._creator ??= new GLoadCommentsData_comments_creatorBuilder();
  set creator(GLoadCommentsData_comments_creatorBuilder? creator) =>
      _$this._creator = creator;

  GLoadCommentsData_commentsBuilder() {
    GLoadCommentsData_comments._initializeBuilder(this);
  }

  GLoadCommentsData_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _commentary = $v.commentary;
      _creator = $v.creator.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoadCommentsData_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoadCommentsData_comments;
  }

  @override
  void update(void Function(GLoadCommentsData_commentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoadCommentsData_comments build() {
    _$GLoadCommentsData_comments _$result;
    try {
      _$result = _$v ??
          new _$GLoadCommentsData_comments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLoadCommentsData_comments', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GLoadCommentsData_comments', 'id'),
              commentary: BuiltValueNullFieldError.checkNotNull(
                  commentary, 'GLoadCommentsData_comments', 'commentary'),
              creator: creator.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creator';
        creator.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoadCommentsData_comments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLoadCommentsData_comments_creator
    extends GLoadCommentsData_comments_creator {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String id;
  @override
  final String? image;

  factory _$GLoadCommentsData_comments_creator(
          [void Function(GLoadCommentsData_comments_creatorBuilder)?
              updates]) =>
      (new GLoadCommentsData_comments_creatorBuilder()..update(updates))
          .build();

  _$GLoadCommentsData_comments_creator._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      required this.id,
      this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLoadCommentsData_comments_creator', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GLoadCommentsData_comments_creator', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GLoadCommentsData_comments_creator', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GLoadCommentsData_comments_creator', 'id');
  }

  @override
  GLoadCommentsData_comments_creator rebuild(
          void Function(GLoadCommentsData_comments_creatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoadCommentsData_comments_creatorBuilder toBuilder() =>
      new GLoadCommentsData_comments_creatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoadCommentsData_comments_creator &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        id == other.id &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), firstName.hashCode),
                lastName.hashCode),
            id.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoadCommentsData_comments_creator')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('id', id)
          ..add('image', image))
        .toString();
  }
}

class GLoadCommentsData_comments_creatorBuilder
    implements
        Builder<GLoadCommentsData_comments_creator,
            GLoadCommentsData_comments_creatorBuilder> {
  _$GLoadCommentsData_comments_creator? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GLoadCommentsData_comments_creatorBuilder() {
    GLoadCommentsData_comments_creator._initializeBuilder(this);
  }

  GLoadCommentsData_comments_creatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _id = $v.id;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoadCommentsData_comments_creator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoadCommentsData_comments_creator;
  }

  @override
  void update(
      void Function(GLoadCommentsData_comments_creatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoadCommentsData_comments_creator build() {
    final _$result = _$v ??
        new _$GLoadCommentsData_comments_creator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GLoadCommentsData_comments_creator', 'G__typename'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'GLoadCommentsData_comments_creator', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GLoadCommentsData_comments_creator', 'lastName'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GLoadCommentsData_comments_creator', 'id'),
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_story.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GloadStoriesData> _$gloadStoriesDataSerializer =
    new _$GloadStoriesDataSerializer();
Serializer<GloadStoriesData_users> _$gloadStoriesDataUsersSerializer =
    new _$GloadStoriesData_usersSerializer();
Serializer<GloadStoriesData_users_stories>
    _$gloadStoriesDataUsersStoriesSerializer =
    new _$GloadStoriesData_users_storiesSerializer();
Serializer<GloadStoriesData_users_stories_creator>
    _$gloadStoriesDataUsersStoriesCreatorSerializer =
    new _$GloadStoriesData_users_stories_creatorSerializer();

class _$GloadStoriesDataSerializer
    implements StructuredSerializer<GloadStoriesData> {
  @override
  final Iterable<Type> types = const [GloadStoriesData, _$GloadStoriesData];
  @override
  final String wireName = 'GloadStoriesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloadStoriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GloadStoriesData_users)])),
    ];

    return result;
  }

  @override
  GloadStoriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloadStoriesDataBuilder();

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
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GloadStoriesData_users)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GloadStoriesData_usersSerializer
    implements StructuredSerializer<GloadStoriesData_users> {
  @override
  final Iterable<Type> types = const [
    GloadStoriesData_users,
    _$GloadStoriesData_users
  ];
  @override
  final String wireName = 'GloadStoriesData_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GloadStoriesData_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'stories',
      serializers.serialize(object.stories,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GloadStoriesData_users_stories)])),
    ];

    return result;
  }

  @override
  GloadStoriesData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloadStoriesData_usersBuilder();

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
        case 'stories':
          result.stories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GloadStoriesData_users_stories)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GloadStoriesData_users_storiesSerializer
    implements StructuredSerializer<GloadStoriesData_users_stories> {
  @override
  final Iterable<Type> types = const [
    GloadStoriesData_users_stories,
    _$GloadStoriesData_users_stories
  ];
  @override
  final String wireName = 'GloadStoriesData_users_stories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GloadStoriesData_users_stories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'media',
      serializers.serialize(object.media,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.music;
    if (value != null) {
      result
        ..add('music')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GDateTime)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GloadStoriesData_users_stories_creator)));
    }
    return result;
  }

  @override
  GloadStoriesData_users_stories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloadStoriesData_users_storiesBuilder();

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
        case 'music':
          result.music = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media':
          result.media = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.GDateTime))! as _i2.GDateTime);
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GloadStoriesData_users_stories_creator))!
              as GloadStoriesData_users_stories_creator);
          break;
      }
    }

    return result.build();
  }
}

class _$GloadStoriesData_users_stories_creatorSerializer
    implements StructuredSerializer<GloadStoriesData_users_stories_creator> {
  @override
  final Iterable<Type> types = const [
    GloadStoriesData_users_stories_creator,
    _$GloadStoriesData_users_stories_creator
  ];
  @override
  final String wireName = 'GloadStoriesData_users_stories_creator';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GloadStoriesData_users_stories_creator object,
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
  GloadStoriesData_users_stories_creator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloadStoriesData_users_stories_creatorBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GloadStoriesData extends GloadStoriesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GloadStoriesData_users> users;

  factory _$GloadStoriesData(
          [void Function(GloadStoriesDataBuilder)? updates]) =>
      (new GloadStoriesDataBuilder()..update(updates)).build();

  _$GloadStoriesData._({required this.G__typename, required this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GloadStoriesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(users, 'GloadStoriesData', 'users');
  }

  @override
  GloadStoriesData rebuild(void Function(GloadStoriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloadStoriesDataBuilder toBuilder() =>
      new GloadStoriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloadStoriesData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloadStoriesData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GloadStoriesDataBuilder
    implements Builder<GloadStoriesData, GloadStoriesDataBuilder> {
  _$GloadStoriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GloadStoriesData_users>? _users;
  ListBuilder<GloadStoriesData_users> get users =>
      _$this._users ??= new ListBuilder<GloadStoriesData_users>();
  set users(ListBuilder<GloadStoriesData_users>? users) =>
      _$this._users = users;

  GloadStoriesDataBuilder() {
    GloadStoriesData._initializeBuilder(this);
  }

  GloadStoriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloadStoriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloadStoriesData;
  }

  @override
  void update(void Function(GloadStoriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloadStoriesData build() {
    _$GloadStoriesData _$result;
    try {
      _$result = _$v ??
          new _$GloadStoriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GloadStoriesData', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GloadStoriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloadStoriesData_users extends GloadStoriesData_users {
  @override
  final String G__typename;
  @override
  final BuiltList<GloadStoriesData_users_stories> stories;

  factory _$GloadStoriesData_users(
          [void Function(GloadStoriesData_usersBuilder)? updates]) =>
      (new GloadStoriesData_usersBuilder()..update(updates)).build();

  _$GloadStoriesData_users._({required this.G__typename, required this.stories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GloadStoriesData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        stories, 'GloadStoriesData_users', 'stories');
  }

  @override
  GloadStoriesData_users rebuild(
          void Function(GloadStoriesData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloadStoriesData_usersBuilder toBuilder() =>
      new GloadStoriesData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloadStoriesData_users &&
        G__typename == other.G__typename &&
        stories == other.stories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), stories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloadStoriesData_users')
          ..add('G__typename', G__typename)
          ..add('stories', stories))
        .toString();
  }
}

class GloadStoriesData_usersBuilder
    implements Builder<GloadStoriesData_users, GloadStoriesData_usersBuilder> {
  _$GloadStoriesData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GloadStoriesData_users_stories>? _stories;
  ListBuilder<GloadStoriesData_users_stories> get stories =>
      _$this._stories ??= new ListBuilder<GloadStoriesData_users_stories>();
  set stories(ListBuilder<GloadStoriesData_users_stories>? stories) =>
      _$this._stories = stories;

  GloadStoriesData_usersBuilder() {
    GloadStoriesData_users._initializeBuilder(this);
  }

  GloadStoriesData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _stories = $v.stories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloadStoriesData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloadStoriesData_users;
  }

  @override
  void update(void Function(GloadStoriesData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloadStoriesData_users build() {
    _$GloadStoriesData_users _$result;
    try {
      _$result = _$v ??
          new _$GloadStoriesData_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GloadStoriesData_users', 'G__typename'),
              stories: stories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stories';
        stories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GloadStoriesData_users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloadStoriesData_users_stories extends GloadStoriesData_users_stories {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? music;
  @override
  final String media;
  @override
  final _i2.GDateTime? createdAt;
  @override
  final GloadStoriesData_users_stories_creator? creator;

  factory _$GloadStoriesData_users_stories(
          [void Function(GloadStoriesData_users_storiesBuilder)? updates]) =>
      (new GloadStoriesData_users_storiesBuilder()..update(updates)).build();

  _$GloadStoriesData_users_stories._(
      {required this.G__typename,
      required this.id,
      this.music,
      required this.media,
      this.createdAt,
      this.creator})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GloadStoriesData_users_stories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GloadStoriesData_users_stories', 'id');
    BuiltValueNullFieldError.checkNotNull(
        media, 'GloadStoriesData_users_stories', 'media');
  }

  @override
  GloadStoriesData_users_stories rebuild(
          void Function(GloadStoriesData_users_storiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloadStoriesData_users_storiesBuilder toBuilder() =>
      new GloadStoriesData_users_storiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloadStoriesData_users_stories &&
        G__typename == other.G__typename &&
        id == other.id &&
        music == other.music &&
        media == other.media &&
        createdAt == other.createdAt &&
        creator == other.creator;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    music.hashCode),
                media.hashCode),
            createdAt.hashCode),
        creator.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloadStoriesData_users_stories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('music', music)
          ..add('media', media)
          ..add('createdAt', createdAt)
          ..add('creator', creator))
        .toString();
  }
}

class GloadStoriesData_users_storiesBuilder
    implements
        Builder<GloadStoriesData_users_stories,
            GloadStoriesData_users_storiesBuilder> {
  _$GloadStoriesData_users_stories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _music;
  String? get music => _$this._music;
  set music(String? music) => _$this._music = music;

  String? _media;
  String? get media => _$this._media;
  set media(String? media) => _$this._media = media;

  _i2.GDateTimeBuilder? _createdAt;
  _i2.GDateTimeBuilder get createdAt =>
      _$this._createdAt ??= new _i2.GDateTimeBuilder();
  set createdAt(_i2.GDateTimeBuilder? createdAt) =>
      _$this._createdAt = createdAt;

  GloadStoriesData_users_stories_creatorBuilder? _creator;
  GloadStoriesData_users_stories_creatorBuilder get creator =>
      _$this._creator ??= new GloadStoriesData_users_stories_creatorBuilder();
  set creator(GloadStoriesData_users_stories_creatorBuilder? creator) =>
      _$this._creator = creator;

  GloadStoriesData_users_storiesBuilder() {
    GloadStoriesData_users_stories._initializeBuilder(this);
  }

  GloadStoriesData_users_storiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _music = $v.music;
      _media = $v.media;
      _createdAt = $v.createdAt?.toBuilder();
      _creator = $v.creator?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloadStoriesData_users_stories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloadStoriesData_users_stories;
  }

  @override
  void update(void Function(GloadStoriesData_users_storiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloadStoriesData_users_stories build() {
    _$GloadStoriesData_users_stories _$result;
    try {
      _$result = _$v ??
          new _$GloadStoriesData_users_stories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GloadStoriesData_users_stories', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GloadStoriesData_users_stories', 'id'),
              music: music,
              media: BuiltValueNullFieldError.checkNotNull(
                  media, 'GloadStoriesData_users_stories', 'media'),
              createdAt: _createdAt?.build(),
              creator: _creator?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createdAt';
        _createdAt?.build();
        _$failedField = 'creator';
        _creator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GloadStoriesData_users_stories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GloadStoriesData_users_stories_creator
    extends GloadStoriesData_users_stories_creator {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? image;

  factory _$GloadStoriesData_users_stories_creator(
          [void Function(GloadStoriesData_users_stories_creatorBuilder)?
              updates]) =>
      (new GloadStoriesData_users_stories_creatorBuilder()..update(updates))
          .build();

  _$GloadStoriesData_users_stories_creator._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GloadStoriesData_users_stories_creator', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GloadStoriesData_users_stories_creator', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GloadStoriesData_users_stories_creator', 'lastName');
  }

  @override
  GloadStoriesData_users_stories_creator rebuild(
          void Function(GloadStoriesData_users_stories_creatorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloadStoriesData_users_stories_creatorBuilder toBuilder() =>
      new GloadStoriesData_users_stories_creatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloadStoriesData_users_stories_creator &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), firstName.hashCode),
            lastName.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GloadStoriesData_users_stories_creator')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('image', image))
        .toString();
  }
}

class GloadStoriesData_users_stories_creatorBuilder
    implements
        Builder<GloadStoriesData_users_stories_creator,
            GloadStoriesData_users_stories_creatorBuilder> {
  _$GloadStoriesData_users_stories_creator? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GloadStoriesData_users_stories_creatorBuilder() {
    GloadStoriesData_users_stories_creator._initializeBuilder(this);
  }

  GloadStoriesData_users_stories_creatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloadStoriesData_users_stories_creator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloadStoriesData_users_stories_creator;
  }

  @override
  void update(
      void Function(GloadStoriesData_users_stories_creatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloadStoriesData_users_stories_creator build() {
    final _$result = _$v ??
        new _$GloadStoriesData_users_stories_creator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GloadStoriesData_users_stories_creator', 'G__typename'),
            firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                'GloadStoriesData_users_stories_creator', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GloadStoriesData_users_stories_creator', 'lastName'),
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

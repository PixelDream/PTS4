// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_posts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProfilePostsData> _$gProfilePostsDataSerializer =
    new _$GProfilePostsDataSerializer();
Serializer<GProfilePostsData_users> _$gProfilePostsDataUsersSerializer =
    new _$GProfilePostsData_usersSerializer();
Serializer<GProfilePostsData_users_postLikes>
    _$gProfilePostsDataUsersPostLikesSerializer =
    new _$GProfilePostsData_users_postLikesSerializer();
Serializer<GProfilePostsData_users_posts>
    _$gProfilePostsDataUsersPostsSerializer =
    new _$GProfilePostsData_users_postsSerializer();
Serializer<GProfilePostsData_users_posts_creator>
    _$gProfilePostsDataUsersPostsCreatorSerializer =
    new _$GProfilePostsData_users_posts_creatorSerializer();
Serializer<GProfilePostsData_users_posts_likesConnection>
    _$gProfilePostsDataUsersPostsLikesConnectionSerializer =
    new _$GProfilePostsData_users_posts_likesConnectionSerializer();
Serializer<GProfilePostsData_users_posts_commentsConnection>
    _$gProfilePostsDataUsersPostsCommentsConnectionSerializer =
    new _$GProfilePostsData_users_posts_commentsConnectionSerializer();

class _$GProfilePostsDataSerializer
    implements StructuredSerializer<GProfilePostsData> {
  @override
  final Iterable<Type> types = const [GProfilePostsData, _$GProfilePostsData];
  @override
  final String wireName = 'GProfilePostsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProfilePostsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GProfilePostsData_users)])),
    ];

    return result;
  }

  @override
  GProfilePostsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsDataBuilder();

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
                const FullType(GProfilePostsData_users)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData_usersSerializer
    implements StructuredSerializer<GProfilePostsData_users> {
  @override
  final Iterable<Type> types = const [
    GProfilePostsData_users,
    _$GProfilePostsData_users
  ];
  @override
  final String wireName = 'GProfilePostsData_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfilePostsData_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postLikes',
      serializers.serialize(object.postLikes,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GProfilePostsData_users_postLikes)])),
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GProfilePostsData_users_posts)])),
    ];

    return result;
  }

  @override
  GProfilePostsData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsData_usersBuilder();

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
        case 'postLikes':
          result.postLikes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GProfilePostsData_users_postLikes)
              ]))! as BuiltList<Object?>);
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GProfilePostsData_users_posts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData_users_postLikesSerializer
    implements StructuredSerializer<GProfilePostsData_users_postLikes> {
  @override
  final Iterable<Type> types = const [
    GProfilePostsData_users_postLikes,
    _$GProfilePostsData_users_postLikes
  ];
  @override
  final String wireName = 'GProfilePostsData_users_postLikes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfilePostsData_users_postLikes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GProfilePostsData_users_postLikes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsData_users_postLikesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData_users_postsSerializer
    implements StructuredSerializer<GProfilePostsData_users_posts> {
  @override
  final Iterable<Type> types = const [
    GProfilePostsData_users_posts,
    _$GProfilePostsData_users_posts
  ];
  @override
  final String wireName = 'GProfilePostsData_users_posts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfilePostsData_users_posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'media',
      serializers.serialize(object.media,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'likesConnection',
      serializers.serialize(object.likesConnection,
          specifiedType:
              const FullType(GProfilePostsData_users_posts_likesConnection)),
      'commentsConnection',
      serializers.serialize(object.commentsConnection,
          specifiedType:
              const FullType(GProfilePostsData_users_posts_commentsConnection)),
    ];
    Object? value;
    value = object.music;
    if (value != null) {
      result
        ..add('music')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creator;
    if (value != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GProfilePostsData_users_posts_creator)));
    }
    return result;
  }

  @override
  GProfilePostsData_users_posts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsData_users_postsBuilder();

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
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GProfilePostsData_users_posts_creator))!
              as GProfilePostsData_users_posts_creator);
          break;
        case 'likesConnection':
          result.likesConnection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProfilePostsData_users_posts_likesConnection))!
              as GProfilePostsData_users_posts_likesConnection);
          break;
        case 'commentsConnection':
          result.commentsConnection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GProfilePostsData_users_posts_commentsConnection))!
              as GProfilePostsData_users_posts_commentsConnection);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData_users_posts_creatorSerializer
    implements StructuredSerializer<GProfilePostsData_users_posts_creator> {
  @override
  final Iterable<Type> types = const [
    GProfilePostsData_users_posts_creator,
    _$GProfilePostsData_users_posts_creator
  ];
  @override
  final String wireName = 'GProfilePostsData_users_posts_creator';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfilePostsData_users_posts_creator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'pseudo',
      serializers.serialize(object.pseudo,
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
  GProfilePostsData_users_posts_creator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsData_users_posts_creatorBuilder();

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
        case 'pseudo':
          result.pseudo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData_users_posts_likesConnectionSerializer
    implements
        StructuredSerializer<GProfilePostsData_users_posts_likesConnection> {
  @override
  final Iterable<Type> types = const [
    GProfilePostsData_users_posts_likesConnection,
    _$GProfilePostsData_users_posts_likesConnection
  ];
  @override
  final String wireName = 'GProfilePostsData_users_posts_likesConnection';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfilePostsData_users_posts_likesConnection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GProfilePostsData_users_posts_likesConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsData_users_posts_likesConnectionBuilder();

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
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData_users_posts_commentsConnectionSerializer
    implements
        StructuredSerializer<GProfilePostsData_users_posts_commentsConnection> {
  @override
  final Iterable<Type> types = const [
    GProfilePostsData_users_posts_commentsConnection,
    _$GProfilePostsData_users_posts_commentsConnection
  ];
  @override
  final String wireName = 'GProfilePostsData_users_posts_commentsConnection';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProfilePostsData_users_posts_commentsConnection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GProfilePostsData_users_posts_commentsConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProfilePostsData_users_posts_commentsConnectionBuilder();

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
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfilePostsData extends GProfilePostsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GProfilePostsData_users> users;

  factory _$GProfilePostsData(
          [void Function(GProfilePostsDataBuilder)? updates]) =>
      (new GProfilePostsDataBuilder()..update(updates)).build();

  _$GProfilePostsData._({required this.G__typename, required this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfilePostsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(users, 'GProfilePostsData', 'users');
  }

  @override
  GProfilePostsData rebuild(void Function(GProfilePostsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsDataBuilder toBuilder() =>
      new GProfilePostsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfilePostsData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GProfilePostsDataBuilder
    implements Builder<GProfilePostsData, GProfilePostsDataBuilder> {
  _$GProfilePostsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GProfilePostsData_users>? _users;
  ListBuilder<GProfilePostsData_users> get users =>
      _$this._users ??= new ListBuilder<GProfilePostsData_users>();
  set users(ListBuilder<GProfilePostsData_users>? users) =>
      _$this._users = users;

  GProfilePostsDataBuilder() {
    GProfilePostsData._initializeBuilder(this);
  }

  GProfilePostsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData;
  }

  @override
  void update(void Function(GProfilePostsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData build() {
    _$GProfilePostsData _$result;
    try {
      _$result = _$v ??
          new _$GProfilePostsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GProfilePostsData', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GProfilePostsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfilePostsData_users extends GProfilePostsData_users {
  @override
  final String G__typename;
  @override
  final BuiltList<GProfilePostsData_users_postLikes> postLikes;
  @override
  final BuiltList<GProfilePostsData_users_posts> posts;

  factory _$GProfilePostsData_users(
          [void Function(GProfilePostsData_usersBuilder)? updates]) =>
      (new GProfilePostsData_usersBuilder()..update(updates)).build();

  _$GProfilePostsData_users._(
      {required this.G__typename, required this.postLikes, required this.posts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfilePostsData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postLikes, 'GProfilePostsData_users', 'postLikes');
    BuiltValueNullFieldError.checkNotNull(
        posts, 'GProfilePostsData_users', 'posts');
  }

  @override
  GProfilePostsData_users rebuild(
          void Function(GProfilePostsData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsData_usersBuilder toBuilder() =>
      new GProfilePostsData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData_users &&
        G__typename == other.G__typename &&
        postLikes == other.postLikes &&
        posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), postLikes.hashCode), posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfilePostsData_users')
          ..add('G__typename', G__typename)
          ..add('postLikes', postLikes)
          ..add('posts', posts))
        .toString();
  }
}

class GProfilePostsData_usersBuilder
    implements
        Builder<GProfilePostsData_users, GProfilePostsData_usersBuilder> {
  _$GProfilePostsData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GProfilePostsData_users_postLikes>? _postLikes;
  ListBuilder<GProfilePostsData_users_postLikes> get postLikes =>
      _$this._postLikes ??=
          new ListBuilder<GProfilePostsData_users_postLikes>();
  set postLikes(ListBuilder<GProfilePostsData_users_postLikes>? postLikes) =>
      _$this._postLikes = postLikes;

  ListBuilder<GProfilePostsData_users_posts>? _posts;
  ListBuilder<GProfilePostsData_users_posts> get posts =>
      _$this._posts ??= new ListBuilder<GProfilePostsData_users_posts>();
  set posts(ListBuilder<GProfilePostsData_users_posts>? posts) =>
      _$this._posts = posts;

  GProfilePostsData_usersBuilder() {
    GProfilePostsData_users._initializeBuilder(this);
  }

  GProfilePostsData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postLikes = $v.postLikes.toBuilder();
      _posts = $v.posts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData_users;
  }

  @override
  void update(void Function(GProfilePostsData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData_users build() {
    _$GProfilePostsData_users _$result;
    try {
      _$result = _$v ??
          new _$GProfilePostsData_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GProfilePostsData_users', 'G__typename'),
              postLikes: postLikes.build(),
              posts: posts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postLikes';
        postLikes.build();
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GProfilePostsData_users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfilePostsData_users_postLikes
    extends GProfilePostsData_users_postLikes {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GProfilePostsData_users_postLikes(
          [void Function(GProfilePostsData_users_postLikesBuilder)? updates]) =>
      (new GProfilePostsData_users_postLikesBuilder()..update(updates)).build();

  _$GProfilePostsData_users_postLikes._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfilePostsData_users_postLikes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GProfilePostsData_users_postLikes', 'id');
  }

  @override
  GProfilePostsData_users_postLikes rebuild(
          void Function(GProfilePostsData_users_postLikesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsData_users_postLikesBuilder toBuilder() =>
      new GProfilePostsData_users_postLikesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData_users_postLikes &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfilePostsData_users_postLikes')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GProfilePostsData_users_postLikesBuilder
    implements
        Builder<GProfilePostsData_users_postLikes,
            GProfilePostsData_users_postLikesBuilder> {
  _$GProfilePostsData_users_postLikes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GProfilePostsData_users_postLikesBuilder() {
    GProfilePostsData_users_postLikes._initializeBuilder(this);
  }

  GProfilePostsData_users_postLikesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData_users_postLikes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData_users_postLikes;
  }

  @override
  void update(
      void Function(GProfilePostsData_users_postLikesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData_users_postLikes build() {
    final _$result = _$v ??
        new _$GProfilePostsData_users_postLikes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GProfilePostsData_users_postLikes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GProfilePostsData_users_postLikes', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GProfilePostsData_users_posts extends GProfilePostsData_users_posts {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? music;
  @override
  final BuiltList<String> media;
  @override
  final GProfilePostsData_users_posts_creator? creator;
  @override
  final GProfilePostsData_users_posts_likesConnection likesConnection;
  @override
  final GProfilePostsData_users_posts_commentsConnection commentsConnection;

  factory _$GProfilePostsData_users_posts(
          [void Function(GProfilePostsData_users_postsBuilder)? updates]) =>
      (new GProfilePostsData_users_postsBuilder()..update(updates)).build();

  _$GProfilePostsData_users_posts._(
      {required this.G__typename,
      required this.id,
      this.music,
      required this.media,
      this.creator,
      required this.likesConnection,
      required this.commentsConnection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfilePostsData_users_posts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GProfilePostsData_users_posts', 'id');
    BuiltValueNullFieldError.checkNotNull(
        media, 'GProfilePostsData_users_posts', 'media');
    BuiltValueNullFieldError.checkNotNull(
        likesConnection, 'GProfilePostsData_users_posts', 'likesConnection');
    BuiltValueNullFieldError.checkNotNull(commentsConnection,
        'GProfilePostsData_users_posts', 'commentsConnection');
  }

  @override
  GProfilePostsData_users_posts rebuild(
          void Function(GProfilePostsData_users_postsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsData_users_postsBuilder toBuilder() =>
      new GProfilePostsData_users_postsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData_users_posts &&
        G__typename == other.G__typename &&
        id == other.id &&
        music == other.music &&
        media == other.media &&
        creator == other.creator &&
        likesConnection == other.likesConnection &&
        commentsConnection == other.commentsConnection;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        music.hashCode),
                    media.hashCode),
                creator.hashCode),
            likesConnection.hashCode),
        commentsConnection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfilePostsData_users_posts')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('music', music)
          ..add('media', media)
          ..add('creator', creator)
          ..add('likesConnection', likesConnection)
          ..add('commentsConnection', commentsConnection))
        .toString();
  }
}

class GProfilePostsData_users_postsBuilder
    implements
        Builder<GProfilePostsData_users_posts,
            GProfilePostsData_users_postsBuilder> {
  _$GProfilePostsData_users_posts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _music;
  String? get music => _$this._music;
  set music(String? music) => _$this._music = music;

  ListBuilder<String>? _media;
  ListBuilder<String> get media => _$this._media ??= new ListBuilder<String>();
  set media(ListBuilder<String>? media) => _$this._media = media;

  GProfilePostsData_users_posts_creatorBuilder? _creator;
  GProfilePostsData_users_posts_creatorBuilder get creator =>
      _$this._creator ??= new GProfilePostsData_users_posts_creatorBuilder();
  set creator(GProfilePostsData_users_posts_creatorBuilder? creator) =>
      _$this._creator = creator;

  GProfilePostsData_users_posts_likesConnectionBuilder? _likesConnection;
  GProfilePostsData_users_posts_likesConnectionBuilder get likesConnection =>
      _$this._likesConnection ??=
          new GProfilePostsData_users_posts_likesConnectionBuilder();
  set likesConnection(
          GProfilePostsData_users_posts_likesConnectionBuilder?
              likesConnection) =>
      _$this._likesConnection = likesConnection;

  GProfilePostsData_users_posts_commentsConnectionBuilder? _commentsConnection;
  GProfilePostsData_users_posts_commentsConnectionBuilder
      get commentsConnection => _$this._commentsConnection ??=
          new GProfilePostsData_users_posts_commentsConnectionBuilder();
  set commentsConnection(
          GProfilePostsData_users_posts_commentsConnectionBuilder?
              commentsConnection) =>
      _$this._commentsConnection = commentsConnection;

  GProfilePostsData_users_postsBuilder() {
    GProfilePostsData_users_posts._initializeBuilder(this);
  }

  GProfilePostsData_users_postsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _music = $v.music;
      _media = $v.media.toBuilder();
      _creator = $v.creator?.toBuilder();
      _likesConnection = $v.likesConnection.toBuilder();
      _commentsConnection = $v.commentsConnection.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData_users_posts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData_users_posts;
  }

  @override
  void update(void Function(GProfilePostsData_users_postsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData_users_posts build() {
    _$GProfilePostsData_users_posts _$result;
    try {
      _$result = _$v ??
          new _$GProfilePostsData_users_posts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GProfilePostsData_users_posts', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GProfilePostsData_users_posts', 'id'),
              music: music,
              media: media.build(),
              creator: _creator?.build(),
              likesConnection: likesConnection.build(),
              commentsConnection: commentsConnection.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        media.build();
        _$failedField = 'creator';
        _creator?.build();
        _$failedField = 'likesConnection';
        likesConnection.build();
        _$failedField = 'commentsConnection';
        commentsConnection.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GProfilePostsData_users_posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfilePostsData_users_posts_creator
    extends GProfilePostsData_users_posts_creator {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? image;
  @override
  final String pseudo;

  factory _$GProfilePostsData_users_posts_creator(
          [void Function(GProfilePostsData_users_posts_creatorBuilder)?
              updates]) =>
      (new GProfilePostsData_users_posts_creatorBuilder()..update(updates))
          .build();

  _$GProfilePostsData_users_posts_creator._(
      {required this.G__typename,
      required this.id,
      required this.firstName,
      required this.lastName,
      this.image,
      required this.pseudo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfilePostsData_users_posts_creator', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GProfilePostsData_users_posts_creator', 'id');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GProfilePostsData_users_posts_creator', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GProfilePostsData_users_posts_creator', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        pseudo, 'GProfilePostsData_users_posts_creator', 'pseudo');
  }

  @override
  GProfilePostsData_users_posts_creator rebuild(
          void Function(GProfilePostsData_users_posts_creatorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsData_users_posts_creatorBuilder toBuilder() =>
      new GProfilePostsData_users_posts_creatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData_users_posts_creator &&
        G__typename == other.G__typename &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        image == other.image &&
        pseudo == other.pseudo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    firstName.hashCode),
                lastName.hashCode),
            image.hashCode),
        pseudo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfilePostsData_users_posts_creator')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('image', image)
          ..add('pseudo', pseudo))
        .toString();
  }
}

class GProfilePostsData_users_posts_creatorBuilder
    implements
        Builder<GProfilePostsData_users_posts_creator,
            GProfilePostsData_users_posts_creatorBuilder> {
  _$GProfilePostsData_users_posts_creator? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _pseudo;
  String? get pseudo => _$this._pseudo;
  set pseudo(String? pseudo) => _$this._pseudo = pseudo;

  GProfilePostsData_users_posts_creatorBuilder() {
    GProfilePostsData_users_posts_creator._initializeBuilder(this);
  }

  GProfilePostsData_users_posts_creatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _image = $v.image;
      _pseudo = $v.pseudo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData_users_posts_creator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData_users_posts_creator;
  }

  @override
  void update(
      void Function(GProfilePostsData_users_posts_creatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData_users_posts_creator build() {
    final _$result = _$v ??
        new _$GProfilePostsData_users_posts_creator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GProfilePostsData_users_posts_creator', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GProfilePostsData_users_posts_creator', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                'GProfilePostsData_users_posts_creator', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GProfilePostsData_users_posts_creator', 'lastName'),
            image: image,
            pseudo: BuiltValueNullFieldError.checkNotNull(
                pseudo, 'GProfilePostsData_users_posts_creator', 'pseudo'));
    replace(_$result);
    return _$result;
  }
}

class _$GProfilePostsData_users_posts_likesConnection
    extends GProfilePostsData_users_posts_likesConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GProfilePostsData_users_posts_likesConnection(
          [void Function(GProfilePostsData_users_posts_likesConnectionBuilder)?
              updates]) =>
      (new GProfilePostsData_users_posts_likesConnectionBuilder()
            ..update(updates))
          .build();

  _$GProfilePostsData_users_posts_likesConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GProfilePostsData_users_posts_likesConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GProfilePostsData_users_posts_likesConnection', 'totalCount');
  }

  @override
  GProfilePostsData_users_posts_likesConnection rebuild(
          void Function(GProfilePostsData_users_posts_likesConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsData_users_posts_likesConnectionBuilder toBuilder() =>
      new GProfilePostsData_users_posts_likesConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData_users_posts_likesConnection &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GProfilePostsData_users_posts_likesConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GProfilePostsData_users_posts_likesConnectionBuilder
    implements
        Builder<GProfilePostsData_users_posts_likesConnection,
            GProfilePostsData_users_posts_likesConnectionBuilder> {
  _$GProfilePostsData_users_posts_likesConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GProfilePostsData_users_posts_likesConnectionBuilder() {
    GProfilePostsData_users_posts_likesConnection._initializeBuilder(this);
  }

  GProfilePostsData_users_posts_likesConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData_users_posts_likesConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData_users_posts_likesConnection;
  }

  @override
  void update(
      void Function(GProfilePostsData_users_posts_likesConnectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData_users_posts_likesConnection build() {
    final _$result = _$v ??
        new _$GProfilePostsData_users_posts_likesConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GProfilePostsData_users_posts_likesConnection', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GProfilePostsData_users_posts_likesConnection', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GProfilePostsData_users_posts_commentsConnection
    extends GProfilePostsData_users_posts_commentsConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GProfilePostsData_users_posts_commentsConnection(
          [void Function(
                  GProfilePostsData_users_posts_commentsConnectionBuilder)?
              updates]) =>
      (new GProfilePostsData_users_posts_commentsConnectionBuilder()
            ..update(updates))
          .build();

  _$GProfilePostsData_users_posts_commentsConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GProfilePostsData_users_posts_commentsConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GProfilePostsData_users_posts_commentsConnection', 'totalCount');
  }

  @override
  GProfilePostsData_users_posts_commentsConnection rebuild(
          void Function(GProfilePostsData_users_posts_commentsConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsData_users_posts_commentsConnectionBuilder toBuilder() =>
      new GProfilePostsData_users_posts_commentsConnectionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsData_users_posts_commentsConnection &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GProfilePostsData_users_posts_commentsConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GProfilePostsData_users_posts_commentsConnectionBuilder
    implements
        Builder<GProfilePostsData_users_posts_commentsConnection,
            GProfilePostsData_users_posts_commentsConnectionBuilder> {
  _$GProfilePostsData_users_posts_commentsConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GProfilePostsData_users_posts_commentsConnectionBuilder() {
    GProfilePostsData_users_posts_commentsConnection._initializeBuilder(this);
  }

  GProfilePostsData_users_posts_commentsConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsData_users_posts_commentsConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsData_users_posts_commentsConnection;
  }

  @override
  void update(
      void Function(GProfilePostsData_users_posts_commentsConnectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsData_users_posts_commentsConnection build() {
    final _$result = _$v ??
        new _$GProfilePostsData_users_posts_commentsConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GProfilePostsData_users_posts_commentsConnection',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GProfilePostsData_users_posts_commentsConnection',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

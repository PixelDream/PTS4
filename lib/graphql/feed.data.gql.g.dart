// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedData> _$gFeedDataSerializer = new _$GFeedDataSerializer();
Serializer<GFeedData_users> _$gFeedDataUsersSerializer =
    new _$GFeedData_usersSerializer();
Serializer<GFeedData_users_postLikes> _$gFeedDataUsersPostLikesSerializer =
    new _$GFeedData_users_postLikesSerializer();
Serializer<GFeedData_users_friends> _$gFeedDataUsersFriendsSerializer =
    new _$GFeedData_users_friendsSerializer();
Serializer<GFeedData_users_friends_storiesConnection>
    _$gFeedDataUsersFriendsStoriesConnectionSerializer =
    new _$GFeedData_users_friends_storiesConnectionSerializer();
Serializer<GFeedData_users_friends_posts>
    _$gFeedDataUsersFriendsPostsSerializer =
    new _$GFeedData_users_friends_postsSerializer();
Serializer<GFeedData_users_friends_posts_creator>
    _$gFeedDataUsersFriendsPostsCreatorSerializer =
    new _$GFeedData_users_friends_posts_creatorSerializer();
Serializer<GFeedData_users_friends_posts_likesConnection>
    _$gFeedDataUsersFriendsPostsLikesConnectionSerializer =
    new _$GFeedData_users_friends_posts_likesConnectionSerializer();
Serializer<GFeedData_users_friends_posts_commentsConnection>
    _$gFeedDataUsersFriendsPostsCommentsConnectionSerializer =
    new _$GFeedData_users_friends_posts_commentsConnectionSerializer();

class _$GFeedDataSerializer implements StructuredSerializer<GFeedData> {
  @override
  final Iterable<Type> types = const [GFeedData, _$GFeedData];
  @override
  final String wireName = 'GFeedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GFeedData_users)])),
    ];

    return result;
  }

  @override
  GFeedData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedDataBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GFeedData_users)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedData_usersSerializer
    implements StructuredSerializer<GFeedData_users> {
  @override
  final Iterable<Type> types = const [GFeedData_users, _$GFeedData_users];
  @override
  final String wireName = 'GFeedData_users';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedData_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'postLikes',
      serializers.serialize(object.postLikes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GFeedData_users_postLikes)])),
      'friends',
      serializers.serialize(object.friends,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GFeedData_users_friends)])),
    ];

    return result;
  }

  @override
  GFeedData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_usersBuilder();

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
                const FullType(GFeedData_users_postLikes)
              ]))! as BuiltList<Object?>);
          break;
        case 'friends':
          result.friends.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFeedData_users_friends)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedData_users_postLikesSerializer
    implements StructuredSerializer<GFeedData_users_postLikes> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_postLikes,
    _$GFeedData_users_postLikes
  ];
  @override
  final String wireName = 'GFeedData_users_postLikes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedData_users_postLikes object,
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
  GFeedData_users_postLikes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_users_postLikesBuilder();

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

class _$GFeedData_users_friendsSerializer
    implements StructuredSerializer<GFeedData_users_friends> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_friends,
    _$GFeedData_users_friends
  ];
  @override
  final String wireName = 'GFeedData_users_friends';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedData_users_friends object,
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
      'storiesConnection',
      serializers.serialize(object.storiesConnection,
          specifiedType:
              const FullType(GFeedData_users_friends_storiesConnection)),
      'posts',
      serializers.serialize(object.posts,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFeedData_users_friends_posts)])),
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
  GFeedData_users_friends deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_users_friendsBuilder();

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
        case 'storiesConnection':
          result.storiesConnection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFeedData_users_friends_storiesConnection))!
              as GFeedData_users_friends_storiesConnection);
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFeedData_users_friends_posts)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedData_users_friends_storiesConnectionSerializer
    implements StructuredSerializer<GFeedData_users_friends_storiesConnection> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_friends_storiesConnection,
    _$GFeedData_users_friends_storiesConnection
  ];
  @override
  final String wireName = 'GFeedData_users_friends_storiesConnection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedData_users_friends_storiesConnection object,
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
  GFeedData_users_friends_storiesConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_users_friends_storiesConnectionBuilder();

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

class _$GFeedData_users_friends_postsSerializer
    implements StructuredSerializer<GFeedData_users_friends_posts> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_friends_posts,
    _$GFeedData_users_friends_posts
  ];
  @override
  final String wireName = 'GFeedData_users_friends_posts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedData_users_friends_posts object,
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
              const FullType(GFeedData_users_friends_posts_likesConnection)),
      'commentsConnection',
      serializers.serialize(object.commentsConnection,
          specifiedType:
              const FullType(GFeedData_users_friends_posts_commentsConnection)),
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
                const FullType(GFeedData_users_friends_posts_creator)));
    }
    return result;
  }

  @override
  GFeedData_users_friends_posts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_users_friends_postsBuilder();

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
                      const FullType(GFeedData_users_friends_posts_creator))!
              as GFeedData_users_friends_posts_creator);
          break;
        case 'likesConnection':
          result.likesConnection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFeedData_users_friends_posts_likesConnection))!
              as GFeedData_users_friends_posts_likesConnection);
          break;
        case 'commentsConnection':
          result.commentsConnection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFeedData_users_friends_posts_commentsConnection))!
              as GFeedData_users_friends_posts_commentsConnection);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedData_users_friends_posts_creatorSerializer
    implements StructuredSerializer<GFeedData_users_friends_posts_creator> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_friends_posts_creator,
    _$GFeedData_users_friends_posts_creator
  ];
  @override
  final String wireName = 'GFeedData_users_friends_posts_creator';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedData_users_friends_posts_creator object,
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
  GFeedData_users_friends_posts_creator deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_users_friends_posts_creatorBuilder();

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

class _$GFeedData_users_friends_posts_likesConnectionSerializer
    implements
        StructuredSerializer<GFeedData_users_friends_posts_likesConnection> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_friends_posts_likesConnection,
    _$GFeedData_users_friends_posts_likesConnection
  ];
  @override
  final String wireName = 'GFeedData_users_friends_posts_likesConnection';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFeedData_users_friends_posts_likesConnection object,
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
  GFeedData_users_friends_posts_likesConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedData_users_friends_posts_likesConnectionBuilder();

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

class _$GFeedData_users_friends_posts_commentsConnectionSerializer
    implements
        StructuredSerializer<GFeedData_users_friends_posts_commentsConnection> {
  @override
  final Iterable<Type> types = const [
    GFeedData_users_friends_posts_commentsConnection,
    _$GFeedData_users_friends_posts_commentsConnection
  ];
  @override
  final String wireName = 'GFeedData_users_friends_posts_commentsConnection';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFeedData_users_friends_posts_commentsConnection object,
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
  GFeedData_users_friends_posts_commentsConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GFeedData_users_friends_posts_commentsConnectionBuilder();

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

class _$GFeedData extends GFeedData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFeedData_users> users;

  factory _$GFeedData([void Function(GFeedDataBuilder)? updates]) =>
      (new GFeedDataBuilder()..update(updates)).build();

  _$GFeedData._({required this.G__typename, required this.users}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(users, 'GFeedData', 'users');
  }

  @override
  GFeedData rebuild(void Function(GFeedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedDataBuilder toBuilder() => new GFeedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GFeedDataBuilder implements Builder<GFeedData, GFeedDataBuilder> {
  _$GFeedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFeedData_users>? _users;
  ListBuilder<GFeedData_users> get users =>
      _$this._users ??= new ListBuilder<GFeedData_users>();
  set users(ListBuilder<GFeedData_users>? users) => _$this._users = users;

  GFeedDataBuilder() {
    GFeedData._initializeBuilder(this);
  }

  GFeedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData;
  }

  @override
  void update(void Function(GFeedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData build() {
    _$GFeedData _$result;
    try {
      _$result = _$v ??
          new _$GFeedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedData', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users extends GFeedData_users {
  @override
  final String G__typename;
  @override
  final BuiltList<GFeedData_users_postLikes> postLikes;
  @override
  final BuiltList<GFeedData_users_friends> friends;

  factory _$GFeedData_users([void Function(GFeedData_usersBuilder)? updates]) =>
      (new GFeedData_usersBuilder()..update(updates)).build();

  _$GFeedData_users._(
      {required this.G__typename,
      required this.postLikes,
      required this.friends})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        postLikes, 'GFeedData_users', 'postLikes');
    BuiltValueNullFieldError.checkNotNull(
        friends, 'GFeedData_users', 'friends');
  }

  @override
  GFeedData_users rebuild(void Function(GFeedData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_usersBuilder toBuilder() =>
      new GFeedData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users &&
        G__typename == other.G__typename &&
        postLikes == other.postLikes &&
        friends == other.friends;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), postLikes.hashCode),
        friends.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedData_users')
          ..add('G__typename', G__typename)
          ..add('postLikes', postLikes)
          ..add('friends', friends))
        .toString();
  }
}

class GFeedData_usersBuilder
    implements Builder<GFeedData_users, GFeedData_usersBuilder> {
  _$GFeedData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFeedData_users_postLikes>? _postLikes;
  ListBuilder<GFeedData_users_postLikes> get postLikes =>
      _$this._postLikes ??= new ListBuilder<GFeedData_users_postLikes>();
  set postLikes(ListBuilder<GFeedData_users_postLikes>? postLikes) =>
      _$this._postLikes = postLikes;

  ListBuilder<GFeedData_users_friends>? _friends;
  ListBuilder<GFeedData_users_friends> get friends =>
      _$this._friends ??= new ListBuilder<GFeedData_users_friends>();
  set friends(ListBuilder<GFeedData_users_friends>? friends) =>
      _$this._friends = friends;

  GFeedData_usersBuilder() {
    GFeedData_users._initializeBuilder(this);
  }

  GFeedData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _postLikes = $v.postLikes.toBuilder();
      _friends = $v.friends.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users;
  }

  @override
  void update(void Function(GFeedData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users build() {
    _$GFeedData_users _$result;
    try {
      _$result = _$v ??
          new _$GFeedData_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedData_users', 'G__typename'),
              postLikes: postLikes.build(),
              friends: friends.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postLikes';
        postLikes.build();
        _$failedField = 'friends';
        friends.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedData_users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_postLikes extends GFeedData_users_postLikes {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GFeedData_users_postLikes(
          [void Function(GFeedData_users_postLikesBuilder)? updates]) =>
      (new GFeedData_users_postLikesBuilder()..update(updates)).build();

  _$GFeedData_users_postLikes._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedData_users_postLikes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFeedData_users_postLikes', 'id');
  }

  @override
  GFeedData_users_postLikes rebuild(
          void Function(GFeedData_users_postLikesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_postLikesBuilder toBuilder() =>
      new GFeedData_users_postLikesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_postLikes &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedData_users_postLikes')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GFeedData_users_postLikesBuilder
    implements
        Builder<GFeedData_users_postLikes, GFeedData_users_postLikesBuilder> {
  _$GFeedData_users_postLikes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GFeedData_users_postLikesBuilder() {
    GFeedData_users_postLikes._initializeBuilder(this);
  }

  GFeedData_users_postLikesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData_users_postLikes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_postLikes;
  }

  @override
  void update(void Function(GFeedData_users_postLikesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_postLikes build() {
    final _$result = _$v ??
        new _$GFeedData_users_postLikes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFeedData_users_postLikes', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFeedData_users_postLikes', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_friends extends GFeedData_users_friends {
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
  final GFeedData_users_friends_storiesConnection storiesConnection;
  @override
  final BuiltList<GFeedData_users_friends_posts> posts;

  factory _$GFeedData_users_friends(
          [void Function(GFeedData_users_friendsBuilder)? updates]) =>
      (new GFeedData_users_friendsBuilder()..update(updates)).build();

  _$GFeedData_users_friends._(
      {required this.G__typename,
      required this.id,
      required this.firstName,
      required this.lastName,
      this.image,
      required this.storiesConnection,
      required this.posts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedData_users_friends', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GFeedData_users_friends', 'id');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GFeedData_users_friends', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GFeedData_users_friends', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        storiesConnection, 'GFeedData_users_friends', 'storiesConnection');
    BuiltValueNullFieldError.checkNotNull(
        posts, 'GFeedData_users_friends', 'posts');
  }

  @override
  GFeedData_users_friends rebuild(
          void Function(GFeedData_users_friendsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_friendsBuilder toBuilder() =>
      new GFeedData_users_friendsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_friends &&
        G__typename == other.G__typename &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        image == other.image &&
        storiesConnection == other.storiesConnection &&
        posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        firstName.hashCode),
                    lastName.hashCode),
                image.hashCode),
            storiesConnection.hashCode),
        posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedData_users_friends')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('image', image)
          ..add('storiesConnection', storiesConnection)
          ..add('posts', posts))
        .toString();
  }
}

class GFeedData_users_friendsBuilder
    implements
        Builder<GFeedData_users_friends, GFeedData_users_friendsBuilder> {
  _$GFeedData_users_friends? _$v;

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

  GFeedData_users_friends_storiesConnectionBuilder? _storiesConnection;
  GFeedData_users_friends_storiesConnectionBuilder get storiesConnection =>
      _$this._storiesConnection ??=
          new GFeedData_users_friends_storiesConnectionBuilder();
  set storiesConnection(
          GFeedData_users_friends_storiesConnectionBuilder?
              storiesConnection) =>
      _$this._storiesConnection = storiesConnection;

  ListBuilder<GFeedData_users_friends_posts>? _posts;
  ListBuilder<GFeedData_users_friends_posts> get posts =>
      _$this._posts ??= new ListBuilder<GFeedData_users_friends_posts>();
  set posts(ListBuilder<GFeedData_users_friends_posts>? posts) =>
      _$this._posts = posts;

  GFeedData_users_friendsBuilder() {
    GFeedData_users_friends._initializeBuilder(this);
  }

  GFeedData_users_friendsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _image = $v.image;
      _storiesConnection = $v.storiesConnection.toBuilder();
      _posts = $v.posts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData_users_friends other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_friends;
  }

  @override
  void update(void Function(GFeedData_users_friendsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_friends build() {
    _$GFeedData_users_friends _$result;
    try {
      _$result = _$v ??
          new _$GFeedData_users_friends._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedData_users_friends', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFeedData_users_friends', 'id'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'GFeedData_users_friends', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'GFeedData_users_friends', 'lastName'),
              image: image,
              storiesConnection: storiesConnection.build(),
              posts: posts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storiesConnection';
        storiesConnection.build();
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedData_users_friends', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_friends_storiesConnection
    extends GFeedData_users_friends_storiesConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GFeedData_users_friends_storiesConnection(
          [void Function(GFeedData_users_friends_storiesConnectionBuilder)?
              updates]) =>
      (new GFeedData_users_friends_storiesConnectionBuilder()..update(updates))
          .build();

  _$GFeedData_users_friends_storiesConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GFeedData_users_friends_storiesConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GFeedData_users_friends_storiesConnection', 'totalCount');
  }

  @override
  GFeedData_users_friends_storiesConnection rebuild(
          void Function(GFeedData_users_friends_storiesConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_friends_storiesConnectionBuilder toBuilder() =>
      new GFeedData_users_friends_storiesConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_friends_storiesConnection &&
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
            'GFeedData_users_friends_storiesConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GFeedData_users_friends_storiesConnectionBuilder
    implements
        Builder<GFeedData_users_friends_storiesConnection,
            GFeedData_users_friends_storiesConnectionBuilder> {
  _$GFeedData_users_friends_storiesConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFeedData_users_friends_storiesConnectionBuilder() {
    GFeedData_users_friends_storiesConnection._initializeBuilder(this);
  }

  GFeedData_users_friends_storiesConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData_users_friends_storiesConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_friends_storiesConnection;
  }

  @override
  void update(
      void Function(GFeedData_users_friends_storiesConnectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_friends_storiesConnection build() {
    final _$result = _$v ??
        new _$GFeedData_users_friends_storiesConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFeedData_users_friends_storiesConnection', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GFeedData_users_friends_storiesConnection', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_friends_posts extends GFeedData_users_friends_posts {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? music;
  @override
  final BuiltList<String> media;
  @override
  final GFeedData_users_friends_posts_creator? creator;
  @override
  final GFeedData_users_friends_posts_likesConnection likesConnection;
  @override
  final GFeedData_users_friends_posts_commentsConnection commentsConnection;

  factory _$GFeedData_users_friends_posts(
          [void Function(GFeedData_users_friends_postsBuilder)? updates]) =>
      (new GFeedData_users_friends_postsBuilder()..update(updates)).build();

  _$GFeedData_users_friends_posts._(
      {required this.G__typename,
      required this.id,
      this.music,
      required this.media,
      this.creator,
      required this.likesConnection,
      required this.commentsConnection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedData_users_friends_posts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFeedData_users_friends_posts', 'id');
    BuiltValueNullFieldError.checkNotNull(
        media, 'GFeedData_users_friends_posts', 'media');
    BuiltValueNullFieldError.checkNotNull(
        likesConnection, 'GFeedData_users_friends_posts', 'likesConnection');
    BuiltValueNullFieldError.checkNotNull(commentsConnection,
        'GFeedData_users_friends_posts', 'commentsConnection');
  }

  @override
  GFeedData_users_friends_posts rebuild(
          void Function(GFeedData_users_friends_postsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_friends_postsBuilder toBuilder() =>
      new GFeedData_users_friends_postsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_friends_posts &&
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
    return (newBuiltValueToStringHelper('GFeedData_users_friends_posts')
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

class GFeedData_users_friends_postsBuilder
    implements
        Builder<GFeedData_users_friends_posts,
            GFeedData_users_friends_postsBuilder> {
  _$GFeedData_users_friends_posts? _$v;

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

  GFeedData_users_friends_posts_creatorBuilder? _creator;
  GFeedData_users_friends_posts_creatorBuilder get creator =>
      _$this._creator ??= new GFeedData_users_friends_posts_creatorBuilder();
  set creator(GFeedData_users_friends_posts_creatorBuilder? creator) =>
      _$this._creator = creator;

  GFeedData_users_friends_posts_likesConnectionBuilder? _likesConnection;
  GFeedData_users_friends_posts_likesConnectionBuilder get likesConnection =>
      _$this._likesConnection ??=
          new GFeedData_users_friends_posts_likesConnectionBuilder();
  set likesConnection(
          GFeedData_users_friends_posts_likesConnectionBuilder?
              likesConnection) =>
      _$this._likesConnection = likesConnection;

  GFeedData_users_friends_posts_commentsConnectionBuilder? _commentsConnection;
  GFeedData_users_friends_posts_commentsConnectionBuilder
      get commentsConnection => _$this._commentsConnection ??=
          new GFeedData_users_friends_posts_commentsConnectionBuilder();
  set commentsConnection(
          GFeedData_users_friends_posts_commentsConnectionBuilder?
              commentsConnection) =>
      _$this._commentsConnection = commentsConnection;

  GFeedData_users_friends_postsBuilder() {
    GFeedData_users_friends_posts._initializeBuilder(this);
  }

  GFeedData_users_friends_postsBuilder get _$this {
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
  void replace(GFeedData_users_friends_posts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_friends_posts;
  }

  @override
  void update(void Function(GFeedData_users_friends_postsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_friends_posts build() {
    _$GFeedData_users_friends_posts _$result;
    try {
      _$result = _$v ??
          new _$GFeedData_users_friends_posts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedData_users_friends_posts', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFeedData_users_friends_posts', 'id'),
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
            'GFeedData_users_friends_posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_friends_posts_creator
    extends GFeedData_users_friends_posts_creator {
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

  factory _$GFeedData_users_friends_posts_creator(
          [void Function(GFeedData_users_friends_posts_creatorBuilder)?
              updates]) =>
      (new GFeedData_users_friends_posts_creatorBuilder()..update(updates))
          .build();

  _$GFeedData_users_friends_posts_creator._(
      {required this.G__typename,
      required this.id,
      required this.firstName,
      required this.lastName,
      this.image,
      required this.pseudo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedData_users_friends_posts_creator', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFeedData_users_friends_posts_creator', 'id');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GFeedData_users_friends_posts_creator', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GFeedData_users_friends_posts_creator', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        pseudo, 'GFeedData_users_friends_posts_creator', 'pseudo');
  }

  @override
  GFeedData_users_friends_posts_creator rebuild(
          void Function(GFeedData_users_friends_posts_creatorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_friends_posts_creatorBuilder toBuilder() =>
      new GFeedData_users_friends_posts_creatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_friends_posts_creator &&
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
    return (newBuiltValueToStringHelper('GFeedData_users_friends_posts_creator')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('image', image)
          ..add('pseudo', pseudo))
        .toString();
  }
}

class GFeedData_users_friends_posts_creatorBuilder
    implements
        Builder<GFeedData_users_friends_posts_creator,
            GFeedData_users_friends_posts_creatorBuilder> {
  _$GFeedData_users_friends_posts_creator? _$v;

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

  GFeedData_users_friends_posts_creatorBuilder() {
    GFeedData_users_friends_posts_creator._initializeBuilder(this);
  }

  GFeedData_users_friends_posts_creatorBuilder get _$this {
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
  void replace(GFeedData_users_friends_posts_creator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_friends_posts_creator;
  }

  @override
  void update(
      void Function(GFeedData_users_friends_posts_creatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_friends_posts_creator build() {
    final _$result = _$v ??
        new _$GFeedData_users_friends_posts_creator._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFeedData_users_friends_posts_creator', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFeedData_users_friends_posts_creator', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                'GFeedData_users_friends_posts_creator', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GFeedData_users_friends_posts_creator', 'lastName'),
            image: image,
            pseudo: BuiltValueNullFieldError.checkNotNull(
                pseudo, 'GFeedData_users_friends_posts_creator', 'pseudo'));
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_friends_posts_likesConnection
    extends GFeedData_users_friends_posts_likesConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GFeedData_users_friends_posts_likesConnection(
          [void Function(GFeedData_users_friends_posts_likesConnectionBuilder)?
              updates]) =>
      (new GFeedData_users_friends_posts_likesConnectionBuilder()
            ..update(updates))
          .build();

  _$GFeedData_users_friends_posts_likesConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GFeedData_users_friends_posts_likesConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GFeedData_users_friends_posts_likesConnection', 'totalCount');
  }

  @override
  GFeedData_users_friends_posts_likesConnection rebuild(
          void Function(GFeedData_users_friends_posts_likesConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_friends_posts_likesConnectionBuilder toBuilder() =>
      new GFeedData_users_friends_posts_likesConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_friends_posts_likesConnection &&
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
            'GFeedData_users_friends_posts_likesConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GFeedData_users_friends_posts_likesConnectionBuilder
    implements
        Builder<GFeedData_users_friends_posts_likesConnection,
            GFeedData_users_friends_posts_likesConnectionBuilder> {
  _$GFeedData_users_friends_posts_likesConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFeedData_users_friends_posts_likesConnectionBuilder() {
    GFeedData_users_friends_posts_likesConnection._initializeBuilder(this);
  }

  GFeedData_users_friends_posts_likesConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData_users_friends_posts_likesConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_friends_posts_likesConnection;
  }

  @override
  void update(
      void Function(GFeedData_users_friends_posts_likesConnectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_friends_posts_likesConnection build() {
    final _$result = _$v ??
        new _$GFeedData_users_friends_posts_likesConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFeedData_users_friends_posts_likesConnection', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GFeedData_users_friends_posts_likesConnection', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GFeedData_users_friends_posts_commentsConnection
    extends GFeedData_users_friends_posts_commentsConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GFeedData_users_friends_posts_commentsConnection(
          [void Function(
                  GFeedData_users_friends_posts_commentsConnectionBuilder)?
              updates]) =>
      (new GFeedData_users_friends_posts_commentsConnectionBuilder()
            ..update(updates))
          .build();

  _$GFeedData_users_friends_posts_commentsConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GFeedData_users_friends_posts_commentsConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GFeedData_users_friends_posts_commentsConnection', 'totalCount');
  }

  @override
  GFeedData_users_friends_posts_commentsConnection rebuild(
          void Function(GFeedData_users_friends_posts_commentsConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedData_users_friends_posts_commentsConnectionBuilder toBuilder() =>
      new GFeedData_users_friends_posts_commentsConnectionBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedData_users_friends_posts_commentsConnection &&
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
            'GFeedData_users_friends_posts_commentsConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GFeedData_users_friends_posts_commentsConnectionBuilder
    implements
        Builder<GFeedData_users_friends_posts_commentsConnection,
            GFeedData_users_friends_posts_commentsConnectionBuilder> {
  _$GFeedData_users_friends_posts_commentsConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFeedData_users_friends_posts_commentsConnectionBuilder() {
    GFeedData_users_friends_posts_commentsConnection._initializeBuilder(this);
  }

  GFeedData_users_friends_posts_commentsConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedData_users_friends_posts_commentsConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedData_users_friends_posts_commentsConnection;
  }

  @override
  void update(
      void Function(GFeedData_users_friends_posts_commentsConnectionBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedData_users_friends_posts_commentsConnection build() {
    final _$result = _$v ??
        new _$GFeedData_users_friends_posts_commentsConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GFeedData_users_friends_posts_commentsConnection',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GFeedData_users_friends_posts_commentsConnection',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_info.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedInfoData> _$gFeedInfoDataSerializer =
    new _$GFeedInfoDataSerializer();
Serializer<GFeedInfoData_users> _$gFeedInfoDataUsersSerializer =
    new _$GFeedInfoData_usersSerializer();
Serializer<GFeedInfoData_users_postsConnection>
    _$gFeedInfoDataUsersPostsConnectionSerializer =
    new _$GFeedInfoData_users_postsConnectionSerializer();
Serializer<GFeedInfoData_users_friendsConnection>
    _$gFeedInfoDataUsersFriendsConnectionSerializer =
    new _$GFeedInfoData_users_friendsConnectionSerializer();
Serializer<GFeedInfoData_users_storiesConnection>
    _$gFeedInfoDataUsersStoriesConnectionSerializer =
    new _$GFeedInfoData_users_storiesConnectionSerializer();

class _$GFeedInfoDataSerializer implements StructuredSerializer<GFeedInfoData> {
  @override
  final Iterable<Type> types = const [GFeedInfoData, _$GFeedInfoData];
  @override
  final String wireName = 'GFeedInfoData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedInfoData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GFeedInfoData_users)])),
    ];

    return result;
  }

  @override
  GFeedInfoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedInfoDataBuilder();

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
                      BuiltList, const [const FullType(GFeedInfoData_users)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedInfoData_usersSerializer
    implements StructuredSerializer<GFeedInfoData_users> {
  @override
  final Iterable<Type> types = const [
    GFeedInfoData_users,
    _$GFeedInfoData_users
  ];
  @override
  final String wireName = 'GFeedInfoData_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedInfoData_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'pseudo',
      serializers.serialize(object.pseudo,
          specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'postsConnection',
      serializers.serialize(object.postsConnection,
          specifiedType: const FullType(GFeedInfoData_users_postsConnection)),
      'friendsConnection',
      serializers.serialize(object.friendsConnection,
          specifiedType: const FullType(GFeedInfoData_users_friendsConnection)),
      'storiesConnection',
      serializers.serialize(object.storiesConnection,
          specifiedType: const FullType(GFeedInfoData_users_storiesConnection)),
    ];
    Object? value;
    value = object.biography;
    if (value != null) {
      result
        ..add('biography')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GFeedInfoData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedInfoData_usersBuilder();

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
        case 'pseudo':
          result.pseudo = serializers.deserialize(value,
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
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postsConnection':
          result.postsConnection.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFeedInfoData_users_postsConnection))!
              as GFeedInfoData_users_postsConnection);
          break;
        case 'friendsConnection':
          result.friendsConnection.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFeedInfoData_users_friendsConnection))!
              as GFeedInfoData_users_friendsConnection);
          break;
        case 'storiesConnection':
          result.storiesConnection.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFeedInfoData_users_storiesConnection))!
              as GFeedInfoData_users_storiesConnection);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedInfoData_users_postsConnectionSerializer
    implements StructuredSerializer<GFeedInfoData_users_postsConnection> {
  @override
  final Iterable<Type> types = const [
    GFeedInfoData_users_postsConnection,
    _$GFeedInfoData_users_postsConnection
  ];
  @override
  final String wireName = 'GFeedInfoData_users_postsConnection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedInfoData_users_postsConnection object,
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
  GFeedInfoData_users_postsConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedInfoData_users_postsConnectionBuilder();

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

class _$GFeedInfoData_users_friendsConnectionSerializer
    implements StructuredSerializer<GFeedInfoData_users_friendsConnection> {
  @override
  final Iterable<Type> types = const [
    GFeedInfoData_users_friendsConnection,
    _$GFeedInfoData_users_friendsConnection
  ];
  @override
  final String wireName = 'GFeedInfoData_users_friendsConnection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedInfoData_users_friendsConnection object,
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
  GFeedInfoData_users_friendsConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedInfoData_users_friendsConnectionBuilder();

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

class _$GFeedInfoData_users_storiesConnectionSerializer
    implements StructuredSerializer<GFeedInfoData_users_storiesConnection> {
  @override
  final Iterable<Type> types = const [
    GFeedInfoData_users_storiesConnection,
    _$GFeedInfoData_users_storiesConnection
  ];
  @override
  final String wireName = 'GFeedInfoData_users_storiesConnection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedInfoData_users_storiesConnection object,
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
  GFeedInfoData_users_storiesConnection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedInfoData_users_storiesConnectionBuilder();

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

class _$GFeedInfoData extends GFeedInfoData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFeedInfoData_users> users;

  factory _$GFeedInfoData([void Function(GFeedInfoDataBuilder)? updates]) =>
      (new GFeedInfoDataBuilder()..update(updates)).build();

  _$GFeedInfoData._({required this.G__typename, required this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedInfoData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(users, 'GFeedInfoData', 'users');
  }

  @override
  GFeedInfoData rebuild(void Function(GFeedInfoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedInfoDataBuilder toBuilder() => new GFeedInfoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedInfoData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedInfoData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GFeedInfoDataBuilder
    implements Builder<GFeedInfoData, GFeedInfoDataBuilder> {
  _$GFeedInfoData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFeedInfoData_users>? _users;
  ListBuilder<GFeedInfoData_users> get users =>
      _$this._users ??= new ListBuilder<GFeedInfoData_users>();
  set users(ListBuilder<GFeedInfoData_users>? users) => _$this._users = users;

  GFeedInfoDataBuilder() {
    GFeedInfoData._initializeBuilder(this);
  }

  GFeedInfoDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedInfoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedInfoData;
  }

  @override
  void update(void Function(GFeedInfoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedInfoData build() {
    _$GFeedInfoData _$result;
    try {
      _$result = _$v ??
          new _$GFeedInfoData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedInfoData', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedInfoData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedInfoData_users extends GFeedInfoData_users {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String pseudo;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? biography;
  @override
  final String? image;
  @override
  final GFeedInfoData_users_postsConnection postsConnection;
  @override
  final GFeedInfoData_users_friendsConnection friendsConnection;
  @override
  final GFeedInfoData_users_storiesConnection storiesConnection;

  factory _$GFeedInfoData_users(
          [void Function(GFeedInfoData_usersBuilder)? updates]) =>
      (new GFeedInfoData_usersBuilder()..update(updates)).build();

  _$GFeedInfoData_users._(
      {required this.G__typename,
      required this.id,
      required this.pseudo,
      required this.firstName,
      required this.lastName,
      this.biography,
      this.image,
      required this.postsConnection,
      required this.friendsConnection,
      required this.storiesConnection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedInfoData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GFeedInfoData_users', 'id');
    BuiltValueNullFieldError.checkNotNull(
        pseudo, 'GFeedInfoData_users', 'pseudo');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GFeedInfoData_users', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GFeedInfoData_users', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        postsConnection, 'GFeedInfoData_users', 'postsConnection');
    BuiltValueNullFieldError.checkNotNull(
        friendsConnection, 'GFeedInfoData_users', 'friendsConnection');
    BuiltValueNullFieldError.checkNotNull(
        storiesConnection, 'GFeedInfoData_users', 'storiesConnection');
  }

  @override
  GFeedInfoData_users rebuild(
          void Function(GFeedInfoData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedInfoData_usersBuilder toBuilder() =>
      new GFeedInfoData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedInfoData_users &&
        G__typename == other.G__typename &&
        id == other.id &&
        pseudo == other.pseudo &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        biography == other.biography &&
        image == other.image &&
        postsConnection == other.postsConnection &&
        friendsConnection == other.friendsConnection &&
        storiesConnection == other.storiesConnection;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        id.hashCode),
                                    pseudo.hashCode),
                                firstName.hashCode),
                            lastName.hashCode),
                        biography.hashCode),
                    image.hashCode),
                postsConnection.hashCode),
            friendsConnection.hashCode),
        storiesConnection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedInfoData_users')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('pseudo', pseudo)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('biography', biography)
          ..add('image', image)
          ..add('postsConnection', postsConnection)
          ..add('friendsConnection', friendsConnection)
          ..add('storiesConnection', storiesConnection))
        .toString();
  }
}

class GFeedInfoData_usersBuilder
    implements Builder<GFeedInfoData_users, GFeedInfoData_usersBuilder> {
  _$GFeedInfoData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _pseudo;
  String? get pseudo => _$this._pseudo;
  set pseudo(String? pseudo) => _$this._pseudo = pseudo;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _biography;
  String? get biography => _$this._biography;
  set biography(String? biography) => _$this._biography = biography;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GFeedInfoData_users_postsConnectionBuilder? _postsConnection;
  GFeedInfoData_users_postsConnectionBuilder get postsConnection =>
      _$this._postsConnection ??=
          new GFeedInfoData_users_postsConnectionBuilder();
  set postsConnection(
          GFeedInfoData_users_postsConnectionBuilder? postsConnection) =>
      _$this._postsConnection = postsConnection;

  GFeedInfoData_users_friendsConnectionBuilder? _friendsConnection;
  GFeedInfoData_users_friendsConnectionBuilder get friendsConnection =>
      _$this._friendsConnection ??=
          new GFeedInfoData_users_friendsConnectionBuilder();
  set friendsConnection(
          GFeedInfoData_users_friendsConnectionBuilder? friendsConnection) =>
      _$this._friendsConnection = friendsConnection;

  GFeedInfoData_users_storiesConnectionBuilder? _storiesConnection;
  GFeedInfoData_users_storiesConnectionBuilder get storiesConnection =>
      _$this._storiesConnection ??=
          new GFeedInfoData_users_storiesConnectionBuilder();
  set storiesConnection(
          GFeedInfoData_users_storiesConnectionBuilder? storiesConnection) =>
      _$this._storiesConnection = storiesConnection;

  GFeedInfoData_usersBuilder() {
    GFeedInfoData_users._initializeBuilder(this);
  }

  GFeedInfoData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _pseudo = $v.pseudo;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _biography = $v.biography;
      _image = $v.image;
      _postsConnection = $v.postsConnection.toBuilder();
      _friendsConnection = $v.friendsConnection.toBuilder();
      _storiesConnection = $v.storiesConnection.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedInfoData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedInfoData_users;
  }

  @override
  void update(void Function(GFeedInfoData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedInfoData_users build() {
    _$GFeedInfoData_users _$result;
    try {
      _$result = _$v ??
          new _$GFeedInfoData_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedInfoData_users', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFeedInfoData_users', 'id'),
              pseudo: BuiltValueNullFieldError.checkNotNull(
                  pseudo, 'GFeedInfoData_users', 'pseudo'),
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, 'GFeedInfoData_users', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, 'GFeedInfoData_users', 'lastName'),
              biography: biography,
              image: image,
              postsConnection: postsConnection.build(),
              friendsConnection: friendsConnection.build(),
              storiesConnection: storiesConnection.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postsConnection';
        postsConnection.build();
        _$failedField = 'friendsConnection';
        friendsConnection.build();
        _$failedField = 'storiesConnection';
        storiesConnection.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedInfoData_users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedInfoData_users_postsConnection
    extends GFeedInfoData_users_postsConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GFeedInfoData_users_postsConnection(
          [void Function(GFeedInfoData_users_postsConnectionBuilder)?
              updates]) =>
      (new GFeedInfoData_users_postsConnectionBuilder()..update(updates))
          .build();

  _$GFeedInfoData_users_postsConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedInfoData_users_postsConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GFeedInfoData_users_postsConnection', 'totalCount');
  }

  @override
  GFeedInfoData_users_postsConnection rebuild(
          void Function(GFeedInfoData_users_postsConnectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedInfoData_users_postsConnectionBuilder toBuilder() =>
      new GFeedInfoData_users_postsConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedInfoData_users_postsConnection &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedInfoData_users_postsConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GFeedInfoData_users_postsConnectionBuilder
    implements
        Builder<GFeedInfoData_users_postsConnection,
            GFeedInfoData_users_postsConnectionBuilder> {
  _$GFeedInfoData_users_postsConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFeedInfoData_users_postsConnectionBuilder() {
    GFeedInfoData_users_postsConnection._initializeBuilder(this);
  }

  GFeedInfoData_users_postsConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedInfoData_users_postsConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedInfoData_users_postsConnection;
  }

  @override
  void update(
      void Function(GFeedInfoData_users_postsConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedInfoData_users_postsConnection build() {
    final _$result = _$v ??
        new _$GFeedInfoData_users_postsConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFeedInfoData_users_postsConnection', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GFeedInfoData_users_postsConnection', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GFeedInfoData_users_friendsConnection
    extends GFeedInfoData_users_friendsConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GFeedInfoData_users_friendsConnection(
          [void Function(GFeedInfoData_users_friendsConnectionBuilder)?
              updates]) =>
      (new GFeedInfoData_users_friendsConnectionBuilder()..update(updates))
          .build();

  _$GFeedInfoData_users_friendsConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedInfoData_users_friendsConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GFeedInfoData_users_friendsConnection', 'totalCount');
  }

  @override
  GFeedInfoData_users_friendsConnection rebuild(
          void Function(GFeedInfoData_users_friendsConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedInfoData_users_friendsConnectionBuilder toBuilder() =>
      new GFeedInfoData_users_friendsConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedInfoData_users_friendsConnection &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedInfoData_users_friendsConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GFeedInfoData_users_friendsConnectionBuilder
    implements
        Builder<GFeedInfoData_users_friendsConnection,
            GFeedInfoData_users_friendsConnectionBuilder> {
  _$GFeedInfoData_users_friendsConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFeedInfoData_users_friendsConnectionBuilder() {
    GFeedInfoData_users_friendsConnection._initializeBuilder(this);
  }

  GFeedInfoData_users_friendsConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedInfoData_users_friendsConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedInfoData_users_friendsConnection;
  }

  @override
  void update(
      void Function(GFeedInfoData_users_friendsConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedInfoData_users_friendsConnection build() {
    final _$result = _$v ??
        new _$GFeedInfoData_users_friendsConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFeedInfoData_users_friendsConnection', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GFeedInfoData_users_friendsConnection', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GFeedInfoData_users_storiesConnection
    extends GFeedInfoData_users_storiesConnection {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GFeedInfoData_users_storiesConnection(
          [void Function(GFeedInfoData_users_storiesConnectionBuilder)?
              updates]) =>
      (new GFeedInfoData_users_storiesConnectionBuilder()..update(updates))
          .build();

  _$GFeedInfoData_users_storiesConnection._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedInfoData_users_storiesConnection', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GFeedInfoData_users_storiesConnection', 'totalCount');
  }

  @override
  GFeedInfoData_users_storiesConnection rebuild(
          void Function(GFeedInfoData_users_storiesConnectionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedInfoData_users_storiesConnectionBuilder toBuilder() =>
      new GFeedInfoData_users_storiesConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedInfoData_users_storiesConnection &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedInfoData_users_storiesConnection')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GFeedInfoData_users_storiesConnectionBuilder
    implements
        Builder<GFeedInfoData_users_storiesConnection,
            GFeedInfoData_users_storiesConnectionBuilder> {
  _$GFeedInfoData_users_storiesConnection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFeedInfoData_users_storiesConnectionBuilder() {
    GFeedInfoData_users_storiesConnection._initializeBuilder(this);
  }

  GFeedInfoData_users_storiesConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedInfoData_users_storiesConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedInfoData_users_storiesConnection;
  }

  @override
  void update(
      void Function(GFeedInfoData_users_storiesConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedInfoData_users_storiesConnection build() {
    final _$result = _$v ??
        new _$GFeedInfoData_users_storiesConnection._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFeedInfoData_users_storiesConnection', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GFeedInfoData_users_storiesConnection', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

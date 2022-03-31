// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_localisation.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFriendsLocalisationData> _$gFriendsLocalisationDataSerializer =
    new _$GFriendsLocalisationDataSerializer();
Serializer<GFriendsLocalisationData_users>
    _$gFriendsLocalisationDataUsersSerializer =
    new _$GFriendsLocalisationData_usersSerializer();
Serializer<GFriendsLocalisationData_users_location>
    _$gFriendsLocalisationDataUsersLocationSerializer =
    new _$GFriendsLocalisationData_users_locationSerializer();
Serializer<GFriendsLocalisationData_users_friends>
    _$gFriendsLocalisationDataUsersFriendsSerializer =
    new _$GFriendsLocalisationData_users_friendsSerializer();
Serializer<GFriendsLocalisationData_users_friends_location>
    _$gFriendsLocalisationDataUsersFriendsLocationSerializer =
    new _$GFriendsLocalisationData_users_friends_locationSerializer();

class _$GFriendsLocalisationDataSerializer
    implements StructuredSerializer<GFriendsLocalisationData> {
  @override
  final Iterable<Type> types = const [
    GFriendsLocalisationData,
    _$GFriendsLocalisationData
  ];
  @override
  final String wireName = 'GFriendsLocalisationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFriendsLocalisationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFriendsLocalisationData_users)])),
    ];

    return result;
  }

  @override
  GFriendsLocalisationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFriendsLocalisationDataBuilder();

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
                const FullType(GFriendsLocalisationData_users)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFriendsLocalisationData_usersSerializer
    implements StructuredSerializer<GFriendsLocalisationData_users> {
  @override
  final Iterable<Type> types = const [
    GFriendsLocalisationData_users,
    _$GFriendsLocalisationData_users
  ];
  @override
  final String wireName = 'GFriendsLocalisationData_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFriendsLocalisationData_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'friends',
      serializers.serialize(object.friends,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFriendsLocalisationData_users_friends)])),
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GFriendsLocalisationData_users_location)));
    }
    return result;
  }

  @override
  GFriendsLocalisationData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFriendsLocalisationData_usersBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFriendsLocalisationData_users_location))!
              as GFriendsLocalisationData_users_location);
          break;
        case 'friends':
          result.friends.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GFriendsLocalisationData_users_friends)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GFriendsLocalisationData_users_locationSerializer
    implements StructuredSerializer<GFriendsLocalisationData_users_location> {
  @override
  final Iterable<Type> types = const [
    GFriendsLocalisationData_users_location,
    _$GFriendsLocalisationData_users_location
  ];
  @override
  final String wireName = 'GFriendsLocalisationData_users_location';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFriendsLocalisationData_users_location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'crs',
      serializers.serialize(object.crs, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFriendsLocalisationData_users_location deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFriendsLocalisationData_users_locationBuilder();

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
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'crs':
          result.crs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFriendsLocalisationData_users_friendsSerializer
    implements StructuredSerializer<GFriendsLocalisationData_users_friends> {
  @override
  final Iterable<Type> types = const [
    GFriendsLocalisationData_users_friends,
    _$GFriendsLocalisationData_users_friends
  ];
  @override
  final String wireName = 'GFriendsLocalisationData_users_friends';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFriendsLocalisationData_users_friends object,
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
    ];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GFriendsLocalisationData_users_friends_location)));
    }
    return result;
  }

  @override
  GFriendsLocalisationData_users_friends deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFriendsLocalisationData_users_friendsBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GFriendsLocalisationData_users_friends_location))!
              as GFriendsLocalisationData_users_friends_location);
          break;
      }
    }

    return result.build();
  }
}

class _$GFriendsLocalisationData_users_friends_locationSerializer
    implements
        StructuredSerializer<GFriendsLocalisationData_users_friends_location> {
  @override
  final Iterable<Type> types = const [
    GFriendsLocalisationData_users_friends_location,
    _$GFriendsLocalisationData_users_friends_location
  ];
  @override
  final String wireName = 'GFriendsLocalisationData_users_friends_location';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GFriendsLocalisationData_users_friends_location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'crs',
      serializers.serialize(object.crs, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFriendsLocalisationData_users_friends_location deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFriendsLocalisationData_users_friends_locationBuilder();

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
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'crs':
          result.crs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFriendsLocalisationData extends GFriendsLocalisationData {
  @override
  final String G__typename;
  @override
  final BuiltList<GFriendsLocalisationData_users> users;

  factory _$GFriendsLocalisationData(
          [void Function(GFriendsLocalisationDataBuilder)? updates]) =>
      (new GFriendsLocalisationDataBuilder()..update(updates)).build();

  _$GFriendsLocalisationData._({required this.G__typename, required this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFriendsLocalisationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        users, 'GFriendsLocalisationData', 'users');
  }

  @override
  GFriendsLocalisationData rebuild(
          void Function(GFriendsLocalisationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFriendsLocalisationDataBuilder toBuilder() =>
      new GFriendsLocalisationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFriendsLocalisationData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFriendsLocalisationData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GFriendsLocalisationDataBuilder
    implements
        Builder<GFriendsLocalisationData, GFriendsLocalisationDataBuilder> {
  _$GFriendsLocalisationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFriendsLocalisationData_users>? _users;
  ListBuilder<GFriendsLocalisationData_users> get users =>
      _$this._users ??= new ListBuilder<GFriendsLocalisationData_users>();
  set users(ListBuilder<GFriendsLocalisationData_users>? users) =>
      _$this._users = users;

  GFriendsLocalisationDataBuilder() {
    GFriendsLocalisationData._initializeBuilder(this);
  }

  GFriendsLocalisationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFriendsLocalisationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFriendsLocalisationData;
  }

  @override
  void update(void Function(GFriendsLocalisationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFriendsLocalisationData build() {
    _$GFriendsLocalisationData _$result;
    try {
      _$result = _$v ??
          new _$GFriendsLocalisationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFriendsLocalisationData', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFriendsLocalisationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFriendsLocalisationData_users extends GFriendsLocalisationData_users {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? image;
  @override
  final GFriendsLocalisationData_users_location? location;
  @override
  final BuiltList<GFriendsLocalisationData_users_friends> friends;

  factory _$GFriendsLocalisationData_users(
          [void Function(GFriendsLocalisationData_usersBuilder)? updates]) =>
      (new GFriendsLocalisationData_usersBuilder()..update(updates)).build();

  _$GFriendsLocalisationData_users._(
      {required this.G__typename,
      required this.id,
      this.image,
      this.location,
      required this.friends})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFriendsLocalisationData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFriendsLocalisationData_users', 'id');
    BuiltValueNullFieldError.checkNotNull(
        friends, 'GFriendsLocalisationData_users', 'friends');
  }

  @override
  GFriendsLocalisationData_users rebuild(
          void Function(GFriendsLocalisationData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFriendsLocalisationData_usersBuilder toBuilder() =>
      new GFriendsLocalisationData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFriendsLocalisationData_users &&
        G__typename == other.G__typename &&
        id == other.id &&
        image == other.image &&
        location == other.location &&
        friends == other.friends;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), image.hashCode),
            location.hashCode),
        friends.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFriendsLocalisationData_users')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('image', image)
          ..add('location', location)
          ..add('friends', friends))
        .toString();
  }
}

class GFriendsLocalisationData_usersBuilder
    implements
        Builder<GFriendsLocalisationData_users,
            GFriendsLocalisationData_usersBuilder> {
  _$GFriendsLocalisationData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  GFriendsLocalisationData_users_locationBuilder? _location;
  GFriendsLocalisationData_users_locationBuilder get location =>
      _$this._location ??= new GFriendsLocalisationData_users_locationBuilder();
  set location(GFriendsLocalisationData_users_locationBuilder? location) =>
      _$this._location = location;

  ListBuilder<GFriendsLocalisationData_users_friends>? _friends;
  ListBuilder<GFriendsLocalisationData_users_friends> get friends =>
      _$this._friends ??=
          new ListBuilder<GFriendsLocalisationData_users_friends>();
  set friends(ListBuilder<GFriendsLocalisationData_users_friends>? friends) =>
      _$this._friends = friends;

  GFriendsLocalisationData_usersBuilder() {
    GFriendsLocalisationData_users._initializeBuilder(this);
  }

  GFriendsLocalisationData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _image = $v.image;
      _location = $v.location?.toBuilder();
      _friends = $v.friends.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFriendsLocalisationData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFriendsLocalisationData_users;
  }

  @override
  void update(void Function(GFriendsLocalisationData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFriendsLocalisationData_users build() {
    _$GFriendsLocalisationData_users _$result;
    try {
      _$result = _$v ??
          new _$GFriendsLocalisationData_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFriendsLocalisationData_users', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFriendsLocalisationData_users', 'id'),
              image: image,
              location: _location?.build(),
              friends: friends.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'friends';
        friends.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFriendsLocalisationData_users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFriendsLocalisationData_users_location
    extends GFriendsLocalisationData_users_location {
  @override
  final String G__typename;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String crs;

  factory _$GFriendsLocalisationData_users_location(
          [void Function(GFriendsLocalisationData_users_locationBuilder)?
              updates]) =>
      (new GFriendsLocalisationData_users_locationBuilder()..update(updates))
          .build();

  _$GFriendsLocalisationData_users_location._(
      {required this.G__typename,
      required this.latitude,
      required this.longitude,
      required this.crs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFriendsLocalisationData_users_location', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'GFriendsLocalisationData_users_location', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'GFriendsLocalisationData_users_location', 'longitude');
    BuiltValueNullFieldError.checkNotNull(
        crs, 'GFriendsLocalisationData_users_location', 'crs');
  }

  @override
  GFriendsLocalisationData_users_location rebuild(
          void Function(GFriendsLocalisationData_users_locationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFriendsLocalisationData_users_locationBuilder toBuilder() =>
      new GFriendsLocalisationData_users_locationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFriendsLocalisationData_users_location &&
        G__typename == other.G__typename &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        crs == other.crs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), latitude.hashCode),
            longitude.hashCode),
        crs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFriendsLocalisationData_users_location')
          ..add('G__typename', G__typename)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('crs', crs))
        .toString();
  }
}

class GFriendsLocalisationData_users_locationBuilder
    implements
        Builder<GFriendsLocalisationData_users_location,
            GFriendsLocalisationData_users_locationBuilder> {
  _$GFriendsLocalisationData_users_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  GFriendsLocalisationData_users_locationBuilder() {
    GFriendsLocalisationData_users_location._initializeBuilder(this);
  }

  GFriendsLocalisationData_users_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _crs = $v.crs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFriendsLocalisationData_users_location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFriendsLocalisationData_users_location;
  }

  @override
  void update(
      void Function(GFriendsLocalisationData_users_locationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFriendsLocalisationData_users_location build() {
    final _$result = _$v ??
        new _$GFriendsLocalisationData_users_location._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFriendsLocalisationData_users_location', 'G__typename'),
            latitude: BuiltValueNullFieldError.checkNotNull(latitude,
                'GFriendsLocalisationData_users_location', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(longitude,
                'GFriendsLocalisationData_users_location', 'longitude'),
            crs: BuiltValueNullFieldError.checkNotNull(
                crs, 'GFriendsLocalisationData_users_location', 'crs'));
    replace(_$result);
    return _$result;
  }
}

class _$GFriendsLocalisationData_users_friends
    extends GFriendsLocalisationData_users_friends {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? image;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final GFriendsLocalisationData_users_friends_location? location;

  factory _$GFriendsLocalisationData_users_friends(
          [void Function(GFriendsLocalisationData_users_friendsBuilder)?
              updates]) =>
      (new GFriendsLocalisationData_users_friendsBuilder()..update(updates))
          .build();

  _$GFriendsLocalisationData_users_friends._(
      {required this.G__typename,
      required this.id,
      this.image,
      required this.firstName,
      required this.lastName,
      this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFriendsLocalisationData_users_friends', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFriendsLocalisationData_users_friends', 'id');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GFriendsLocalisationData_users_friends', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GFriendsLocalisationData_users_friends', 'lastName');
  }

  @override
  GFriendsLocalisationData_users_friends rebuild(
          void Function(GFriendsLocalisationData_users_friendsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFriendsLocalisationData_users_friendsBuilder toBuilder() =>
      new GFriendsLocalisationData_users_friendsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFriendsLocalisationData_users_friends &&
        G__typename == other.G__typename &&
        id == other.id &&
        image == other.image &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    image.hashCode),
                firstName.hashCode),
            lastName.hashCode),
        location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFriendsLocalisationData_users_friends')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('image', image)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('location', location))
        .toString();
  }
}

class GFriendsLocalisationData_users_friendsBuilder
    implements
        Builder<GFriendsLocalisationData_users_friends,
            GFriendsLocalisationData_users_friendsBuilder> {
  _$GFriendsLocalisationData_users_friends? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  GFriendsLocalisationData_users_friends_locationBuilder? _location;
  GFriendsLocalisationData_users_friends_locationBuilder get location =>
      _$this._location ??=
          new GFriendsLocalisationData_users_friends_locationBuilder();
  set location(
          GFriendsLocalisationData_users_friends_locationBuilder? location) =>
      _$this._location = location;

  GFriendsLocalisationData_users_friendsBuilder() {
    GFriendsLocalisationData_users_friends._initializeBuilder(this);
  }

  GFriendsLocalisationData_users_friendsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _image = $v.image;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFriendsLocalisationData_users_friends other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFriendsLocalisationData_users_friends;
  }

  @override
  void update(
      void Function(GFriendsLocalisationData_users_friendsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFriendsLocalisationData_users_friends build() {
    _$GFriendsLocalisationData_users_friends _$result;
    try {
      _$result = _$v ??
          new _$GFriendsLocalisationData_users_friends._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GFriendsLocalisationData_users_friends', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFriendsLocalisationData_users_friends', 'id'),
              image: image,
              firstName: BuiltValueNullFieldError.checkNotNull(firstName,
                  'GFriendsLocalisationData_users_friends', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(lastName,
                  'GFriendsLocalisationData_users_friends', 'lastName'),
              location: _location?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFriendsLocalisationData_users_friends',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFriendsLocalisationData_users_friends_location
    extends GFriendsLocalisationData_users_friends_location {
  @override
  final String G__typename;
  @override
  final double longitude;
  @override
  final double latitude;
  @override
  final String crs;

  factory _$GFriendsLocalisationData_users_friends_location(
          [void Function(
                  GFriendsLocalisationData_users_friends_locationBuilder)?
              updates]) =>
      (new GFriendsLocalisationData_users_friends_locationBuilder()
            ..update(updates))
          .build();

  _$GFriendsLocalisationData_users_friends_location._(
      {required this.G__typename,
      required this.longitude,
      required this.latitude,
      required this.crs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GFriendsLocalisationData_users_friends_location', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(longitude,
        'GFriendsLocalisationData_users_friends_location', 'longitude');
    BuiltValueNullFieldError.checkNotNull(latitude,
        'GFriendsLocalisationData_users_friends_location', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        crs, 'GFriendsLocalisationData_users_friends_location', 'crs');
  }

  @override
  GFriendsLocalisationData_users_friends_location rebuild(
          void Function(GFriendsLocalisationData_users_friends_locationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFriendsLocalisationData_users_friends_locationBuilder toBuilder() =>
      new GFriendsLocalisationData_users_friends_locationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFriendsLocalisationData_users_friends_location &&
        G__typename == other.G__typename &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        crs == other.crs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), longitude.hashCode),
            latitude.hashCode),
        crs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GFriendsLocalisationData_users_friends_location')
          ..add('G__typename', G__typename)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('crs', crs))
        .toString();
  }
}

class GFriendsLocalisationData_users_friends_locationBuilder
    implements
        Builder<GFriendsLocalisationData_users_friends_location,
            GFriendsLocalisationData_users_friends_locationBuilder> {
  _$GFriendsLocalisationData_users_friends_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  String? _crs;
  String? get crs => _$this._crs;
  set crs(String? crs) => _$this._crs = crs;

  GFriendsLocalisationData_users_friends_locationBuilder() {
    GFriendsLocalisationData_users_friends_location._initializeBuilder(this);
  }

  GFriendsLocalisationData_users_friends_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _crs = $v.crs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFriendsLocalisationData_users_friends_location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFriendsLocalisationData_users_friends_location;
  }

  @override
  void update(
      void Function(GFriendsLocalisationData_users_friends_locationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFriendsLocalisationData_users_friends_location build() {
    final _$result = _$v ??
        new _$GFriendsLocalisationData_users_friends_location._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GFriendsLocalisationData_users_friends_location',
                'G__typename'),
            longitude: BuiltValueNullFieldError.checkNotNull(longitude,
                'GFriendsLocalisationData_users_friends_location', 'longitude'),
            latitude: BuiltValueNullFieldError.checkNotNull(latitude,
                'GFriendsLocalisationData_users_friends_location', 'latitude'),
            crs: BuiltValueNullFieldError.checkNotNull(
                crs, 'GFriendsLocalisationData_users_friends_location', 'crs'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

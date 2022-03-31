// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateLocationData> _$gUpdateLocationDataSerializer =
    new _$GUpdateLocationDataSerializer();
Serializer<GUpdateLocationData_updateUsers>
    _$gUpdateLocationDataUpdateUsersSerializer =
    new _$GUpdateLocationData_updateUsersSerializer();
Serializer<GUpdateLocationData_updateUsers_users>
    _$gUpdateLocationDataUpdateUsersUsersSerializer =
    new _$GUpdateLocationData_updateUsers_usersSerializer();
Serializer<GUpdateLocationData_updateUsers_users_location>
    _$gUpdateLocationDataUpdateUsersUsersLocationSerializer =
    new _$GUpdateLocationData_updateUsers_users_locationSerializer();

class _$GUpdateLocationDataSerializer
    implements StructuredSerializer<GUpdateLocationData> {
  @override
  final Iterable<Type> types = const [
    GUpdateLocationData,
    _$GUpdateLocationData
  ];
  @override
  final String wireName = 'GUpdateLocationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateLocationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateUsers',
      serializers.serialize(object.updateUsers,
          specifiedType: const FullType(GUpdateLocationData_updateUsers)),
    ];

    return result;
  }

  @override
  GUpdateLocationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateLocationDataBuilder();

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
        case 'updateUsers':
          result.updateUsers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUpdateLocationData_updateUsers))!
              as GUpdateLocationData_updateUsers);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateLocationData_updateUsersSerializer
    implements StructuredSerializer<GUpdateLocationData_updateUsers> {
  @override
  final Iterable<Type> types = const [
    GUpdateLocationData_updateUsers,
    _$GUpdateLocationData_updateUsers
  ];
  @override
  final String wireName = 'GUpdateLocationData_updateUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateLocationData_updateUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GUpdateLocationData_updateUsers_users)])),
    ];

    return result;
  }

  @override
  GUpdateLocationData_updateUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateLocationData_updateUsersBuilder();

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
                const FullType(GUpdateLocationData_updateUsers_users)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateLocationData_updateUsers_usersSerializer
    implements StructuredSerializer<GUpdateLocationData_updateUsers_users> {
  @override
  final Iterable<Type> types = const [
    GUpdateLocationData_updateUsers_users,
    _$GUpdateLocationData_updateUsers_users
  ];
  @override
  final String wireName = 'GUpdateLocationData_updateUsers_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateLocationData_updateUsers_users object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GUpdateLocationData_updateUsers_users_location)));
    }
    return result;
  }

  @override
  GUpdateLocationData_updateUsers_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateLocationData_updateUsers_usersBuilder();

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
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUpdateLocationData_updateUsers_users_location))!
              as GUpdateLocationData_updateUsers_users_location);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateLocationData_updateUsers_users_locationSerializer
    implements
        StructuredSerializer<GUpdateLocationData_updateUsers_users_location> {
  @override
  final Iterable<Type> types = const [
    GUpdateLocationData_updateUsers_users_location,
    _$GUpdateLocationData_updateUsers_users_location
  ];
  @override
  final String wireName = 'GUpdateLocationData_updateUsers_users_location';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUpdateLocationData_updateUsers_users_location object,
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
    ];

    return result;
  }

  @override
  GUpdateLocationData_updateUsers_users_location deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateLocationData_updateUsers_users_locationBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GUpdateLocationData extends GUpdateLocationData {
  @override
  final String G__typename;
  @override
  final GUpdateLocationData_updateUsers updateUsers;

  factory _$GUpdateLocationData(
          [void Function(GUpdateLocationDataBuilder)? updates]) =>
      (new GUpdateLocationDataBuilder()..update(updates)).build();

  _$GUpdateLocationData._(
      {required this.G__typename, required this.updateUsers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateLocationData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateUsers, 'GUpdateLocationData', 'updateUsers');
  }

  @override
  GUpdateLocationData rebuild(
          void Function(GUpdateLocationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateLocationDataBuilder toBuilder() =>
      new GUpdateLocationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateLocationData &&
        G__typename == other.G__typename &&
        updateUsers == other.updateUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateLocationData')
          ..add('G__typename', G__typename)
          ..add('updateUsers', updateUsers))
        .toString();
  }
}

class GUpdateLocationDataBuilder
    implements Builder<GUpdateLocationData, GUpdateLocationDataBuilder> {
  _$GUpdateLocationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateLocationData_updateUsersBuilder? _updateUsers;
  GUpdateLocationData_updateUsersBuilder get updateUsers =>
      _$this._updateUsers ??= new GUpdateLocationData_updateUsersBuilder();
  set updateUsers(GUpdateLocationData_updateUsersBuilder? updateUsers) =>
      _$this._updateUsers = updateUsers;

  GUpdateLocationDataBuilder() {
    GUpdateLocationData._initializeBuilder(this);
  }

  GUpdateLocationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateUsers = $v.updateUsers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateLocationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateLocationData;
  }

  @override
  void update(void Function(GUpdateLocationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateLocationData build() {
    _$GUpdateLocationData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateLocationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUpdateLocationData', 'G__typename'),
              updateUsers: updateUsers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUsers';
        updateUsers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateLocationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateLocationData_updateUsers
    extends GUpdateLocationData_updateUsers {
  @override
  final String G__typename;
  @override
  final BuiltList<GUpdateLocationData_updateUsers_users> users;

  factory _$GUpdateLocationData_updateUsers(
          [void Function(GUpdateLocationData_updateUsersBuilder)? updates]) =>
      (new GUpdateLocationData_updateUsersBuilder()..update(updates)).build();

  _$GUpdateLocationData_updateUsers._(
      {required this.G__typename, required this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateLocationData_updateUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        users, 'GUpdateLocationData_updateUsers', 'users');
  }

  @override
  GUpdateLocationData_updateUsers rebuild(
          void Function(GUpdateLocationData_updateUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateLocationData_updateUsersBuilder toBuilder() =>
      new GUpdateLocationData_updateUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateLocationData_updateUsers &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateLocationData_updateUsers')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GUpdateLocationData_updateUsersBuilder
    implements
        Builder<GUpdateLocationData_updateUsers,
            GUpdateLocationData_updateUsersBuilder> {
  _$GUpdateLocationData_updateUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUpdateLocationData_updateUsers_users>? _users;
  ListBuilder<GUpdateLocationData_updateUsers_users> get users =>
      _$this._users ??=
          new ListBuilder<GUpdateLocationData_updateUsers_users>();
  set users(ListBuilder<GUpdateLocationData_updateUsers_users>? users) =>
      _$this._users = users;

  GUpdateLocationData_updateUsersBuilder() {
    GUpdateLocationData_updateUsers._initializeBuilder(this);
  }

  GUpdateLocationData_updateUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateLocationData_updateUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateLocationData_updateUsers;
  }

  @override
  void update(void Function(GUpdateLocationData_updateUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateLocationData_updateUsers build() {
    _$GUpdateLocationData_updateUsers _$result;
    try {
      _$result = _$v ??
          new _$GUpdateLocationData_updateUsers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GUpdateLocationData_updateUsers', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateLocationData_updateUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateLocationData_updateUsers_users
    extends GUpdateLocationData_updateUsers_users {
  @override
  final String G__typename;
  @override
  final GUpdateLocationData_updateUsers_users_location? location;

  factory _$GUpdateLocationData_updateUsers_users(
          [void Function(GUpdateLocationData_updateUsers_usersBuilder)?
              updates]) =>
      (new GUpdateLocationData_updateUsers_usersBuilder()..update(updates))
          .build();

  _$GUpdateLocationData_updateUsers_users._(
      {required this.G__typename, this.location})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUpdateLocationData_updateUsers_users', 'G__typename');
  }

  @override
  GUpdateLocationData_updateUsers_users rebuild(
          void Function(GUpdateLocationData_updateUsers_usersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateLocationData_updateUsers_usersBuilder toBuilder() =>
      new GUpdateLocationData_updateUsers_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateLocationData_updateUsers_users &&
        G__typename == other.G__typename &&
        location == other.location;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), location.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateLocationData_updateUsers_users')
          ..add('G__typename', G__typename)
          ..add('location', location))
        .toString();
  }
}

class GUpdateLocationData_updateUsers_usersBuilder
    implements
        Builder<GUpdateLocationData_updateUsers_users,
            GUpdateLocationData_updateUsers_usersBuilder> {
  _$GUpdateLocationData_updateUsers_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateLocationData_updateUsers_users_locationBuilder? _location;
  GUpdateLocationData_updateUsers_users_locationBuilder get location =>
      _$this._location ??=
          new GUpdateLocationData_updateUsers_users_locationBuilder();
  set location(
          GUpdateLocationData_updateUsers_users_locationBuilder? location) =>
      _$this._location = location;

  GUpdateLocationData_updateUsers_usersBuilder() {
    GUpdateLocationData_updateUsers_users._initializeBuilder(this);
  }

  GUpdateLocationData_updateUsers_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _location = $v.location?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateLocationData_updateUsers_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateLocationData_updateUsers_users;
  }

  @override
  void update(
      void Function(GUpdateLocationData_updateUsers_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateLocationData_updateUsers_users build() {
    _$GUpdateLocationData_updateUsers_users _$result;
    try {
      _$result = _$v ??
          new _$GUpdateLocationData_updateUsers_users._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GUpdateLocationData_updateUsers_users', 'G__typename'),
              location: _location?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateLocationData_updateUsers_users',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateLocationData_updateUsers_users_location
    extends GUpdateLocationData_updateUsers_users_location {
  @override
  final String G__typename;
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$GUpdateLocationData_updateUsers_users_location(
          [void Function(GUpdateLocationData_updateUsers_users_locationBuilder)?
              updates]) =>
      (new GUpdateLocationData_updateUsers_users_locationBuilder()
            ..update(updates))
          .build();

  _$GUpdateLocationData_updateUsers_users_location._(
      {required this.G__typename,
      required this.latitude,
      required this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GUpdateLocationData_updateUsers_users_location', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'GUpdateLocationData_updateUsers_users_location', 'latitude');
    BuiltValueNullFieldError.checkNotNull(longitude,
        'GUpdateLocationData_updateUsers_users_location', 'longitude');
  }

  @override
  GUpdateLocationData_updateUsers_users_location rebuild(
          void Function(GUpdateLocationData_updateUsers_users_locationBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateLocationData_updateUsers_users_locationBuilder toBuilder() =>
      new GUpdateLocationData_updateUsers_users_locationBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateLocationData_updateUsers_users_location &&
        G__typename == other.G__typename &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), latitude.hashCode),
        longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GUpdateLocationData_updateUsers_users_location')
          ..add('G__typename', G__typename)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class GUpdateLocationData_updateUsers_users_locationBuilder
    implements
        Builder<GUpdateLocationData_updateUsers_users_location,
            GUpdateLocationData_updateUsers_users_locationBuilder> {
  _$GUpdateLocationData_updateUsers_users_location? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  GUpdateLocationData_updateUsers_users_locationBuilder() {
    GUpdateLocationData_updateUsers_users_location._initializeBuilder(this);
  }

  GUpdateLocationData_updateUsers_users_locationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateLocationData_updateUsers_users_location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateLocationData_updateUsers_users_location;
  }

  @override
  void update(
      void Function(GUpdateLocationData_updateUsers_users_locationBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateLocationData_updateUsers_users_location build() {
    final _$result = _$v ??
        new _$GUpdateLocationData_updateUsers_users_location._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GUpdateLocationData_updateUsers_users_location',
                'G__typename'),
            latitude: BuiltValueNullFieldError.checkNotNull(latitude,
                'GUpdateLocationData_updateUsers_users_location', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(longitude,
                'GUpdateLocationData_updateUsers_users_location', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

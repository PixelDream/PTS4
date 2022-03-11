// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProfileData> _$gProfileDataSerializer =
    new _$GProfileDataSerializer();
Serializer<GProfileData_users> _$gProfileDataUsersSerializer =
    new _$GProfileData_usersSerializer();

class _$GProfileDataSerializer implements StructuredSerializer<GProfileData> {
  @override
  final Iterable<Type> types = const [GProfileData, _$GProfileData];
  @override
  final String wireName = 'GProfileData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'users',
      serializers.serialize(object.users,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GProfileData_users)])),
    ];

    return result;
  }

  @override
  GProfileData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileDataBuilder();

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
                      BuiltList, const [const FullType(GProfileData_users)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData_usersSerializer
    implements StructuredSerializer<GProfileData_users> {
  @override
  final Iterable<Type> types = const [GProfileData_users, _$GProfileData_users];
  @override
  final String wireName = 'GProfileData_users';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProfileData_users object,
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
    value = object.biography;
    if (value != null) {
      result
        ..add('biography')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GProfileData_users deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfileData_usersBuilder();

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
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GProfileData extends GProfileData {
  @override
  final String G__typename;
  @override
  final BuiltList<GProfileData_users> users;

  factory _$GProfileData([void Function(GProfileDataBuilder)? updates]) =>
      (new GProfileDataBuilder()..update(updates)).build();

  _$GProfileData._({required this.G__typename, required this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfileData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(users, 'GProfileData', 'users');
  }

  @override
  GProfileData rebuild(void Function(GProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileDataBuilder toBuilder() => new GProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData &&
        G__typename == other.G__typename &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfileData')
          ..add('G__typename', G__typename)
          ..add('users', users))
        .toString();
  }
}

class GProfileDataBuilder
    implements Builder<GProfileData, GProfileDataBuilder> {
  _$GProfileData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GProfileData_users>? _users;
  ListBuilder<GProfileData_users> get users =>
      _$this._users ??= new ListBuilder<GProfileData_users>();
  set users(ListBuilder<GProfileData_users>? users) => _$this._users = users;

  GProfileDataBuilder() {
    GProfileData._initializeBuilder(this);
  }

  GProfileDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData;
  }

  @override
  void update(void Function(GProfileDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfileData build() {
    _$GProfileData _$result;
    try {
      _$result = _$v ??
          new _$GProfileData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GProfileData', 'G__typename'),
              users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProfileData_users extends GProfileData_users {
  @override
  final String G__typename;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? biography;

  factory _$GProfileData_users(
          [void Function(GProfileData_usersBuilder)? updates]) =>
      (new GProfileData_usersBuilder()..update(updates)).build();

  _$GProfileData_users._(
      {required this.G__typename,
      required this.firstName,
      required this.lastName,
      this.biography})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProfileData_users', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GProfileData_users', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'GProfileData_users', 'lastName');
  }

  @override
  GProfileData_users rebuild(
          void Function(GProfileData_usersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileData_usersBuilder toBuilder() =>
      new GProfileData_usersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileData_users &&
        G__typename == other.G__typename &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        biography == other.biography;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), firstName.hashCode),
            lastName.hashCode),
        biography.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfileData_users')
          ..add('G__typename', G__typename)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('biography', biography))
        .toString();
  }
}

class GProfileData_usersBuilder
    implements Builder<GProfileData_users, GProfileData_usersBuilder> {
  _$GProfileData_users? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _biography;
  String? get biography => _$this._biography;
  set biography(String? biography) => _$this._biography = biography;

  GProfileData_usersBuilder() {
    GProfileData_users._initializeBuilder(this);
  }

  GProfileData_usersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _biography = $v.biography;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfileData_users other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileData_users;
  }

  @override
  void update(void Function(GProfileData_usersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfileData_users build() {
    final _$result = _$v ??
        new _$GProfileData_users._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GProfileData_users', 'G__typename'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'GProfileData_users', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GProfileData_users', 'lastName'),
            biography: biography);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

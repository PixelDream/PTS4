// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpData> _$gSignUpDataSerializer = new _$GSignUpDataSerializer();
Serializer<GSignUpData_signUp> _$gSignUpDataSignUpSerializer =
    new _$GSignUpData_signUpSerializer();
Serializer<GSignUpData_signUp_user> _$gSignUpDataSignUpUserSerializer =
    new _$GSignUpData_signUp_userSerializer();

class _$GSignUpDataSerializer implements StructuredSerializer<GSignUpData> {
  @override
  final Iterable<Type> types = const [GSignUpData, _$GSignUpData];
  @override
  final String wireName = 'GSignUpData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'signUp',
      serializers.serialize(object.signUp,
          specifiedType: const FullType(GSignUpData_signUp)),
    ];

    return result;
  }

  @override
  GSignUpData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpDataBuilder();

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
        case 'signUp':
          result.signUp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignUpData_signUp))!
              as GSignUpData_signUp);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpData_signUpSerializer
    implements StructuredSerializer<GSignUpData_signUp> {
  @override
  final Iterable<Type> types = const [GSignUpData_signUp, _$GSignUpData_signUp];
  @override
  final String wireName = 'GSignUpData_signUp';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignUpData_signUp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(GSignUpData_signUp_user)),
    ];

    return result;
  }

  @override
  GSignUpData_signUp deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpData_signUpBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignUpData_signUp_user))!
              as GSignUpData_signUp_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpData_signUp_userSerializer
    implements StructuredSerializer<GSignUpData_signUp_user> {
  @override
  final Iterable<Type> types = const [
    GSignUpData_signUp_user,
    _$GSignUpData_signUp_user
  ];
  @override
  final String wireName = 'GSignUpData_signUp_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignUpData_signUp_user object,
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
  GSignUpData_signUp_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpData_signUp_userBuilder();

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

class _$GSignUpData extends GSignUpData {
  @override
  final String G__typename;
  @override
  final GSignUpData_signUp signUp;

  factory _$GSignUpData([void Function(GSignUpDataBuilder)? updates]) =>
      (new GSignUpDataBuilder()..update(updates)).build();

  _$GSignUpData._({required this.G__typename, required this.signUp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSignUpData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(signUp, 'GSignUpData', 'signUp');
  }

  @override
  GSignUpData rebuild(void Function(GSignUpDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpDataBuilder toBuilder() => new GSignUpDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpData &&
        G__typename == other.G__typename &&
        signUp == other.signUp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), signUp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignUpData')
          ..add('G__typename', G__typename)
          ..add('signUp', signUp))
        .toString();
  }
}

class GSignUpDataBuilder implements Builder<GSignUpData, GSignUpDataBuilder> {
  _$GSignUpData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignUpData_signUpBuilder? _signUp;
  GSignUpData_signUpBuilder get signUp =>
      _$this._signUp ??= new GSignUpData_signUpBuilder();
  set signUp(GSignUpData_signUpBuilder? signUp) => _$this._signUp = signUp;

  GSignUpDataBuilder() {
    GSignUpData._initializeBuilder(this);
  }

  GSignUpDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signUp = $v.signUp.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpData;
  }

  @override
  void update(void Function(GSignUpDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignUpData build() {
    _$GSignUpData _$result;
    try {
      _$result = _$v ??
          new _$GSignUpData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSignUpData', 'G__typename'),
              signUp: signUp.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signUp';
        signUp.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSignUpData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignUpData_signUp extends GSignUpData_signUp {
  @override
  final String G__typename;
  @override
  final String token;
  @override
  final GSignUpData_signUp_user user;

  factory _$GSignUpData_signUp(
          [void Function(GSignUpData_signUpBuilder)? updates]) =>
      (new GSignUpData_signUpBuilder()..update(updates)).build();

  _$GSignUpData_signUp._(
      {required this.G__typename, required this.token, required this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSignUpData_signUp', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(token, 'GSignUpData_signUp', 'token');
    BuiltValueNullFieldError.checkNotNull(user, 'GSignUpData_signUp', 'user');
  }

  @override
  GSignUpData_signUp rebuild(
          void Function(GSignUpData_signUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpData_signUpBuilder toBuilder() =>
      new GSignUpData_signUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpData_signUp &&
        G__typename == other.G__typename &&
        token == other.token &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), token.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignUpData_signUp')
          ..add('G__typename', G__typename)
          ..add('token', token)
          ..add('user', user))
        .toString();
  }
}

class GSignUpData_signUpBuilder
    implements Builder<GSignUpData_signUp, GSignUpData_signUpBuilder> {
  _$GSignUpData_signUp? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GSignUpData_signUp_userBuilder? _user;
  GSignUpData_signUp_userBuilder get user =>
      _$this._user ??= new GSignUpData_signUp_userBuilder();
  set user(GSignUpData_signUp_userBuilder? user) => _$this._user = user;

  GSignUpData_signUpBuilder() {
    GSignUpData_signUp._initializeBuilder(this);
  }

  GSignUpData_signUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpData_signUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpData_signUp;
  }

  @override
  void update(void Function(GSignUpData_signUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignUpData_signUp build() {
    _$GSignUpData_signUp _$result;
    try {
      _$result = _$v ??
          new _$GSignUpData_signUp._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSignUpData_signUp', 'G__typename'),
              token: BuiltValueNullFieldError.checkNotNull(
                  token, 'GSignUpData_signUp', 'token'),
              user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSignUpData_signUp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignUpData_signUp_user extends GSignUpData_signUp_user {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GSignUpData_signUp_user(
          [void Function(GSignUpData_signUp_userBuilder)? updates]) =>
      (new GSignUpData_signUp_userBuilder()..update(updates)).build();

  _$GSignUpData_signUp_user._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSignUpData_signUp_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GSignUpData_signUp_user', 'id');
  }

  @override
  GSignUpData_signUp_user rebuild(
          void Function(GSignUpData_signUp_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpData_signUp_userBuilder toBuilder() =>
      new GSignUpData_signUp_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpData_signUp_user &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignUpData_signUp_user')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GSignUpData_signUp_userBuilder
    implements
        Builder<GSignUpData_signUp_user, GSignUpData_signUp_userBuilder> {
  _$GSignUpData_signUp_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GSignUpData_signUp_userBuilder() {
    GSignUpData_signUp_user._initializeBuilder(this);
  }

  GSignUpData_signUp_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpData_signUp_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpData_signUp_user;
  }

  @override
  void update(void Function(GSignUpData_signUp_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignUpData_signUp_user build() {
    final _$result = _$v ??
        new _$GSignUpData_signUp_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GSignUpData_signUp_user', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GSignUpData_signUp_user', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

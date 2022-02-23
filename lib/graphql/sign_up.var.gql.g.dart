// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignUpVars> _$gSignUpVarsSerializer = new _$GSignUpVarsSerializer();

class _$GSignUpVarsSerializer implements StructuredSerializer<GSignUpVars> {
  @override
  final Iterable<Type> types = const [GSignUpVars, _$GSignUpVars];
  @override
  final String wireName = 'GSignUpVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignUpVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'pseudo',
      serializers.serialize(object.pseudo,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSignUpVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignUpVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pseudo':
          result.pseudo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GSignUpVars extends GSignUpVars {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String pseudo;
  @override
  final String email;
  @override
  final String password;

  factory _$GSignUpVars([void Function(GSignUpVarsBuilder)? updates]) =>
      (new GSignUpVarsBuilder()..update(updates)).build();

  _$GSignUpVars._(
      {required this.firstName,
      required this.lastName,
      required this.pseudo,
      required this.email,
      required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'GSignUpVars', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'GSignUpVars', 'lastName');
    BuiltValueNullFieldError.checkNotNull(pseudo, 'GSignUpVars', 'pseudo');
    BuiltValueNullFieldError.checkNotNull(email, 'GSignUpVars', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'GSignUpVars', 'password');
  }

  @override
  GSignUpVars rebuild(void Function(GSignUpVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignUpVarsBuilder toBuilder() => new GSignUpVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignUpVars &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        pseudo == other.pseudo &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstName.hashCode), lastName.hashCode),
                pseudo.hashCode),
            email.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignUpVars')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('pseudo', pseudo)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class GSignUpVarsBuilder implements Builder<GSignUpVars, GSignUpVarsBuilder> {
  _$GSignUpVars? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _pseudo;
  String? get pseudo => _$this._pseudo;
  set pseudo(String? pseudo) => _$this._pseudo = pseudo;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  GSignUpVarsBuilder();

  GSignUpVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _pseudo = $v.pseudo;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignUpVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignUpVars;
  }

  @override
  void update(void Function(GSignUpVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignUpVars build() {
    final _$result = _$v ??
        new _$GSignUpVars._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'GSignUpVars', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'GSignUpVars', 'lastName'),
            pseudo: BuiltValueNullFieldError.checkNotNull(
                pseudo, 'GSignUpVars', 'pseudo'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GSignUpVars', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GSignUpVars', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

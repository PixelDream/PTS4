// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSignInData> _$gSignInDataSerializer = new _$GSignInDataSerializer();
Serializer<GSignInData_signIn> _$gSignInDataSignInSerializer =
    new _$GSignInData_signInSerializer();

class _$GSignInDataSerializer implements StructuredSerializer<GSignInData> {
  @override
  final Iterable<Type> types = const [GSignInData, _$GSignInData];
  @override
  final String wireName = 'GSignInData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSignInData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'signIn',
      serializers.serialize(object.signIn,
          specifiedType: const FullType(GSignInData_signIn)),
    ];

    return result;
  }

  @override
  GSignInData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInDataBuilder();

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
        case 'signIn':
          result.signIn.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GSignInData_signIn))!
              as GSignInData_signIn);
          break;
      }
    }

    return result.build();
  }
}

class _$GSignInData_signInSerializer
    implements StructuredSerializer<GSignInData_signIn> {
  @override
  final Iterable<Type> types = const [GSignInData_signIn, _$GSignInData_signIn];
  @override
  final String wireName = 'GSignInData_signIn';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSignInData_signIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GSignInData_signIn deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSignInData_signInBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GSignInData extends GSignInData {
  @override
  final String G__typename;
  @override
  final GSignInData_signIn signIn;

  factory _$GSignInData([void Function(GSignInDataBuilder)? updates]) =>
      (new GSignInDataBuilder()..update(updates)).build();

  _$GSignInData._({required this.G__typename, required this.signIn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSignInData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(signIn, 'GSignInData', 'signIn');
  }

  @override
  GSignInData rebuild(void Function(GSignInDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInDataBuilder toBuilder() => new GSignInDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData &&
        G__typename == other.G__typename &&
        signIn == other.signIn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), signIn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignInData')
          ..add('G__typename', G__typename)
          ..add('signIn', signIn))
        .toString();
  }
}

class GSignInDataBuilder implements Builder<GSignInData, GSignInDataBuilder> {
  _$GSignInData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSignInData_signInBuilder? _signIn;
  GSignInData_signInBuilder get signIn =>
      _$this._signIn ??= new GSignInData_signInBuilder();
  set signIn(GSignInData_signInBuilder? signIn) => _$this._signIn = signIn;

  GSignInDataBuilder() {
    GSignInData._initializeBuilder(this);
  }

  GSignInDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _signIn = $v.signIn.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData;
  }

  @override
  void update(void Function(GSignInDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignInData build() {
    _$GSignInData _$result;
    try {
      _$result = _$v ??
          new _$GSignInData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSignInData', 'G__typename'),
              signIn: signIn.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signIn';
        signIn.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSignInData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSignInData_signIn extends GSignInData_signIn {
  @override
  final String G__typename;
  @override
  final String token;

  factory _$GSignInData_signIn(
          [void Function(GSignInData_signInBuilder)? updates]) =>
      (new GSignInData_signInBuilder()..update(updates)).build();

  _$GSignInData_signIn._({required this.G__typename, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSignInData_signIn', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(token, 'GSignInData_signIn', 'token');
  }

  @override
  GSignInData_signIn rebuild(
          void Function(GSignInData_signInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSignInData_signInBuilder toBuilder() =>
      new GSignInData_signInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSignInData_signIn &&
        G__typename == other.G__typename &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSignInData_signIn')
          ..add('G__typename', G__typename)
          ..add('token', token))
        .toString();
  }
}

class GSignInData_signInBuilder
    implements Builder<GSignInData_signIn, GSignInData_signInBuilder> {
  _$GSignInData_signIn? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  GSignInData_signInBuilder() {
    GSignInData_signIn._initializeBuilder(this);
  }

  GSignInData_signInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSignInData_signIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSignInData_signIn;
  }

  @override
  void update(void Function(GSignInData_signInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSignInData_signIn build() {
    final _$result = _$v ??
        new _$GSignInData_signIn._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GSignInData_signIn', 'G__typename'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GSignInData_signIn', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

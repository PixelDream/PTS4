// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLikePostVars> _$gLikePostVarsSerializer =
    new _$GLikePostVarsSerializer();

class _$GLikePostVarsSerializer implements StructuredSerializer<GLikePostVars> {
  @override
  final Iterable<Type> types = const [GLikePostVars, _$GLikePostVars];
  @override
  final String wireName = 'GLikePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.connect;
    if (value != null) {
      result
        ..add('connect')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserConnectInput)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserWhere)));
    }
    return result;
  }

  @override
  GLikePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'connect':
          result.connect.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserConnectInput))!
              as _i1.GUserConnectInput);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserWhere))!
              as _i1.GUserWhere);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostVars extends GLikePostVars {
  @override
  final _i1.GUserConnectInput? connect;
  @override
  final _i1.GUserWhere? user;

  factory _$GLikePostVars([void Function(GLikePostVarsBuilder)? updates]) =>
      (new GLikePostVarsBuilder()..update(updates)).build();

  _$GLikePostVars._({this.connect, this.user}) : super._();

  @override
  GLikePostVars rebuild(void Function(GLikePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostVarsBuilder toBuilder() => new GLikePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostVars &&
        connect == other.connect &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, connect.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLikePostVars')
          ..add('connect', connect)
          ..add('user', user))
        .toString();
  }
}

class GLikePostVarsBuilder
    implements Builder<GLikePostVars, GLikePostVarsBuilder> {
  _$GLikePostVars? _$v;

  _i1.GUserConnectInputBuilder? _connect;
  _i1.GUserConnectInputBuilder get connect =>
      _$this._connect ??= new _i1.GUserConnectInputBuilder();
  set connect(_i1.GUserConnectInputBuilder? connect) =>
      _$this._connect = connect;

  _i1.GUserWhereBuilder? _user;
  _i1.GUserWhereBuilder get user =>
      _$this._user ??= new _i1.GUserWhereBuilder();
  set user(_i1.GUserWhereBuilder? user) => _$this._user = user;

  GLikePostVarsBuilder();

  GLikePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connect = $v.connect?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostVars;
  }

  @override
  void update(void Function(GLikePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLikePostVars build() {
    _$GLikePostVars _$result;
    try {
      _$result = _$v ??
          new _$GLikePostVars._(
              connect: _connect?.build(), user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connect';
        _connect?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLikePostVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

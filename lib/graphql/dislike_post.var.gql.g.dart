// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dislike_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDislikePostVars> _$gDislikePostVarsSerializer =
    new _$GDislikePostVarsSerializer();

class _$GDislikePostVarsSerializer
    implements StructuredSerializer<GDislikePostVars> {
  @override
  final Iterable<Type> types = const [GDislikePostVars, _$GDislikePostVars];
  @override
  final String wireName = 'GDislikePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDislikePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.disconnect;
    if (value != null) {
      result
        ..add('disconnect')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserDisconnectInput)));
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
  GDislikePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDislikePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'disconnect':
          result.disconnect.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserDisconnectInput))!
              as _i1.GUserDisconnectInput);
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

class _$GDislikePostVars extends GDislikePostVars {
  @override
  final _i1.GUserDisconnectInput? disconnect;
  @override
  final _i1.GUserWhere? user;

  factory _$GDislikePostVars(
          [void Function(GDislikePostVarsBuilder)? updates]) =>
      (new GDislikePostVarsBuilder()..update(updates)).build();

  _$GDislikePostVars._({this.disconnect, this.user}) : super._();

  @override
  GDislikePostVars rebuild(void Function(GDislikePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDislikePostVarsBuilder toBuilder() =>
      new GDislikePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDislikePostVars &&
        disconnect == other.disconnect &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, disconnect.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDislikePostVars')
          ..add('disconnect', disconnect)
          ..add('user', user))
        .toString();
  }
}

class GDislikePostVarsBuilder
    implements Builder<GDislikePostVars, GDislikePostVarsBuilder> {
  _$GDislikePostVars? _$v;

  _i1.GUserDisconnectInputBuilder? _disconnect;
  _i1.GUserDisconnectInputBuilder get disconnect =>
      _$this._disconnect ??= new _i1.GUserDisconnectInputBuilder();
  set disconnect(_i1.GUserDisconnectInputBuilder? disconnect) =>
      _$this._disconnect = disconnect;

  _i1.GUserWhereBuilder? _user;
  _i1.GUserWhereBuilder get user =>
      _$this._user ??= new _i1.GUserWhereBuilder();
  set user(_i1.GUserWhereBuilder? user) => _$this._user = user;

  GDislikePostVarsBuilder();

  GDislikePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _disconnect = $v.disconnect?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDislikePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDislikePostVars;
  }

  @override
  void update(void Function(GDislikePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDislikePostVars build() {
    _$GDislikePostVars _$result;
    try {
      _$result = _$v ??
          new _$GDislikePostVars._(
              disconnect: _disconnect?.build(), user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'disconnect';
        _disconnect?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDislikePostVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateLocationVars> _$gUpdateLocationVarsSerializer =
    new _$GUpdateLocationVarsSerializer();

class _$GUpdateLocationVarsSerializer
    implements StructuredSerializer<GUpdateLocationVars> {
  @override
  final Iterable<Type> types = const [
    GUpdateLocationVars,
    _$GUpdateLocationVars
  ];
  @override
  final String wireName = 'GUpdateLocationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateLocationVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserUpdateInput)));
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
  GUpdateLocationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateLocationVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserUpdateInput))!
              as _i1.GUserUpdateInput);
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

class _$GUpdateLocationVars extends GUpdateLocationVars {
  @override
  final _i1.GUserUpdateInput? location;
  @override
  final _i1.GUserWhere? user;

  factory _$GUpdateLocationVars(
          [void Function(GUpdateLocationVarsBuilder)? updates]) =>
      (new GUpdateLocationVarsBuilder()..update(updates)).build();

  _$GUpdateLocationVars._({this.location, this.user}) : super._();

  @override
  GUpdateLocationVars rebuild(
          void Function(GUpdateLocationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateLocationVarsBuilder toBuilder() =>
      new GUpdateLocationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateLocationVars &&
        location == other.location &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, location.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUpdateLocationVars')
          ..add('location', location)
          ..add('user', user))
        .toString();
  }
}

class GUpdateLocationVarsBuilder
    implements Builder<GUpdateLocationVars, GUpdateLocationVarsBuilder> {
  _$GUpdateLocationVars? _$v;

  _i1.GUserUpdateInputBuilder? _location;
  _i1.GUserUpdateInputBuilder get location =>
      _$this._location ??= new _i1.GUserUpdateInputBuilder();
  set location(_i1.GUserUpdateInputBuilder? location) =>
      _$this._location = location;

  _i1.GUserWhereBuilder? _user;
  _i1.GUserWhereBuilder get user =>
      _$this._user ??= new _i1.GUserWhereBuilder();
  set user(_i1.GUserWhereBuilder? user) => _$this._user = user;

  GUpdateLocationVarsBuilder();

  GUpdateLocationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateLocationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateLocationVars;
  }

  @override
  void update(void Function(GUpdateLocationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUpdateLocationVars build() {
    _$GUpdateLocationVars _$result;
    try {
      _$result = _$v ??
          new _$GUpdateLocationVars._(
              location: _location?.build(), user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUpdateLocationVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

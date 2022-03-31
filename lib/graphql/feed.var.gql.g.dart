// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedVars> _$gFeedVarsSerializer = new _$GFeedVarsSerializer();

class _$GFeedVarsSerializer implements StructuredSerializer<GFeedVars> {
  @override
  final Iterable<Type> types = const [GFeedVars, _$GFeedVars];
  @override
  final String wireName = 'GFeedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserWhere)));
    }
    value = object.friend;
    if (value != null) {
      result
        ..add('friend')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserWhere)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GPostOptions)));
    }
    return result;
  }

  @override
  GFeedVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserWhere))!
              as _i1.GUserWhere);
          break;
        case 'friend':
          result.friend.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserWhere))!
              as _i1.GUserWhere);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPostOptions))!
              as _i1.GPostOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedVars extends GFeedVars {
  @override
  final _i1.GUserWhere? user;
  @override
  final _i1.GUserWhere? friend;
  @override
  final _i1.GPostOptions? options;

  factory _$GFeedVars([void Function(GFeedVarsBuilder)? updates]) =>
      (new GFeedVarsBuilder()..update(updates)).build();

  _$GFeedVars._({this.user, this.friend, this.options}) : super._();

  @override
  GFeedVars rebuild(void Function(GFeedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedVarsBuilder toBuilder() => new GFeedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedVars &&
        user == other.user &&
        friend == other.friend &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, user.hashCode), friend.hashCode), options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedVars')
          ..add('user', user)
          ..add('friend', friend)
          ..add('options', options))
        .toString();
  }
}

class GFeedVarsBuilder implements Builder<GFeedVars, GFeedVarsBuilder> {
  _$GFeedVars? _$v;

  _i1.GUserWhereBuilder? _user;
  _i1.GUserWhereBuilder get user =>
      _$this._user ??= new _i1.GUserWhereBuilder();
  set user(_i1.GUserWhereBuilder? user) => _$this._user = user;

  _i1.GUserWhereBuilder? _friend;
  _i1.GUserWhereBuilder get friend =>
      _$this._friend ??= new _i1.GUserWhereBuilder();
  set friend(_i1.GUserWhereBuilder? friend) => _$this._friend = friend;

  _i1.GPostOptionsBuilder? _options;
  _i1.GPostOptionsBuilder get options =>
      _$this._options ??= new _i1.GPostOptionsBuilder();
  set options(_i1.GPostOptionsBuilder? options) => _$this._options = options;

  GFeedVarsBuilder();

  GFeedVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _friend = $v.friend?.toBuilder();
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedVars;
  }

  @override
  void update(void Function(GFeedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedVars build() {
    _$GFeedVars _$result;
    try {
      _$result = _$v ??
          new _$GFeedVars._(
              user: _user?.build(),
              friend: _friend?.build(),
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'friend';
        _friend?.build();
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

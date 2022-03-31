// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_info.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedInfoVars> _$gFeedInfoVarsSerializer =
    new _$GFeedInfoVarsSerializer();

class _$GFeedInfoVarsSerializer implements StructuredSerializer<GFeedInfoVars> {
  @override
  final Iterable<Type> types = const [GFeedInfoVars, _$GFeedInfoVars];
  @override
  final String wireName = 'GFeedInfoVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedInfoVars object,
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
    return result;
  }

  @override
  GFeedInfoVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedInfoVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GFeedInfoVars extends GFeedInfoVars {
  @override
  final _i1.GUserWhere? user;

  factory _$GFeedInfoVars([void Function(GFeedInfoVarsBuilder)? updates]) =>
      (new GFeedInfoVarsBuilder()..update(updates)).build();

  _$GFeedInfoVars._({this.user}) : super._();

  @override
  GFeedInfoVars rebuild(void Function(GFeedInfoVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedInfoVarsBuilder toBuilder() => new GFeedInfoVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedInfoVars && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedInfoVars')..add('user', user))
        .toString();
  }
}

class GFeedInfoVarsBuilder
    implements Builder<GFeedInfoVars, GFeedInfoVarsBuilder> {
  _$GFeedInfoVars? _$v;

  _i1.GUserWhereBuilder? _user;
  _i1.GUserWhereBuilder get user =>
      _$this._user ??= new _i1.GUserWhereBuilder();
  set user(_i1.GUserWhereBuilder? user) => _$this._user = user;

  GFeedInfoVarsBuilder();

  GFeedInfoVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedInfoVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedInfoVars;
  }

  @override
  void update(void Function(GFeedInfoVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedInfoVars build() {
    _$GFeedInfoVars _$result;
    try {
      _$result = _$v ?? new _$GFeedInfoVars._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedInfoVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

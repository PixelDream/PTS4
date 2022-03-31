// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_posts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProfilePostsVars> _$gProfilePostsVarsSerializer =
    new _$GProfilePostsVarsSerializer();

class _$GProfilePostsVarsSerializer
    implements StructuredSerializer<GProfilePostsVars> {
  @override
  final Iterable<Type> types = const [GProfilePostsVars, _$GProfilePostsVars];
  @override
  final String wireName = 'GProfilePostsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProfilePostsVars object,
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
  GProfilePostsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProfilePostsVarsBuilder();

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

class _$GProfilePostsVars extends GProfilePostsVars {
  @override
  final _i1.GUserWhere? user;
  @override
  final _i1.GPostOptions? options;

  factory _$GProfilePostsVars(
          [void Function(GProfilePostsVarsBuilder)? updates]) =>
      (new GProfilePostsVarsBuilder()..update(updates)).build();

  _$GProfilePostsVars._({this.user, this.options}) : super._();

  @override
  GProfilePostsVars rebuild(void Function(GProfilePostsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfilePostsVarsBuilder toBuilder() =>
      new GProfilePostsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfilePostsVars &&
        user == other.user &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GProfilePostsVars')
          ..add('user', user)
          ..add('options', options))
        .toString();
  }
}

class GProfilePostsVarsBuilder
    implements Builder<GProfilePostsVars, GProfilePostsVarsBuilder> {
  _$GProfilePostsVars? _$v;

  _i1.GUserWhereBuilder? _user;
  _i1.GUserWhereBuilder get user =>
      _$this._user ??= new _i1.GUserWhereBuilder();
  set user(_i1.GUserWhereBuilder? user) => _$this._user = user;

  _i1.GPostOptionsBuilder? _options;
  _i1.GPostOptionsBuilder get options =>
      _$this._options ??= new _i1.GPostOptionsBuilder();
  set options(_i1.GPostOptionsBuilder? options) => _$this._options = options;

  GProfilePostsVarsBuilder();

  GProfilePostsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GProfilePostsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfilePostsVars;
  }

  @override
  void update(void Function(GProfilePostsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfilePostsVars build() {
    _$GProfilePostsVars _$result;
    try {
      _$result = _$v ??
          new _$GProfilePostsVars._(
              user: _user?.build(), options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GProfilePostsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

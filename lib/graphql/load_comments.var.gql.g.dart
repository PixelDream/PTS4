// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_comments.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoadCommentsVars> _$gLoadCommentsVarsSerializer =
    new _$GLoadCommentsVarsSerializer();

class _$GLoadCommentsVarsSerializer
    implements StructuredSerializer<GLoadCommentsVars> {
  @override
  final Iterable<Type> types = const [GLoadCommentsVars, _$GLoadCommentsVars];
  @override
  final String wireName = 'GLoadCommentsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLoadCommentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.post;
    if (value != null) {
      result
        ..add('post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCommentWhere)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCommentOptions)));
    }
    return result;
  }

  @override
  GLoadCommentsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoadCommentsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'post':
          result.post.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCommentWhere))!
              as _i1.GCommentWhere);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCommentOptions))!
              as _i1.GCommentOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GLoadCommentsVars extends GLoadCommentsVars {
  @override
  final _i1.GCommentWhere? post;
  @override
  final _i1.GCommentOptions? options;

  factory _$GLoadCommentsVars(
          [void Function(GLoadCommentsVarsBuilder)? updates]) =>
      (new GLoadCommentsVarsBuilder()..update(updates)).build();

  _$GLoadCommentsVars._({this.post, this.options}) : super._();

  @override
  GLoadCommentsVars rebuild(void Function(GLoadCommentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoadCommentsVarsBuilder toBuilder() =>
      new GLoadCommentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoadCommentsVars &&
        post == other.post &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, post.hashCode), options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoadCommentsVars')
          ..add('post', post)
          ..add('options', options))
        .toString();
  }
}

class GLoadCommentsVarsBuilder
    implements Builder<GLoadCommentsVars, GLoadCommentsVarsBuilder> {
  _$GLoadCommentsVars? _$v;

  _i1.GCommentWhereBuilder? _post;
  _i1.GCommentWhereBuilder get post =>
      _$this._post ??= new _i1.GCommentWhereBuilder();
  set post(_i1.GCommentWhereBuilder? post) => _$this._post = post;

  _i1.GCommentOptionsBuilder? _options;
  _i1.GCommentOptionsBuilder get options =>
      _$this._options ??= new _i1.GCommentOptionsBuilder();
  set options(_i1.GCommentOptionsBuilder? options) => _$this._options = options;

  GLoadCommentsVarsBuilder();

  GLoadCommentsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _post = $v.post?.toBuilder();
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoadCommentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoadCommentsVars;
  }

  @override
  void update(void Function(GLoadCommentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoadCommentsVars build() {
    _$GLoadCommentsVars _$result;
    try {
      _$result = _$v ??
          new _$GLoadCommentsVars._(
              post: _post?.build(), options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        _post?.build();
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLoadCommentsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

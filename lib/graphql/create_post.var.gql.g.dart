// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePostVars> _$gCreatePostVarsSerializer =
    new _$GCreatePostVarsSerializer();

class _$GCreatePostVarsSerializer
    implements StructuredSerializer<GCreatePostVars> {
  @override
  final Iterable<Type> types = const [GCreatePostVars, _$GCreatePostVars];
  @override
  final String wireName = 'GCreatePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'post',
      serializers.serialize(object.post,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GPostCreateInput)])),
    ];

    return result;
  }

  @override
  GCreatePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'post':
          result.post.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GPostCreateInput)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostVars extends GCreatePostVars {
  @override
  final BuiltList<_i1.GPostCreateInput> post;

  factory _$GCreatePostVars([void Function(GCreatePostVarsBuilder)? updates]) =>
      (new GCreatePostVarsBuilder()..update(updates)).build();

  _$GCreatePostVars._({required this.post}) : super._() {
    BuiltValueNullFieldError.checkNotNull(post, 'GCreatePostVars', 'post');
  }

  @override
  GCreatePostVars rebuild(void Function(GCreatePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostVarsBuilder toBuilder() =>
      new GCreatePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostVars && post == other.post;
  }

  @override
  int get hashCode {
    return $jf($jc(0, post.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreatePostVars')..add('post', post))
        .toString();
  }
}

class GCreatePostVarsBuilder
    implements Builder<GCreatePostVars, GCreatePostVarsBuilder> {
  _$GCreatePostVars? _$v;

  ListBuilder<_i1.GPostCreateInput>? _post;
  ListBuilder<_i1.GPostCreateInput> get post =>
      _$this._post ??= new ListBuilder<_i1.GPostCreateInput>();
  set post(ListBuilder<_i1.GPostCreateInput>? post) => _$this._post = post;

  GCreatePostVarsBuilder();

  GCreatePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _post = $v.post.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostVars;
  }

  @override
  void update(void Function(GCreatePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreatePostVars build() {
    _$GCreatePostVars _$result;
    try {
      _$result = _$v ?? new _$GCreatePostVars._(post: post.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'post';
        post.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreatePostVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

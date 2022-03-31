// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_story.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GloadStoriesVars> _$gloadStoriesVarsSerializer =
    new _$GloadStoriesVarsSerializer();

class _$GloadStoriesVarsSerializer
    implements StructuredSerializer<GloadStoriesVars> {
  @override
  final Iterable<Type> types = const [GloadStoriesVars, _$GloadStoriesVars];
  @override
  final String wireName = 'GloadStoriesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GloadStoriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.where;
    if (value != null) {
      result
        ..add('where')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUserWhere)));
    }
    return result;
  }

  @override
  GloadStoriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GloadStoriesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'where':
          result.where.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUserWhere))!
              as _i1.GUserWhere);
          break;
      }
    }

    return result.build();
  }
}

class _$GloadStoriesVars extends GloadStoriesVars {
  @override
  final _i1.GUserWhere? where;

  factory _$GloadStoriesVars(
          [void Function(GloadStoriesVarsBuilder)? updates]) =>
      (new GloadStoriesVarsBuilder()..update(updates)).build();

  _$GloadStoriesVars._({this.where}) : super._();

  @override
  GloadStoriesVars rebuild(void Function(GloadStoriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GloadStoriesVarsBuilder toBuilder() =>
      new GloadStoriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GloadStoriesVars && where == other.where;
  }

  @override
  int get hashCode {
    return $jf($jc(0, where.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GloadStoriesVars')
          ..add('where', where))
        .toString();
  }
}

class GloadStoriesVarsBuilder
    implements Builder<GloadStoriesVars, GloadStoriesVarsBuilder> {
  _$GloadStoriesVars? _$v;

  _i1.GUserWhereBuilder? _where;
  _i1.GUserWhereBuilder get where =>
      _$this._where ??= new _i1.GUserWhereBuilder();
  set where(_i1.GUserWhereBuilder? where) => _$this._where = where;

  GloadStoriesVarsBuilder();

  GloadStoriesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _where = $v.where?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GloadStoriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GloadStoriesVars;
  }

  @override
  void update(void Function(GloadStoriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GloadStoriesVars build() {
    _$GloadStoriesVars _$result;
    try {
      _$result = _$v ?? new _$GloadStoriesVars._(where: _where?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'where';
        _where?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GloadStoriesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

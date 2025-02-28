// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProfileVars> _$gProfileVarsSerializer =
    new _$GProfileVarsSerializer();

class _$GProfileVarsSerializer implements StructuredSerializer<GProfileVars> {
  @override
  final Iterable<Type> types = const [GProfileVars, _$GProfileVars];
  @override
  final String wireName = 'GProfileVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GProfileVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProfileVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProfileVarsBuilder().build();
  }
}

class _$GProfileVars extends GProfileVars {
  factory _$GProfileVars([void Function(GProfileVarsBuilder)? updates]) =>
      (new GProfileVarsBuilder()..update(updates)).build();

  _$GProfileVars._() : super._();

  @override
  GProfileVars rebuild(void Function(GProfileVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProfileVarsBuilder toBuilder() => new GProfileVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProfileVars;
  }

  @override
  int get hashCode {
    return 751913055;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GProfileVars').toString();
  }
}

class GProfileVarsBuilder
    implements Builder<GProfileVars, GProfileVarsBuilder> {
  _$GProfileVars? _$v;

  GProfileVarsBuilder();

  @override
  void replace(GProfileVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProfileVars;
  }

  @override
  void update(void Function(GProfileVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProfileVars build() {
    final _$result = _$v ?? new _$GProfileVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

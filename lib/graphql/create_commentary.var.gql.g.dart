// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_commentary.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateCommentaryVars> _$gCreateCommentaryVarsSerializer =
    new _$GCreateCommentaryVarsSerializer();

class _$GCreateCommentaryVarsSerializer
    implements StructuredSerializer<GCreateCommentaryVars> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentaryVars,
    _$GCreateCommentaryVars
  ];
  @override
  final String wireName = 'GCreateCommentaryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentaryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GCommentCreateInput)])),
    ];

    return result;
  }

  @override
  GCreateCommentaryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentaryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GCommentCreateInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentaryVars extends GCreateCommentaryVars {
  @override
  final BuiltList<_i1.GCommentCreateInput> input;

  factory _$GCreateCommentaryVars(
          [void Function(GCreateCommentaryVarsBuilder)? updates]) =>
      (new GCreateCommentaryVarsBuilder()..update(updates)).build();

  _$GCreateCommentaryVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        input, 'GCreateCommentaryVars', 'input');
  }

  @override
  GCreateCommentaryVars rebuild(
          void Function(GCreateCommentaryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentaryVarsBuilder toBuilder() =>
      new GCreateCommentaryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentaryVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateCommentaryVars')
          ..add('input', input))
        .toString();
  }
}

class GCreateCommentaryVarsBuilder
    implements Builder<GCreateCommentaryVars, GCreateCommentaryVarsBuilder> {
  _$GCreateCommentaryVars? _$v;

  ListBuilder<_i1.GCommentCreateInput>? _input;
  ListBuilder<_i1.GCommentCreateInput> get input =>
      _$this._input ??= new ListBuilder<_i1.GCommentCreateInput>();
  set input(ListBuilder<_i1.GCommentCreateInput>? input) =>
      _$this._input = input;

  GCreateCommentaryVarsBuilder();

  GCreateCommentaryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentaryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentaryVars;
  }

  @override
  void update(void Function(GCreateCommentaryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateCommentaryVars build() {
    _$GCreateCommentaryVars _$result;
    try {
      _$result = _$v ?? new _$GCreateCommentaryVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateCommentaryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

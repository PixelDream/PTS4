// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_story.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateStoriesVars> _$gCreateStoriesVarsSerializer =
    new _$GCreateStoriesVarsSerializer();

class _$GCreateStoriesVarsSerializer
    implements StructuredSerializer<GCreateStoriesVars> {
  @override
  final Iterable<Type> types = const [GCreateStoriesVars, _$GCreateStoriesVars];
  @override
  final String wireName = 'GCreateStoriesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateStoriesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'story',
      serializers.serialize(object.story,
          specifiedType: const FullType(
              BuiltList, const [const FullType(_i1.GStoryCreateInput)])),
    ];

    return result;
  }

  @override
  GCreateStoriesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateStoriesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'story':
          result.story.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(_i1.GStoryCreateInput)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateStoriesVars extends GCreateStoriesVars {
  @override
  final BuiltList<_i1.GStoryCreateInput> story;

  factory _$GCreateStoriesVars(
          [void Function(GCreateStoriesVarsBuilder)? updates]) =>
      (new GCreateStoriesVarsBuilder()..update(updates)).build();

  _$GCreateStoriesVars._({required this.story}) : super._() {
    BuiltValueNullFieldError.checkNotNull(story, 'GCreateStoriesVars', 'story');
  }

  @override
  GCreateStoriesVars rebuild(
          void Function(GCreateStoriesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateStoriesVarsBuilder toBuilder() =>
      new GCreateStoriesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateStoriesVars && story == other.story;
  }

  @override
  int get hashCode {
    return $jf($jc(0, story.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateStoriesVars')
          ..add('story', story))
        .toString();
  }
}

class GCreateStoriesVarsBuilder
    implements Builder<GCreateStoriesVars, GCreateStoriesVarsBuilder> {
  _$GCreateStoriesVars? _$v;

  ListBuilder<_i1.GStoryCreateInput>? _story;
  ListBuilder<_i1.GStoryCreateInput> get story =>
      _$this._story ??= new ListBuilder<_i1.GStoryCreateInput>();
  set story(ListBuilder<_i1.GStoryCreateInput>? story) => _$this._story = story;

  GCreateStoriesVarsBuilder();

  GCreateStoriesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _story = $v.story.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateStoriesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateStoriesVars;
  }

  @override
  void update(void Function(GCreateStoriesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateStoriesVars build() {
    _$GCreateStoriesVars _$result;
    try {
      _$result = _$v ?? new _$GCreateStoriesVars._(story: story.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'story';
        story.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateStoriesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_story.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateStoriesData> _$gCreateStoriesDataSerializer =
    new _$GCreateStoriesDataSerializer();
Serializer<GCreateStoriesData_createStories>
    _$gCreateStoriesDataCreateStoriesSerializer =
    new _$GCreateStoriesData_createStoriesSerializer();
Serializer<GCreateStoriesData_createStories_info>
    _$gCreateStoriesDataCreateStoriesInfoSerializer =
    new _$GCreateStoriesData_createStories_infoSerializer();

class _$GCreateStoriesDataSerializer
    implements StructuredSerializer<GCreateStoriesData> {
  @override
  final Iterable<Type> types = const [GCreateStoriesData, _$GCreateStoriesData];
  @override
  final String wireName = 'GCreateStoriesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateStoriesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createStories',
      serializers.serialize(object.createStories,
          specifiedType: const FullType(GCreateStoriesData_createStories)),
    ];

    return result;
  }

  @override
  GCreateStoriesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateStoriesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createStories':
          result.createStories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateStoriesData_createStories))!
              as GCreateStoriesData_createStories);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateStoriesData_createStoriesSerializer
    implements StructuredSerializer<GCreateStoriesData_createStories> {
  @override
  final Iterable<Type> types = const [
    GCreateStoriesData_createStories,
    _$GCreateStoriesData_createStories
  ];
  @override
  final String wireName = 'GCreateStoriesData_createStories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateStoriesData_createStories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(GCreateStoriesData_createStories_info)),
    ];

    return result;
  }

  @override
  GCreateStoriesData_createStories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateStoriesData_createStoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateStoriesData_createStories_info))!
              as GCreateStoriesData_createStories_info);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateStoriesData_createStories_infoSerializer
    implements StructuredSerializer<GCreateStoriesData_createStories_info> {
  @override
  final Iterable<Type> types = const [
    GCreateStoriesData_createStories_info,
    _$GCreateStoriesData_createStories_info
  ];
  @override
  final String wireName = 'GCreateStoriesData_createStories_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateStoriesData_createStories_info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nodesCreated',
      serializers.serialize(object.nodesCreated,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GCreateStoriesData_createStories_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateStoriesData_createStories_infoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nodesCreated':
          result.nodesCreated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateStoriesData extends GCreateStoriesData {
  @override
  final String G__typename;
  @override
  final GCreateStoriesData_createStories createStories;

  factory _$GCreateStoriesData(
          [void Function(GCreateStoriesDataBuilder)? updates]) =>
      (new GCreateStoriesDataBuilder()..update(updates)).build();

  _$GCreateStoriesData._(
      {required this.G__typename, required this.createStories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateStoriesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createStories, 'GCreateStoriesData', 'createStories');
  }

  @override
  GCreateStoriesData rebuild(
          void Function(GCreateStoriesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateStoriesDataBuilder toBuilder() =>
      new GCreateStoriesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateStoriesData &&
        G__typename == other.G__typename &&
        createStories == other.createStories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createStories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateStoriesData')
          ..add('G__typename', G__typename)
          ..add('createStories', createStories))
        .toString();
  }
}

class GCreateStoriesDataBuilder
    implements Builder<GCreateStoriesData, GCreateStoriesDataBuilder> {
  _$GCreateStoriesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateStoriesData_createStoriesBuilder? _createStories;
  GCreateStoriesData_createStoriesBuilder get createStories =>
      _$this._createStories ??= new GCreateStoriesData_createStoriesBuilder();
  set createStories(GCreateStoriesData_createStoriesBuilder? createStories) =>
      _$this._createStories = createStories;

  GCreateStoriesDataBuilder() {
    GCreateStoriesData._initializeBuilder(this);
  }

  GCreateStoriesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createStories = $v.createStories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateStoriesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateStoriesData;
  }

  @override
  void update(void Function(GCreateStoriesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateStoriesData build() {
    _$GCreateStoriesData _$result;
    try {
      _$result = _$v ??
          new _$GCreateStoriesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateStoriesData', 'G__typename'),
              createStories: createStories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createStories';
        createStories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateStoriesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateStoriesData_createStories
    extends GCreateStoriesData_createStories {
  @override
  final String G__typename;
  @override
  final GCreateStoriesData_createStories_info info;

  factory _$GCreateStoriesData_createStories(
          [void Function(GCreateStoriesData_createStoriesBuilder)? updates]) =>
      (new GCreateStoriesData_createStoriesBuilder()..update(updates)).build();

  _$GCreateStoriesData_createStories._(
      {required this.G__typename, required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateStoriesData_createStories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        info, 'GCreateStoriesData_createStories', 'info');
  }

  @override
  GCreateStoriesData_createStories rebuild(
          void Function(GCreateStoriesData_createStoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateStoriesData_createStoriesBuilder toBuilder() =>
      new GCreateStoriesData_createStoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateStoriesData_createStories &&
        G__typename == other.G__typename &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateStoriesData_createStories')
          ..add('G__typename', G__typename)
          ..add('info', info))
        .toString();
  }
}

class GCreateStoriesData_createStoriesBuilder
    implements
        Builder<GCreateStoriesData_createStories,
            GCreateStoriesData_createStoriesBuilder> {
  _$GCreateStoriesData_createStories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateStoriesData_createStories_infoBuilder? _info;
  GCreateStoriesData_createStories_infoBuilder get info =>
      _$this._info ??= new GCreateStoriesData_createStories_infoBuilder();
  set info(GCreateStoriesData_createStories_infoBuilder? info) =>
      _$this._info = info;

  GCreateStoriesData_createStoriesBuilder() {
    GCreateStoriesData_createStories._initializeBuilder(this);
  }

  GCreateStoriesData_createStoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateStoriesData_createStories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateStoriesData_createStories;
  }

  @override
  void update(void Function(GCreateStoriesData_createStoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateStoriesData_createStories build() {
    _$GCreateStoriesData_createStories _$result;
    try {
      _$result = _$v ??
          new _$GCreateStoriesData_createStories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GCreateStoriesData_createStories', 'G__typename'),
              info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateStoriesData_createStories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateStoriesData_createStories_info
    extends GCreateStoriesData_createStories_info {
  @override
  final String G__typename;
  @override
  final int nodesCreated;

  factory _$GCreateStoriesData_createStories_info(
          [void Function(GCreateStoriesData_createStories_infoBuilder)?
              updates]) =>
      (new GCreateStoriesData_createStories_infoBuilder()..update(updates))
          .build();

  _$GCreateStoriesData_createStories_info._(
      {required this.G__typename, required this.nodesCreated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateStoriesData_createStories_info', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nodesCreated, 'GCreateStoriesData_createStories_info', 'nodesCreated');
  }

  @override
  GCreateStoriesData_createStories_info rebuild(
          void Function(GCreateStoriesData_createStories_infoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateStoriesData_createStories_infoBuilder toBuilder() =>
      new GCreateStoriesData_createStories_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateStoriesData_createStories_info &&
        G__typename == other.G__typename &&
        nodesCreated == other.nodesCreated;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), nodesCreated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateStoriesData_createStories_info')
          ..add('G__typename', G__typename)
          ..add('nodesCreated', nodesCreated))
        .toString();
  }
}

class GCreateStoriesData_createStories_infoBuilder
    implements
        Builder<GCreateStoriesData_createStories_info,
            GCreateStoriesData_createStories_infoBuilder> {
  _$GCreateStoriesData_createStories_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _nodesCreated;
  int? get nodesCreated => _$this._nodesCreated;
  set nodesCreated(int? nodesCreated) => _$this._nodesCreated = nodesCreated;

  GCreateStoriesData_createStories_infoBuilder() {
    GCreateStoriesData_createStories_info._initializeBuilder(this);
  }

  GCreateStoriesData_createStories_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodesCreated = $v.nodesCreated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateStoriesData_createStories_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateStoriesData_createStories_info;
  }

  @override
  void update(
      void Function(GCreateStoriesData_createStories_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateStoriesData_createStories_info build() {
    final _$result = _$v ??
        new _$GCreateStoriesData_createStories_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCreateStoriesData_createStories_info', 'G__typename'),
            nodesCreated: BuiltValueNullFieldError.checkNotNull(nodesCreated,
                'GCreateStoriesData_createStories_info', 'nodesCreated'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

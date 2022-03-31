// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePostData> _$gCreatePostDataSerializer =
    new _$GCreatePostDataSerializer();
Serializer<GCreatePostData_createPosts> _$gCreatePostDataCreatePostsSerializer =
    new _$GCreatePostData_createPostsSerializer();
Serializer<GCreatePostData_createPosts_info>
    _$gCreatePostDataCreatePostsInfoSerializer =
    new _$GCreatePostData_createPosts_infoSerializer();

class _$GCreatePostDataSerializer
    implements StructuredSerializer<GCreatePostData> {
  @override
  final Iterable<Type> types = const [GCreatePostData, _$GCreatePostData];
  @override
  final String wireName = 'GCreatePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createPosts',
      serializers.serialize(object.createPosts,
          specifiedType: const FullType(GCreatePostData_createPosts)),
    ];

    return result;
  }

  @override
  GCreatePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostDataBuilder();

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
        case 'createPosts':
          result.createPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreatePostData_createPosts))!
              as GCreatePostData_createPosts);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_createPostsSerializer
    implements StructuredSerializer<GCreatePostData_createPosts> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_createPosts,
    _$GCreatePostData_createPosts
  ];
  @override
  final String wireName = 'GCreatePostData_createPosts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_createPosts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(GCreatePostData_createPosts_info)),
    ];

    return result;
  }

  @override
  GCreatePostData_createPosts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_createPostsBuilder();

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
                      const FullType(GCreatePostData_createPosts_info))!
              as GCreatePostData_createPosts_info);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_createPosts_infoSerializer
    implements StructuredSerializer<GCreatePostData_createPosts_info> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_createPosts_info,
    _$GCreatePostData_createPosts_info
  ];
  @override
  final String wireName = 'GCreatePostData_createPosts_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_createPosts_info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nodesCreated',
      serializers.serialize(object.nodesCreated,
          specifiedType: const FullType(int)),
      'relationshipsCreated',
      serializers.serialize(object.relationshipsCreated,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GCreatePostData_createPosts_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_createPosts_infoBuilder();

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
        case 'relationshipsCreated':
          result.relationshipsCreated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData extends GCreatePostData {
  @override
  final String G__typename;
  @override
  final GCreatePostData_createPosts createPosts;

  factory _$GCreatePostData([void Function(GCreatePostDataBuilder)? updates]) =>
      (new GCreatePostDataBuilder()..update(updates)).build();

  _$GCreatePostData._({required this.G__typename, required this.createPosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreatePostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createPosts, 'GCreatePostData', 'createPosts');
  }

  @override
  GCreatePostData rebuild(void Function(GCreatePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostDataBuilder toBuilder() =>
      new GCreatePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData &&
        G__typename == other.G__typename &&
        createPosts == other.createPosts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createPosts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreatePostData')
          ..add('G__typename', G__typename)
          ..add('createPosts', createPosts))
        .toString();
  }
}

class GCreatePostDataBuilder
    implements Builder<GCreatePostData, GCreatePostDataBuilder> {
  _$GCreatePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePostData_createPostsBuilder? _createPosts;
  GCreatePostData_createPostsBuilder get createPosts =>
      _$this._createPosts ??= new GCreatePostData_createPostsBuilder();
  set createPosts(GCreatePostData_createPostsBuilder? createPosts) =>
      _$this._createPosts = createPosts;

  GCreatePostDataBuilder() {
    GCreatePostData._initializeBuilder(this);
  }

  GCreatePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createPosts = $v.createPosts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData;
  }

  @override
  void update(void Function(GCreatePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreatePostData build() {
    _$GCreatePostData _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreatePostData', 'G__typename'),
              createPosts: createPosts.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createPosts';
        createPosts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreatePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_createPosts extends GCreatePostData_createPosts {
  @override
  final String G__typename;
  @override
  final GCreatePostData_createPosts_info info;

  factory _$GCreatePostData_createPosts(
          [void Function(GCreatePostData_createPostsBuilder)? updates]) =>
      (new GCreatePostData_createPostsBuilder()..update(updates)).build();

  _$GCreatePostData_createPosts._(
      {required this.G__typename, required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreatePostData_createPosts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        info, 'GCreatePostData_createPosts', 'info');
  }

  @override
  GCreatePostData_createPosts rebuild(
          void Function(GCreatePostData_createPostsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_createPostsBuilder toBuilder() =>
      new GCreatePostData_createPostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_createPosts &&
        G__typename == other.G__typename &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreatePostData_createPosts')
          ..add('G__typename', G__typename)
          ..add('info', info))
        .toString();
  }
}

class GCreatePostData_createPostsBuilder
    implements
        Builder<GCreatePostData_createPosts,
            GCreatePostData_createPostsBuilder> {
  _$GCreatePostData_createPosts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePostData_createPosts_infoBuilder? _info;
  GCreatePostData_createPosts_infoBuilder get info =>
      _$this._info ??= new GCreatePostData_createPosts_infoBuilder();
  set info(GCreatePostData_createPosts_infoBuilder? info) =>
      _$this._info = info;

  GCreatePostData_createPostsBuilder() {
    GCreatePostData_createPosts._initializeBuilder(this);
  }

  GCreatePostData_createPostsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData_createPosts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_createPosts;
  }

  @override
  void update(void Function(GCreatePostData_createPostsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreatePostData_createPosts build() {
    _$GCreatePostData_createPosts _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData_createPosts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreatePostData_createPosts', 'G__typename'),
              info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreatePostData_createPosts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_createPosts_info
    extends GCreatePostData_createPosts_info {
  @override
  final String G__typename;
  @override
  final int nodesCreated;
  @override
  final int relationshipsCreated;

  factory _$GCreatePostData_createPosts_info(
          [void Function(GCreatePostData_createPosts_infoBuilder)? updates]) =>
      (new GCreatePostData_createPosts_infoBuilder()..update(updates)).build();

  _$GCreatePostData_createPosts_info._(
      {required this.G__typename,
      required this.nodesCreated,
      required this.relationshipsCreated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreatePostData_createPosts_info', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nodesCreated, 'GCreatePostData_createPosts_info', 'nodesCreated');
    BuiltValueNullFieldError.checkNotNull(relationshipsCreated,
        'GCreatePostData_createPosts_info', 'relationshipsCreated');
  }

  @override
  GCreatePostData_createPosts_info rebuild(
          void Function(GCreatePostData_createPosts_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_createPosts_infoBuilder toBuilder() =>
      new GCreatePostData_createPosts_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_createPosts_info &&
        G__typename == other.G__typename &&
        nodesCreated == other.nodesCreated &&
        relationshipsCreated == other.relationshipsCreated;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), nodesCreated.hashCode),
        relationshipsCreated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreatePostData_createPosts_info')
          ..add('G__typename', G__typename)
          ..add('nodesCreated', nodesCreated)
          ..add('relationshipsCreated', relationshipsCreated))
        .toString();
  }
}

class GCreatePostData_createPosts_infoBuilder
    implements
        Builder<GCreatePostData_createPosts_info,
            GCreatePostData_createPosts_infoBuilder> {
  _$GCreatePostData_createPosts_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _nodesCreated;
  int? get nodesCreated => _$this._nodesCreated;
  set nodesCreated(int? nodesCreated) => _$this._nodesCreated = nodesCreated;

  int? _relationshipsCreated;
  int? get relationshipsCreated => _$this._relationshipsCreated;
  set relationshipsCreated(int? relationshipsCreated) =>
      _$this._relationshipsCreated = relationshipsCreated;

  GCreatePostData_createPosts_infoBuilder() {
    GCreatePostData_createPosts_info._initializeBuilder(this);
  }

  GCreatePostData_createPosts_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodesCreated = $v.nodesCreated;
      _relationshipsCreated = $v.relationshipsCreated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData_createPosts_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_createPosts_info;
  }

  @override
  void update(void Function(GCreatePostData_createPosts_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreatePostData_createPosts_info build() {
    final _$result = _$v ??
        new _$GCreatePostData_createPosts_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCreatePostData_createPosts_info', 'G__typename'),
            nodesCreated: BuiltValueNullFieldError.checkNotNull(nodesCreated,
                'GCreatePostData_createPosts_info', 'nodesCreated'),
            relationshipsCreated: BuiltValueNullFieldError.checkNotNull(
                relationshipsCreated,
                'GCreatePostData_createPosts_info',
                'relationshipsCreated'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

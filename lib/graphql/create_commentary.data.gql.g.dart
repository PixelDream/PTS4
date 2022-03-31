// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_commentary.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateCommentaryData> _$gCreateCommentaryDataSerializer =
    new _$GCreateCommentaryDataSerializer();
Serializer<GCreateCommentaryData_createComments>
    _$gCreateCommentaryDataCreateCommentsSerializer =
    new _$GCreateCommentaryData_createCommentsSerializer();
Serializer<GCreateCommentaryData_createComments_info>
    _$gCreateCommentaryDataCreateCommentsInfoSerializer =
    new _$GCreateCommentaryData_createComments_infoSerializer();

class _$GCreateCommentaryDataSerializer
    implements StructuredSerializer<GCreateCommentaryData> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentaryData,
    _$GCreateCommentaryData
  ];
  @override
  final String wireName = 'GCreateCommentaryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentaryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'createComments',
      serializers.serialize(object.createComments,
          specifiedType: const FullType(GCreateCommentaryData_createComments)),
    ];

    return result;
  }

  @override
  GCreateCommentaryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentaryDataBuilder();

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
        case 'createComments':
          result.createComments.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCreateCommentaryData_createComments))!
              as GCreateCommentaryData_createComments);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentaryData_createCommentsSerializer
    implements StructuredSerializer<GCreateCommentaryData_createComments> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentaryData_createComments,
    _$GCreateCommentaryData_createComments
  ];
  @override
  final String wireName = 'GCreateCommentaryData_createComments';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentaryData_createComments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'info',
      serializers.serialize(object.info,
          specifiedType:
              const FullType(GCreateCommentaryData_createComments_info)),
    ];

    return result;
  }

  @override
  GCreateCommentaryData_createComments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentaryData_createCommentsBuilder();

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
                  specifiedType: const FullType(
                      GCreateCommentaryData_createComments_info))!
              as GCreateCommentaryData_createComments_info);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateCommentaryData_createComments_infoSerializer
    implements StructuredSerializer<GCreateCommentaryData_createComments_info> {
  @override
  final Iterable<Type> types = const [
    GCreateCommentaryData_createComments_info,
    _$GCreateCommentaryData_createComments_info
  ];
  @override
  final String wireName = 'GCreateCommentaryData_createComments_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateCommentaryData_createComments_info object,
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
  GCreateCommentaryData_createComments_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateCommentaryData_createComments_infoBuilder();

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

class _$GCreateCommentaryData extends GCreateCommentaryData {
  @override
  final String G__typename;
  @override
  final GCreateCommentaryData_createComments createComments;

  factory _$GCreateCommentaryData(
          [void Function(GCreateCommentaryDataBuilder)? updates]) =>
      (new GCreateCommentaryDataBuilder()..update(updates)).build();

  _$GCreateCommentaryData._(
      {required this.G__typename, required this.createComments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateCommentaryData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        createComments, 'GCreateCommentaryData', 'createComments');
  }

  @override
  GCreateCommentaryData rebuild(
          void Function(GCreateCommentaryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentaryDataBuilder toBuilder() =>
      new GCreateCommentaryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentaryData &&
        G__typename == other.G__typename &&
        createComments == other.createComments;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createComments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateCommentaryData')
          ..add('G__typename', G__typename)
          ..add('createComments', createComments))
        .toString();
  }
}

class GCreateCommentaryDataBuilder
    implements Builder<GCreateCommentaryData, GCreateCommentaryDataBuilder> {
  _$GCreateCommentaryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateCommentaryData_createCommentsBuilder? _createComments;
  GCreateCommentaryData_createCommentsBuilder get createComments =>
      _$this._createComments ??=
          new GCreateCommentaryData_createCommentsBuilder();
  set createComments(
          GCreateCommentaryData_createCommentsBuilder? createComments) =>
      _$this._createComments = createComments;

  GCreateCommentaryDataBuilder() {
    GCreateCommentaryData._initializeBuilder(this);
  }

  GCreateCommentaryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createComments = $v.createComments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentaryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentaryData;
  }

  @override
  void update(void Function(GCreateCommentaryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateCommentaryData build() {
    _$GCreateCommentaryData _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentaryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCreateCommentaryData', 'G__typename'),
              createComments: createComments.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createComments';
        createComments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateCommentaryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentaryData_createComments
    extends GCreateCommentaryData_createComments {
  @override
  final String G__typename;
  @override
  final GCreateCommentaryData_createComments_info info;

  factory _$GCreateCommentaryData_createComments(
          [void Function(GCreateCommentaryData_createCommentsBuilder)?
              updates]) =>
      (new GCreateCommentaryData_createCommentsBuilder()..update(updates))
          .build();

  _$GCreateCommentaryData_createComments._(
      {required this.G__typename, required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCreateCommentaryData_createComments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        info, 'GCreateCommentaryData_createComments', 'info');
  }

  @override
  GCreateCommentaryData_createComments rebuild(
          void Function(GCreateCommentaryData_createCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentaryData_createCommentsBuilder toBuilder() =>
      new GCreateCommentaryData_createCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentaryData_createComments &&
        G__typename == other.G__typename &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateCommentaryData_createComments')
          ..add('G__typename', G__typename)
          ..add('info', info))
        .toString();
  }
}

class GCreateCommentaryData_createCommentsBuilder
    implements
        Builder<GCreateCommentaryData_createComments,
            GCreateCommentaryData_createCommentsBuilder> {
  _$GCreateCommentaryData_createComments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreateCommentaryData_createComments_infoBuilder? _info;
  GCreateCommentaryData_createComments_infoBuilder get info =>
      _$this._info ??= new GCreateCommentaryData_createComments_infoBuilder();
  set info(GCreateCommentaryData_createComments_infoBuilder? info) =>
      _$this._info = info;

  GCreateCommentaryData_createCommentsBuilder() {
    GCreateCommentaryData_createComments._initializeBuilder(this);
  }

  GCreateCommentaryData_createCommentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentaryData_createComments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentaryData_createComments;
  }

  @override
  void update(
      void Function(GCreateCommentaryData_createCommentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateCommentaryData_createComments build() {
    _$GCreateCommentaryData_createComments _$result;
    try {
      _$result = _$v ??
          new _$GCreateCommentaryData_createComments._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GCreateCommentaryData_createComments', 'G__typename'),
              info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateCommentaryData_createComments',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreateCommentaryData_createComments_info
    extends GCreateCommentaryData_createComments_info {
  @override
  final String G__typename;
  @override
  final int nodesCreated;

  factory _$GCreateCommentaryData_createComments_info(
          [void Function(GCreateCommentaryData_createComments_infoBuilder)?
              updates]) =>
      (new GCreateCommentaryData_createComments_infoBuilder()..update(updates))
          .build();

  _$GCreateCommentaryData_createComments_info._(
      {required this.G__typename, required this.nodesCreated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCreateCommentaryData_createComments_info', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(nodesCreated,
        'GCreateCommentaryData_createComments_info', 'nodesCreated');
  }

  @override
  GCreateCommentaryData_createComments_info rebuild(
          void Function(GCreateCommentaryData_createComments_infoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateCommentaryData_createComments_infoBuilder toBuilder() =>
      new GCreateCommentaryData_createComments_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateCommentaryData_createComments_info &&
        G__typename == other.G__typename &&
        nodesCreated == other.nodesCreated;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), nodesCreated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GCreateCommentaryData_createComments_info')
          ..add('G__typename', G__typename)
          ..add('nodesCreated', nodesCreated))
        .toString();
  }
}

class GCreateCommentaryData_createComments_infoBuilder
    implements
        Builder<GCreateCommentaryData_createComments_info,
            GCreateCommentaryData_createComments_infoBuilder> {
  _$GCreateCommentaryData_createComments_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _nodesCreated;
  int? get nodesCreated => _$this._nodesCreated;
  set nodesCreated(int? nodesCreated) => _$this._nodesCreated = nodesCreated;

  GCreateCommentaryData_createComments_infoBuilder() {
    GCreateCommentaryData_createComments_info._initializeBuilder(this);
  }

  GCreateCommentaryData_createComments_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodesCreated = $v.nodesCreated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateCommentaryData_createComments_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateCommentaryData_createComments_info;
  }

  @override
  void update(
      void Function(GCreateCommentaryData_createComments_infoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateCommentaryData_createComments_info build() {
    final _$result = _$v ??
        new _$GCreateCommentaryData_createComments_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCreateCommentaryData_createComments_info', 'G__typename'),
            nodesCreated: BuiltValueNullFieldError.checkNotNull(nodesCreated,
                'GCreateCommentaryData_createComments_info', 'nodesCreated'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

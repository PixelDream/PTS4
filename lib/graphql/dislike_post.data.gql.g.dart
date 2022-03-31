// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dislike_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDislikePostData> _$gDislikePostDataSerializer =
    new _$GDislikePostDataSerializer();
Serializer<GDislikePostData_updateUsers>
    _$gDislikePostDataUpdateUsersSerializer =
    new _$GDislikePostData_updateUsersSerializer();
Serializer<GDislikePostData_updateUsers_info>
    _$gDislikePostDataUpdateUsersInfoSerializer =
    new _$GDislikePostData_updateUsers_infoSerializer();

class _$GDislikePostDataSerializer
    implements StructuredSerializer<GDislikePostData> {
  @override
  final Iterable<Type> types = const [GDislikePostData, _$GDislikePostData];
  @override
  final String wireName = 'GDislikePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDislikePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateUsers',
      serializers.serialize(object.updateUsers,
          specifiedType: const FullType(GDislikePostData_updateUsers)),
    ];

    return result;
  }

  @override
  GDislikePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDislikePostDataBuilder();

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
        case 'updateUsers':
          result.updateUsers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GDislikePostData_updateUsers))!
              as GDislikePostData_updateUsers);
          break;
      }
    }

    return result.build();
  }
}

class _$GDislikePostData_updateUsersSerializer
    implements StructuredSerializer<GDislikePostData_updateUsers> {
  @override
  final Iterable<Type> types = const [
    GDislikePostData_updateUsers,
    _$GDislikePostData_updateUsers
  ];
  @override
  final String wireName = 'GDislikePostData_updateUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDislikePostData_updateUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(GDislikePostData_updateUsers_info)),
    ];

    return result;
  }

  @override
  GDislikePostData_updateUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDislikePostData_updateUsersBuilder();

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
                      const FullType(GDislikePostData_updateUsers_info))!
              as GDislikePostData_updateUsers_info);
          break;
      }
    }

    return result.build();
  }
}

class _$GDislikePostData_updateUsers_infoSerializer
    implements StructuredSerializer<GDislikePostData_updateUsers_info> {
  @override
  final Iterable<Type> types = const [
    GDislikePostData_updateUsers_info,
    _$GDislikePostData_updateUsers_info
  ];
  @override
  final String wireName = 'GDislikePostData_updateUsers_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDislikePostData_updateUsers_info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'relationshipsDeleted',
      serializers.serialize(object.relationshipsDeleted,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GDislikePostData_updateUsers_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDislikePostData_updateUsers_infoBuilder();

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
        case 'relationshipsDeleted':
          result.relationshipsDeleted = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GDislikePostData extends GDislikePostData {
  @override
  final String G__typename;
  @override
  final GDislikePostData_updateUsers updateUsers;

  factory _$GDislikePostData(
          [void Function(GDislikePostDataBuilder)? updates]) =>
      (new GDislikePostDataBuilder()..update(updates)).build();

  _$GDislikePostData._({required this.G__typename, required this.updateUsers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDislikePostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateUsers, 'GDislikePostData', 'updateUsers');
  }

  @override
  GDislikePostData rebuild(void Function(GDislikePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDislikePostDataBuilder toBuilder() =>
      new GDislikePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDislikePostData &&
        G__typename == other.G__typename &&
        updateUsers == other.updateUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDislikePostData')
          ..add('G__typename', G__typename)
          ..add('updateUsers', updateUsers))
        .toString();
  }
}

class GDislikePostDataBuilder
    implements Builder<GDislikePostData, GDislikePostDataBuilder> {
  _$GDislikePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDislikePostData_updateUsersBuilder? _updateUsers;
  GDislikePostData_updateUsersBuilder get updateUsers =>
      _$this._updateUsers ??= new GDislikePostData_updateUsersBuilder();
  set updateUsers(GDislikePostData_updateUsersBuilder? updateUsers) =>
      _$this._updateUsers = updateUsers;

  GDislikePostDataBuilder() {
    GDislikePostData._initializeBuilder(this);
  }

  GDislikePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateUsers = $v.updateUsers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDislikePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDislikePostData;
  }

  @override
  void update(void Function(GDislikePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDislikePostData build() {
    _$GDislikePostData _$result;
    try {
      _$result = _$v ??
          new _$GDislikePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDislikePostData', 'G__typename'),
              updateUsers: updateUsers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUsers';
        updateUsers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDislikePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDislikePostData_updateUsers extends GDislikePostData_updateUsers {
  @override
  final String G__typename;
  @override
  final GDislikePostData_updateUsers_info info;

  factory _$GDislikePostData_updateUsers(
          [void Function(GDislikePostData_updateUsersBuilder)? updates]) =>
      (new GDislikePostData_updateUsersBuilder()..update(updates)).build();

  _$GDislikePostData_updateUsers._(
      {required this.G__typename, required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDislikePostData_updateUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        info, 'GDislikePostData_updateUsers', 'info');
  }

  @override
  GDislikePostData_updateUsers rebuild(
          void Function(GDislikePostData_updateUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDislikePostData_updateUsersBuilder toBuilder() =>
      new GDislikePostData_updateUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDislikePostData_updateUsers &&
        G__typename == other.G__typename &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDislikePostData_updateUsers')
          ..add('G__typename', G__typename)
          ..add('info', info))
        .toString();
  }
}

class GDislikePostData_updateUsersBuilder
    implements
        Builder<GDislikePostData_updateUsers,
            GDislikePostData_updateUsersBuilder> {
  _$GDislikePostData_updateUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDislikePostData_updateUsers_infoBuilder? _info;
  GDislikePostData_updateUsers_infoBuilder get info =>
      _$this._info ??= new GDislikePostData_updateUsers_infoBuilder();
  set info(GDislikePostData_updateUsers_infoBuilder? info) =>
      _$this._info = info;

  GDislikePostData_updateUsersBuilder() {
    GDislikePostData_updateUsers._initializeBuilder(this);
  }

  GDislikePostData_updateUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDislikePostData_updateUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDislikePostData_updateUsers;
  }

  @override
  void update(void Function(GDislikePostData_updateUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDislikePostData_updateUsers build() {
    _$GDislikePostData_updateUsers _$result;
    try {
      _$result = _$v ??
          new _$GDislikePostData_updateUsers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDislikePostData_updateUsers', 'G__typename'),
              info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDislikePostData_updateUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDislikePostData_updateUsers_info
    extends GDislikePostData_updateUsers_info {
  @override
  final String G__typename;
  @override
  final int relationshipsDeleted;

  factory _$GDislikePostData_updateUsers_info(
          [void Function(GDislikePostData_updateUsers_infoBuilder)? updates]) =>
      (new GDislikePostData_updateUsers_infoBuilder()..update(updates)).build();

  _$GDislikePostData_updateUsers_info._(
      {required this.G__typename, required this.relationshipsDeleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDislikePostData_updateUsers_info', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(relationshipsDeleted,
        'GDislikePostData_updateUsers_info', 'relationshipsDeleted');
  }

  @override
  GDislikePostData_updateUsers_info rebuild(
          void Function(GDislikePostData_updateUsers_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDislikePostData_updateUsers_infoBuilder toBuilder() =>
      new GDislikePostData_updateUsers_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDislikePostData_updateUsers_info &&
        G__typename == other.G__typename &&
        relationshipsDeleted == other.relationshipsDeleted;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), relationshipsDeleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDislikePostData_updateUsers_info')
          ..add('G__typename', G__typename)
          ..add('relationshipsDeleted', relationshipsDeleted))
        .toString();
  }
}

class GDislikePostData_updateUsers_infoBuilder
    implements
        Builder<GDislikePostData_updateUsers_info,
            GDislikePostData_updateUsers_infoBuilder> {
  _$GDislikePostData_updateUsers_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _relationshipsDeleted;
  int? get relationshipsDeleted => _$this._relationshipsDeleted;
  set relationshipsDeleted(int? relationshipsDeleted) =>
      _$this._relationshipsDeleted = relationshipsDeleted;

  GDislikePostData_updateUsers_infoBuilder() {
    GDislikePostData_updateUsers_info._initializeBuilder(this);
  }

  GDislikePostData_updateUsers_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _relationshipsDeleted = $v.relationshipsDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDislikePostData_updateUsers_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDislikePostData_updateUsers_info;
  }

  @override
  void update(
      void Function(GDislikePostData_updateUsers_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDislikePostData_updateUsers_info build() {
    final _$result = _$v ??
        new _$GDislikePostData_updateUsers_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GDislikePostData_updateUsers_info', 'G__typename'),
            relationshipsDeleted: BuiltValueNullFieldError.checkNotNull(
                relationshipsDeleted,
                'GDislikePostData_updateUsers_info',
                'relationshipsDeleted'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLikePostData> _$gLikePostDataSerializer =
    new _$GLikePostDataSerializer();
Serializer<GLikePostData_updateUsers> _$gLikePostDataUpdateUsersSerializer =
    new _$GLikePostData_updateUsersSerializer();
Serializer<GLikePostData_updateUsers_info>
    _$gLikePostDataUpdateUsersInfoSerializer =
    new _$GLikePostData_updateUsers_infoSerializer();

class _$GLikePostDataSerializer implements StructuredSerializer<GLikePostData> {
  @override
  final Iterable<Type> types = const [GLikePostData, _$GLikePostData];
  @override
  final String wireName = 'GLikePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateUsers',
      serializers.serialize(object.updateUsers,
          specifiedType: const FullType(GLikePostData_updateUsers)),
    ];

    return result;
  }

  @override
  GLikePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostDataBuilder();

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
                  specifiedType: const FullType(GLikePostData_updateUsers))!
              as GLikePostData_updateUsers);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostData_updateUsersSerializer
    implements StructuredSerializer<GLikePostData_updateUsers> {
  @override
  final Iterable<Type> types = const [
    GLikePostData_updateUsers,
    _$GLikePostData_updateUsers
  ];
  @override
  final String wireName = 'GLikePostData_updateUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikePostData_updateUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'info',
      serializers.serialize(object.info,
          specifiedType: const FullType(GLikePostData_updateUsers_info)),
    ];

    return result;
  }

  @override
  GLikePostData_updateUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostData_updateUsersBuilder();

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
                      const FullType(GLikePostData_updateUsers_info))!
              as GLikePostData_updateUsers_info);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostData_updateUsers_infoSerializer
    implements StructuredSerializer<GLikePostData_updateUsers_info> {
  @override
  final Iterable<Type> types = const [
    GLikePostData_updateUsers_info,
    _$GLikePostData_updateUsers_info
  ];
  @override
  final String wireName = 'GLikePostData_updateUsers_info';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikePostData_updateUsers_info object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'relationshipsCreated',
      serializers.serialize(object.relationshipsCreated,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GLikePostData_updateUsers_info deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikePostData_updateUsers_infoBuilder();

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
        case 'relationshipsCreated':
          result.relationshipsCreated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GLikePostData extends GLikePostData {
  @override
  final String G__typename;
  @override
  final GLikePostData_updateUsers updateUsers;

  factory _$GLikePostData([void Function(GLikePostDataBuilder)? updates]) =>
      (new GLikePostDataBuilder()..update(updates)).build();

  _$GLikePostData._({required this.G__typename, required this.updateUsers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLikePostData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateUsers, 'GLikePostData', 'updateUsers');
  }

  @override
  GLikePostData rebuild(void Function(GLikePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostDataBuilder toBuilder() => new GLikePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostData &&
        G__typename == other.G__typename &&
        updateUsers == other.updateUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLikePostData')
          ..add('G__typename', G__typename)
          ..add('updateUsers', updateUsers))
        .toString();
  }
}

class GLikePostDataBuilder
    implements Builder<GLikePostData, GLikePostDataBuilder> {
  _$GLikePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLikePostData_updateUsersBuilder? _updateUsers;
  GLikePostData_updateUsersBuilder get updateUsers =>
      _$this._updateUsers ??= new GLikePostData_updateUsersBuilder();
  set updateUsers(GLikePostData_updateUsersBuilder? updateUsers) =>
      _$this._updateUsers = updateUsers;

  GLikePostDataBuilder() {
    GLikePostData._initializeBuilder(this);
  }

  GLikePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateUsers = $v.updateUsers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostData;
  }

  @override
  void update(void Function(GLikePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLikePostData build() {
    _$GLikePostData _$result;
    try {
      _$result = _$v ??
          new _$GLikePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLikePostData', 'G__typename'),
              updateUsers: updateUsers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUsers';
        updateUsers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLikePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostData_updateUsers extends GLikePostData_updateUsers {
  @override
  final String G__typename;
  @override
  final GLikePostData_updateUsers_info info;

  factory _$GLikePostData_updateUsers(
          [void Function(GLikePostData_updateUsersBuilder)? updates]) =>
      (new GLikePostData_updateUsersBuilder()..update(updates)).build();

  _$GLikePostData_updateUsers._({required this.G__typename, required this.info})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLikePostData_updateUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        info, 'GLikePostData_updateUsers', 'info');
  }

  @override
  GLikePostData_updateUsers rebuild(
          void Function(GLikePostData_updateUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostData_updateUsersBuilder toBuilder() =>
      new GLikePostData_updateUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostData_updateUsers &&
        G__typename == other.G__typename &&
        info == other.info;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), info.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLikePostData_updateUsers')
          ..add('G__typename', G__typename)
          ..add('info', info))
        .toString();
  }
}

class GLikePostData_updateUsersBuilder
    implements
        Builder<GLikePostData_updateUsers, GLikePostData_updateUsersBuilder> {
  _$GLikePostData_updateUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLikePostData_updateUsers_infoBuilder? _info;
  GLikePostData_updateUsers_infoBuilder get info =>
      _$this._info ??= new GLikePostData_updateUsers_infoBuilder();
  set info(GLikePostData_updateUsers_infoBuilder? info) => _$this._info = info;

  GLikePostData_updateUsersBuilder() {
    GLikePostData_updateUsers._initializeBuilder(this);
  }

  GLikePostData_updateUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _info = $v.info.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostData_updateUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostData_updateUsers;
  }

  @override
  void update(void Function(GLikePostData_updateUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLikePostData_updateUsers build() {
    _$GLikePostData_updateUsers _$result;
    try {
      _$result = _$v ??
          new _$GLikePostData_updateUsers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GLikePostData_updateUsers', 'G__typename'),
              info: info.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'info';
        info.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GLikePostData_updateUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikePostData_updateUsers_info extends GLikePostData_updateUsers_info {
  @override
  final String G__typename;
  @override
  final int relationshipsCreated;

  factory _$GLikePostData_updateUsers_info(
          [void Function(GLikePostData_updateUsers_infoBuilder)? updates]) =>
      (new GLikePostData_updateUsers_infoBuilder()..update(updates)).build();

  _$GLikePostData_updateUsers_info._(
      {required this.G__typename, required this.relationshipsCreated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GLikePostData_updateUsers_info', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(relationshipsCreated,
        'GLikePostData_updateUsers_info', 'relationshipsCreated');
  }

  @override
  GLikePostData_updateUsers_info rebuild(
          void Function(GLikePostData_updateUsers_infoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikePostData_updateUsers_infoBuilder toBuilder() =>
      new GLikePostData_updateUsers_infoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikePostData_updateUsers_info &&
        G__typename == other.G__typename &&
        relationshipsCreated == other.relationshipsCreated;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), relationshipsCreated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLikePostData_updateUsers_info')
          ..add('G__typename', G__typename)
          ..add('relationshipsCreated', relationshipsCreated))
        .toString();
  }
}

class GLikePostData_updateUsers_infoBuilder
    implements
        Builder<GLikePostData_updateUsers_info,
            GLikePostData_updateUsers_infoBuilder> {
  _$GLikePostData_updateUsers_info? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _relationshipsCreated;
  int? get relationshipsCreated => _$this._relationshipsCreated;
  set relationshipsCreated(int? relationshipsCreated) =>
      _$this._relationshipsCreated = relationshipsCreated;

  GLikePostData_updateUsers_infoBuilder() {
    GLikePostData_updateUsers_info._initializeBuilder(this);
  }

  GLikePostData_updateUsers_infoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _relationshipsCreated = $v.relationshipsCreated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikePostData_updateUsers_info other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikePostData_updateUsers_info;
  }

  @override
  void update(void Function(GLikePostData_updateUsers_infoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLikePostData_updateUsers_info build() {
    final _$result = _$v ??
        new _$GLikePostData_updateUsers_info._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GLikePostData_updateUsers_info', 'G__typename'),
            relationshipsCreated: BuiltValueNullFieldError.checkNotNull(
                relationshipsCreated,
                'GLikePostData_updateUsers_info',
                'relationshipsCreated'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

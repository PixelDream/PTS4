// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RequestResetPassword.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRequestResetPasswordData> _$gRequestResetPasswordDataSerializer =
    new _$GRequestResetPasswordDataSerializer();

class _$GRequestResetPasswordDataSerializer
    implements StructuredSerializer<GRequestResetPasswordData> {
  @override
  final Iterable<Type> types = const [
    GRequestResetPasswordData,
    _$GRequestResetPasswordData
  ];
  @override
  final String wireName = 'GRequestResetPasswordData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestResetPasswordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'requestResetPassword',
      serializers.serialize(object.requestResetPassword,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GRequestResetPasswordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestResetPasswordDataBuilder();

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
        case 'requestResetPassword':
          result.requestResetPassword = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestResetPasswordData extends GRequestResetPasswordData {
  @override
  final String G__typename;
  @override
  final bool requestResetPassword;

  factory _$GRequestResetPasswordData(
          [void Function(GRequestResetPasswordDataBuilder)? updates]) =>
      (new GRequestResetPasswordDataBuilder()..update(updates)).build();

  _$GRequestResetPasswordData._(
      {required this.G__typename, required this.requestResetPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRequestResetPasswordData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(requestResetPassword,
        'GRequestResetPasswordData', 'requestResetPassword');
  }

  @override
  GRequestResetPasswordData rebuild(
          void Function(GRequestResetPasswordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestResetPasswordDataBuilder toBuilder() =>
      new GRequestResetPasswordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestResetPasswordData &&
        G__typename == other.G__typename &&
        requestResetPassword == other.requestResetPassword;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), requestResetPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRequestResetPasswordData')
          ..add('G__typename', G__typename)
          ..add('requestResetPassword', requestResetPassword))
        .toString();
  }
}

class GRequestResetPasswordDataBuilder
    implements
        Builder<GRequestResetPasswordData, GRequestResetPasswordDataBuilder> {
  _$GRequestResetPasswordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _requestResetPassword;
  bool? get requestResetPassword => _$this._requestResetPassword;
  set requestResetPassword(bool? requestResetPassword) =>
      _$this._requestResetPassword = requestResetPassword;

  GRequestResetPasswordDataBuilder() {
    GRequestResetPasswordData._initializeBuilder(this);
  }

  GRequestResetPasswordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _requestResetPassword = $v.requestResetPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestResetPasswordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestResetPasswordData;
  }

  @override
  void update(void Function(GRequestResetPasswordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRequestResetPasswordData build() {
    final _$result = _$v ??
        new _$GRequestResetPasswordData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRequestResetPasswordData', 'G__typename'),
            requestResetPassword: BuiltValueNullFieldError.checkNotNull(
                requestResetPassword,
                'GRequestResetPasswordData',
                'requestResetPassword'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

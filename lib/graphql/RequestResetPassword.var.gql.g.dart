// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RequestResetPassword.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRequestResetPasswordVars> _$gRequestResetPasswordVarsSerializer =
    new _$GRequestResetPasswordVarsSerializer();

class _$GRequestResetPasswordVarsSerializer
    implements StructuredSerializer<GRequestResetPasswordVars> {
  @override
  final Iterable<Type> types = const [
    GRequestResetPasswordVars,
    _$GRequestResetPasswordVars
  ];
  @override
  final String wireName = 'GRequestResetPasswordVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRequestResetPasswordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRequestResetPasswordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRequestResetPasswordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRequestResetPasswordVars extends GRequestResetPasswordVars {
  @override
  final String email;

  factory _$GRequestResetPasswordVars(
          [void Function(GRequestResetPasswordVarsBuilder)? updates]) =>
      (new GRequestResetPasswordVarsBuilder()..update(updates)).build();

  _$GRequestResetPasswordVars._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, 'GRequestResetPasswordVars', 'email');
  }

  @override
  GRequestResetPasswordVars rebuild(
          void Function(GRequestResetPasswordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRequestResetPasswordVarsBuilder toBuilder() =>
      new GRequestResetPasswordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRequestResetPasswordVars && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRequestResetPasswordVars')
          ..add('email', email))
        .toString();
  }
}

class GRequestResetPasswordVarsBuilder
    implements
        Builder<GRequestResetPasswordVars, GRequestResetPasswordVarsBuilder> {
  _$GRequestResetPasswordVars? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GRequestResetPasswordVarsBuilder();

  GRequestResetPasswordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRequestResetPasswordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRequestResetPasswordVars;
  }

  @override
  void update(void Function(GRequestResetPasswordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRequestResetPasswordVars build() {
    final _$result = _$v ??
        new _$GRequestResetPasswordVars._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'GRequestResetPasswordVars', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

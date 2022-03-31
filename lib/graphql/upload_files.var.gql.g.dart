// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_files.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUploadFilesVars> _$gUploadFilesVarsSerializer =
    new _$GUploadFilesVarsSerializer();

class _$GUploadFilesVarsSerializer
    implements StructuredSerializer<GUploadFilesVars> {
  @override
  final Iterable<Type> types = const [GUploadFilesVars, _$GUploadFilesVars];
  @override
  final String wireName = 'GUploadFilesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUploadFilesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'files',
      serializers.serialize(object.files,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUploadFilesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadFilesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadFilesVars extends GUploadFilesVars {
  @override
  final BuiltList<String> files;
  @override
  final String type;

  factory _$GUploadFilesVars(
          [void Function(GUploadFilesVarsBuilder)? updates]) =>
      (new GUploadFilesVarsBuilder()..update(updates)).build();

  _$GUploadFilesVars._({required this.files, required this.type}) : super._() {
    BuiltValueNullFieldError.checkNotNull(files, 'GUploadFilesVars', 'files');
    BuiltValueNullFieldError.checkNotNull(type, 'GUploadFilesVars', 'type');
  }

  @override
  GUploadFilesVars rebuild(void Function(GUploadFilesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadFilesVarsBuilder toBuilder() =>
      new GUploadFilesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadFilesVars &&
        files == other.files &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, files.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUploadFilesVars')
          ..add('files', files)
          ..add('type', type))
        .toString();
  }
}

class GUploadFilesVarsBuilder
    implements Builder<GUploadFilesVars, GUploadFilesVarsBuilder> {
  _$GUploadFilesVars? _$v;

  ListBuilder<String>? _files;
  ListBuilder<String> get files => _$this._files ??= new ListBuilder<String>();
  set files(ListBuilder<String>? files) => _$this._files = files;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GUploadFilesVarsBuilder();

  GUploadFilesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadFilesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadFilesVars;
  }

  @override
  void update(void Function(GUploadFilesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUploadFilesVars build() {
    _$GUploadFilesVars _$result;
    try {
      _$result = _$v ??
          new _$GUploadFilesVars._(
              files: files.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'GUploadFilesVars', 'type'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUploadFilesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

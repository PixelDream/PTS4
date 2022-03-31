// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_files.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUploadFilesData> _$gUploadFilesDataSerializer =
    new _$GUploadFilesDataSerializer();

class _$GUploadFilesDataSerializer
    implements StructuredSerializer<GUploadFilesData> {
  @override
  final Iterable<Type> types = const [GUploadFilesData, _$GUploadFilesData];
  @override
  final String wireName = 'GUploadFilesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUploadFilesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'uploadFiles',
      serializers.serialize(object.uploadFiles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  GUploadFilesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadFilesDataBuilder();

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
        case 'uploadFiles':
          result.uploadFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadFilesData extends GUploadFilesData {
  @override
  final String G__typename;
  @override
  final BuiltList<String> uploadFiles;

  factory _$GUploadFilesData(
          [void Function(GUploadFilesDataBuilder)? updates]) =>
      (new GUploadFilesDataBuilder()..update(updates)).build();

  _$GUploadFilesData._({required this.G__typename, required this.uploadFiles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUploadFilesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        uploadFiles, 'GUploadFilesData', 'uploadFiles');
  }

  @override
  GUploadFilesData rebuild(void Function(GUploadFilesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadFilesDataBuilder toBuilder() =>
      new GUploadFilesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadFilesData &&
        G__typename == other.G__typename &&
        uploadFiles == other.uploadFiles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), uploadFiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUploadFilesData')
          ..add('G__typename', G__typename)
          ..add('uploadFiles', uploadFiles))
        .toString();
  }
}

class GUploadFilesDataBuilder
    implements Builder<GUploadFilesData, GUploadFilesDataBuilder> {
  _$GUploadFilesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String>? _uploadFiles;
  ListBuilder<String> get uploadFiles =>
      _$this._uploadFiles ??= new ListBuilder<String>();
  set uploadFiles(ListBuilder<String>? uploadFiles) =>
      _$this._uploadFiles = uploadFiles;

  GUploadFilesDataBuilder() {
    GUploadFilesData._initializeBuilder(this);
  }

  GUploadFilesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _uploadFiles = $v.uploadFiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadFilesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadFilesData;
  }

  @override
  void update(void Function(GUploadFilesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUploadFilesData build() {
    _$GUploadFilesData _$result;
    try {
      _$result = _$v ??
          new _$GUploadFilesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUploadFilesData', 'G__typename'),
              uploadFiles: uploadFiles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uploadFiles';
        uploadFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUploadFilesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

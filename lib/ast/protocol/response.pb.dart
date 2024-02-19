//
//  Generated code. Do not modify.
//  source: response.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'base.pb.dart' as $0;
import 'position.pb.dart' as $1;

class AstResponse extends $pb.GeneratedMessage {
  factory AstResponse({
    $0.ProgramFile? program,
    $core.Iterable<LanguageError>? errors,
  }) {
    final $result = create();
    if (program != null) {
      $result.program = program;
    }
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    return $result;
  }
  AstResponse._() : super();
  factory AstResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AstResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AstResponse', createEmptyInstance: create)
    ..aOM<$0.ProgramFile>(1, _omitFieldNames ? '' : 'program', subBuilder: $0.ProgramFile.create)
    ..pc<LanguageError>(2, _omitFieldNames ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: LanguageError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AstResponse clone() => AstResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AstResponse copyWith(void Function(AstResponse) updates) => super.copyWith((message) => updates(message as AstResponse)) as AstResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AstResponse create() => AstResponse._();
  AstResponse createEmptyInstance() => create();
  static $pb.PbList<AstResponse> createRepeated() => $pb.PbList<AstResponse>();
  @$core.pragma('dart2js:noInline')
  static AstResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AstResponse>(create);
  static AstResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ProgramFile get program => $_getN(0);
  @$pb.TagNumber(1)
  set program($0.ProgramFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProgram() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgram() => clearField(1);
  @$pb.TagNumber(1)
  $0.ProgramFile ensureProgram() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<LanguageError> get errors => $_getList(1);
}

class LanguageError extends $pb.GeneratedMessage {
  factory LanguageError({
    $core.String? message,
    $1.Point? position,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  LanguageError._() : super();
  factory LanguageError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LanguageError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LanguageError', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOM<$1.Point>(2, _omitFieldNames ? '' : 'position', subBuilder: $1.Point.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LanguageError clone() => LanguageError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LanguageError copyWith(void Function(LanguageError) updates) => super.copyWith((message) => updates(message as LanguageError)) as LanguageError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LanguageError create() => LanguageError._();
  LanguageError createEmptyInstance() => create();
  static $pb.PbList<LanguageError> createRepeated() => $pb.PbList<LanguageError>();
  @$core.pragma('dart2js:noInline')
  static LanguageError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LanguageError>(create);
  static LanguageError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $1.Point get position => $_getN(1);
  @$pb.TagNumber(2)
  set position($1.Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $1.Point ensurePosition() => $_ensure(1);
}

class TranspileResponse extends $pb.GeneratedMessage {
  factory TranspileResponse({
    $core.String? code,
    $core.Iterable<LanguageError>? errors,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    return $result;
  }
  TranspileResponse._() : super();
  factory TranspileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TranspileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TranspileResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..pc<LanguageError>(2, _omitFieldNames ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: LanguageError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TranspileResponse clone() => TranspileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TranspileResponse copyWith(void Function(TranspileResponse) updates) => super.copyWith((message) => updates(message as TranspileResponse)) as TranspileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TranspileResponse create() => TranspileResponse._();
  TranspileResponse createEmptyInstance() => create();
  static $pb.PbList<TranspileResponse> createRepeated() => $pb.PbList<TranspileResponse>();
  @$core.pragma('dart2js:noInline')
  static TranspileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TranspileResponse>(create);
  static TranspileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<LanguageError> get errors => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

//
//  Generated code. Do not modify.
//  source: request.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'base.pb.dart' as $0;

class AstRequest extends $pb.GeneratedMessage {
  factory AstRequest({
    $core.String? code,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  AstRequest._() : super();
  factory AstRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AstRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AstRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AstRequest clone() => AstRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AstRequest copyWith(void Function(AstRequest) updates) => super.copyWith((message) => updates(message as AstRequest)) as AstRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AstRequest create() => AstRequest._();
  AstRequest createEmptyInstance() => create();
  static $pb.PbList<AstRequest> createRepeated() => $pb.PbList<AstRequest>();
  @$core.pragma('dart2js:noInline')
  static AstRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AstRequest>(create);
  static AstRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}

class TranspileRequest extends $pb.GeneratedMessage {
  factory TranspileRequest({
    $0.ProgramFile? program,
  }) {
    final $result = create();
    if (program != null) {
      $result.program = program;
    }
    return $result;
  }
  TranspileRequest._() : super();
  factory TranspileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TranspileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TranspileRequest', createEmptyInstance: create)
    ..aOM<$0.ProgramFile>(1, _omitFieldNames ? '' : 'program', subBuilder: $0.ProgramFile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TranspileRequest clone() => TranspileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TranspileRequest copyWith(void Function(TranspileRequest) updates) => super.copyWith((message) => updates(message as TranspileRequest)) as TranspileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TranspileRequest create() => TranspileRequest._();
  TranspileRequest createEmptyInstance() => create();
  static $pb.PbList<TranspileRequest> createRepeated() => $pb.PbList<TranspileRequest>();
  @$core.pragma('dart2js:noInline')
  static TranspileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TranspileRequest>(create);
  static TranspileRequest? _defaultInstance;

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
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

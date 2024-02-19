//
//  Generated code. Do not modify.
//  source: base.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'expressions.pb.dart' as $1;
import 'position.pb.dart' as $0;
import 'statements.pb.dart' as $2;

enum AstObject_Type {
  position, 
  point, 
  node, 
  notSet
}

/// Base message for AST object, using the "oneof" feature to represent the sealed class behavior
class AstObject extends $pb.GeneratedMessage {
  factory AstObject({
    $0.Position? position,
    $0.Point? point,
    Node? node,
  }) {
    final $result = create();
    if (position != null) {
      $result.position = position;
    }
    if (point != null) {
      $result.point = point;
    }
    if (node != null) {
      $result.node = node;
    }
    return $result;
  }
  AstObject._() : super();
  factory AstObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AstObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AstObject_Type> _AstObject_TypeByTag = {
    1 : AstObject_Type.position,
    2 : AstObject_Type.point,
    3 : AstObject_Type.node,
    0 : AstObject_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AstObject', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$0.Position>(1, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..aOM<$0.Point>(2, _omitFieldNames ? '' : 'point', subBuilder: $0.Point.create)
    ..aOM<Node>(3, _omitFieldNames ? '' : 'node', subBuilder: Node.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AstObject clone() => AstObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AstObject copyWith(void Function(AstObject) updates) => super.copyWith((message) => updates(message as AstObject)) as AstObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AstObject create() => AstObject._();
  AstObject createEmptyInstance() => create();
  static $pb.PbList<AstObject> createRepeated() => $pb.PbList<AstObject>();
  @$core.pragma('dart2js:noInline')
  static AstObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AstObject>(create);
  static AstObject? _defaultInstance;

  AstObject_Type whichType() => _AstObject_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Position get position => $_getN(0);
  @$pb.TagNumber(1)
  set position($0.Position v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => clearField(1);
  @$pb.TagNumber(1)
  $0.Position ensurePosition() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Point get point => $_getN(1);
  @$pb.TagNumber(2)
  set point($0.Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoint() => clearField(2);
  @$pb.TagNumber(2)
  $0.Point ensurePoint() => $_ensure(1);

  @$pb.TagNumber(3)
  Node get node => $_getN(2);
  @$pb.TagNumber(3)
  set node(Node v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNode() => $_has(2);
  @$pb.TagNumber(3)
  void clearNode() => clearField(3);
  @$pb.TagNumber(3)
  Node ensureNode() => $_ensure(2);
}

enum Node_Subtype {
  expression, 
  statement, 
  programFile, 
  notSet
}

/// Node, Expression, and Statement will be represented as wrappers with a "oneof" for their specific types
class Node extends $pb.GeneratedMessage {
  factory Node({
    $1.Expression? expression,
    $2.Statement? statement,
    ProgramFile? programFile,
  }) {
    final $result = create();
    if (expression != null) {
      $result.expression = expression;
    }
    if (statement != null) {
      $result.statement = statement;
    }
    if (programFile != null) {
      $result.programFile = programFile;
    }
    return $result;
  }
  Node._() : super();
  factory Node.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Node.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Node_Subtype> _Node_SubtypeByTag = {
    1 : Node_Subtype.expression,
    2 : Node_Subtype.statement,
    3 : Node_Subtype.programFile,
    0 : Node_Subtype.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Node', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$1.Expression>(1, _omitFieldNames ? '' : 'expression', subBuilder: $1.Expression.create)
    ..aOM<$2.Statement>(2, _omitFieldNames ? '' : 'statement', subBuilder: $2.Statement.create)
    ..aOM<ProgramFile>(3, _omitFieldNames ? '' : 'programFile', protoName: 'programFile', subBuilder: ProgramFile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Node clone() => Node()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Node copyWith(void Function(Node) updates) => super.copyWith((message) => updates(message as Node)) as Node;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  Node createEmptyInstance() => create();
  static $pb.PbList<Node> createRepeated() => $pb.PbList<Node>();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node? _defaultInstance;

  Node_Subtype whichSubtype() => _Node_SubtypeByTag[$_whichOneof(0)]!;
  void clearSubtype() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Expression get expression => $_getN(0);
  @$pb.TagNumber(1)
  set expression($1.Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpression() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpression() => clearField(1);
  @$pb.TagNumber(1)
  $1.Expression ensureExpression() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Statement get statement => $_getN(1);
  @$pb.TagNumber(2)
  set statement($2.Statement v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatement() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatement() => clearField(2);
  @$pb.TagNumber(2)
  $2.Statement ensureStatement() => $_ensure(1);

  @$pb.TagNumber(3)
  ProgramFile get programFile => $_getN(2);
  @$pb.TagNumber(3)
  set programFile(ProgramFile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProgramFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgramFile() => clearField(3);
  @$pb.TagNumber(3)
  ProgramFile ensureProgramFile() => $_ensure(2);
}

class ProgramFile extends $pb.GeneratedMessage {
  factory ProgramFile({
    $core.Iterable<$2.Statement>? lines,
    $0.Position? position,
  }) {
    final $result = create();
    if (lines != null) {
      $result.lines.addAll(lines);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ProgramFile._() : super();
  factory ProgramFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProgramFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProgramFile', createEmptyInstance: create)
    ..pc<$2.Statement>(1, _omitFieldNames ? '' : 'lines', $pb.PbFieldType.PM, subBuilder: $2.Statement.create)
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProgramFile clone() => ProgramFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProgramFile copyWith(void Function(ProgramFile) updates) => super.copyWith((message) => updates(message as ProgramFile)) as ProgramFile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProgramFile create() => ProgramFile._();
  ProgramFile createEmptyInstance() => create();
  static $pb.PbList<ProgramFile> createRepeated() => $pb.PbList<ProgramFile>();
  @$core.pragma('dart2js:noInline')
  static ProgramFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProgramFile>(create);
  static ProgramFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Statement> get lines => $_getList(0);

  @$pb.TagNumber(2)
  $0.Position get position => $_getN(1);
  @$pb.TagNumber(2)
  set position($0.Position v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $0.Position ensurePosition() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

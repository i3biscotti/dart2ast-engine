//
//  Generated code. Do not modify.
//  source: statements.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'expressions.pb.dart' as $0;
import 'position.pb.dart' as $1;
import 'statements.pbenum.dart';

export 'statements.pbenum.dart';

class VariableValueType extends $pb.GeneratedMessage {
  factory VariableValueType({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  VariableValueType._() : super();
  factory VariableValueType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VariableValueType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VariableValueType', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VariableValueType clone() => VariableValueType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VariableValueType copyWith(void Function(VariableValueType) updates) => super.copyWith((message) => updates(message as VariableValueType)) as VariableValueType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableValueType create() => VariableValueType._();
  VariableValueType createEmptyInstance() => create();
  static $pb.PbList<VariableValueType> createRepeated() => $pb.PbList<VariableValueType>();
  @$core.pragma('dart2js:noInline')
  static VariableValueType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VariableValueType>(create);
  static VariableValueType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

enum Statement_Stmt {
  assignmentStatement, 
  classDefinitionStatement, 
  expressionDefinitionStatement, 
  ifDefinitionStatement, 
  objectPropertyAssignmentStatement, 
  returnStatement, 
  varDeclarationStatement, 
  whileDefinitionStatement, 
  forDefinitionStatement, 
  notSet
}

class Statement extends $pb.GeneratedMessage {
  factory Statement({
    AssignmentStatement? assignmentStatement,
    ClassDefinitionStatement? classDefinitionStatement,
    ExpressionDefinitionStatement? expressionDefinitionStatement,
    IfDefinitionStatement? ifDefinitionStatement,
    ObjectPropertyAssignmentStatement? objectPropertyAssignmentStatement,
    ReturnStatement? returnStatement,
    VariableDeclarationStatement? varDeclarationStatement,
    WhileDefinitionStatement? whileDefinitionStatement,
    ForDefinitionStatement? forDefinitionStatement,
  }) {
    final $result = create();
    if (assignmentStatement != null) {
      $result.assignmentStatement = assignmentStatement;
    }
    if (classDefinitionStatement != null) {
      $result.classDefinitionStatement = classDefinitionStatement;
    }
    if (expressionDefinitionStatement != null) {
      $result.expressionDefinitionStatement = expressionDefinitionStatement;
    }
    if (ifDefinitionStatement != null) {
      $result.ifDefinitionStatement = ifDefinitionStatement;
    }
    if (objectPropertyAssignmentStatement != null) {
      $result.objectPropertyAssignmentStatement = objectPropertyAssignmentStatement;
    }
    if (returnStatement != null) {
      $result.returnStatement = returnStatement;
    }
    if (varDeclarationStatement != null) {
      $result.varDeclarationStatement = varDeclarationStatement;
    }
    if (whileDefinitionStatement != null) {
      $result.whileDefinitionStatement = whileDefinitionStatement;
    }
    if (forDefinitionStatement != null) {
      $result.forDefinitionStatement = forDefinitionStatement;
    }
    return $result;
  }
  Statement._() : super();
  factory Statement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Statement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Statement_Stmt> _Statement_StmtByTag = {
    1 : Statement_Stmt.assignmentStatement,
    2 : Statement_Stmt.classDefinitionStatement,
    3 : Statement_Stmt.expressionDefinitionStatement,
    4 : Statement_Stmt.ifDefinitionStatement,
    5 : Statement_Stmt.objectPropertyAssignmentStatement,
    6 : Statement_Stmt.returnStatement,
    7 : Statement_Stmt.varDeclarationStatement,
    8 : Statement_Stmt.whileDefinitionStatement,
    9 : Statement_Stmt.forDefinitionStatement,
    0 : Statement_Stmt.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Statement', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOM<AssignmentStatement>(1, _omitFieldNames ? '' : 'assignmentStatement', protoName: 'assignmentStatement', subBuilder: AssignmentStatement.create)
    ..aOM<ClassDefinitionStatement>(2, _omitFieldNames ? '' : 'classDefinitionStatement', protoName: 'classDefinitionStatement', subBuilder: ClassDefinitionStatement.create)
    ..aOM<ExpressionDefinitionStatement>(3, _omitFieldNames ? '' : 'expressionDefinitionStatement', protoName: 'expressionDefinitionStatement', subBuilder: ExpressionDefinitionStatement.create)
    ..aOM<IfDefinitionStatement>(4, _omitFieldNames ? '' : 'ifDefinitionStatement', protoName: 'ifDefinitionStatement', subBuilder: IfDefinitionStatement.create)
    ..aOM<ObjectPropertyAssignmentStatement>(5, _omitFieldNames ? '' : 'objectPropertyAssignmentStatement', protoName: 'objectPropertyAssignmentStatement', subBuilder: ObjectPropertyAssignmentStatement.create)
    ..aOM<ReturnStatement>(6, _omitFieldNames ? '' : 'returnStatement', protoName: 'returnStatement', subBuilder: ReturnStatement.create)
    ..aOM<VariableDeclarationStatement>(7, _omitFieldNames ? '' : 'varDeclarationStatement', protoName: 'varDeclarationStatement', subBuilder: VariableDeclarationStatement.create)
    ..aOM<WhileDefinitionStatement>(8, _omitFieldNames ? '' : 'whileDefinitionStatement', protoName: 'whileDefinitionStatement', subBuilder: WhileDefinitionStatement.create)
    ..aOM<ForDefinitionStatement>(9, _omitFieldNames ? '' : 'forDefinitionStatement', protoName: 'forDefinitionStatement', subBuilder: ForDefinitionStatement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Statement clone() => Statement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Statement copyWith(void Function(Statement) updates) => super.copyWith((message) => updates(message as Statement)) as Statement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Statement create() => Statement._();
  Statement createEmptyInstance() => create();
  static $pb.PbList<Statement> createRepeated() => $pb.PbList<Statement>();
  @$core.pragma('dart2js:noInline')
  static Statement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Statement>(create);
  static Statement? _defaultInstance;

  Statement_Stmt whichStmt() => _Statement_StmtByTag[$_whichOneof(0)]!;
  void clearStmt() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  AssignmentStatement get assignmentStatement => $_getN(0);
  @$pb.TagNumber(1)
  set assignmentStatement(AssignmentStatement v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssignmentStatement() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssignmentStatement() => clearField(1);
  @$pb.TagNumber(1)
  AssignmentStatement ensureAssignmentStatement() => $_ensure(0);

  @$pb.TagNumber(2)
  ClassDefinitionStatement get classDefinitionStatement => $_getN(1);
  @$pb.TagNumber(2)
  set classDefinitionStatement(ClassDefinitionStatement v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClassDefinitionStatement() => $_has(1);
  @$pb.TagNumber(2)
  void clearClassDefinitionStatement() => clearField(2);
  @$pb.TagNumber(2)
  ClassDefinitionStatement ensureClassDefinitionStatement() => $_ensure(1);

  @$pb.TagNumber(3)
  ExpressionDefinitionStatement get expressionDefinitionStatement => $_getN(2);
  @$pb.TagNumber(3)
  set expressionDefinitionStatement(ExpressionDefinitionStatement v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpressionDefinitionStatement() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpressionDefinitionStatement() => clearField(3);
  @$pb.TagNumber(3)
  ExpressionDefinitionStatement ensureExpressionDefinitionStatement() => $_ensure(2);

  @$pb.TagNumber(4)
  IfDefinitionStatement get ifDefinitionStatement => $_getN(3);
  @$pb.TagNumber(4)
  set ifDefinitionStatement(IfDefinitionStatement v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasIfDefinitionStatement() => $_has(3);
  @$pb.TagNumber(4)
  void clearIfDefinitionStatement() => clearField(4);
  @$pb.TagNumber(4)
  IfDefinitionStatement ensureIfDefinitionStatement() => $_ensure(3);

  @$pb.TagNumber(5)
  ObjectPropertyAssignmentStatement get objectPropertyAssignmentStatement => $_getN(4);
  @$pb.TagNumber(5)
  set objectPropertyAssignmentStatement(ObjectPropertyAssignmentStatement v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasObjectPropertyAssignmentStatement() => $_has(4);
  @$pb.TagNumber(5)
  void clearObjectPropertyAssignmentStatement() => clearField(5);
  @$pb.TagNumber(5)
  ObjectPropertyAssignmentStatement ensureObjectPropertyAssignmentStatement() => $_ensure(4);

  @$pb.TagNumber(6)
  ReturnStatement get returnStatement => $_getN(5);
  @$pb.TagNumber(6)
  set returnStatement(ReturnStatement v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReturnStatement() => $_has(5);
  @$pb.TagNumber(6)
  void clearReturnStatement() => clearField(6);
  @$pb.TagNumber(6)
  ReturnStatement ensureReturnStatement() => $_ensure(5);

  @$pb.TagNumber(7)
  VariableDeclarationStatement get varDeclarationStatement => $_getN(6);
  @$pb.TagNumber(7)
  set varDeclarationStatement(VariableDeclarationStatement v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasVarDeclarationStatement() => $_has(6);
  @$pb.TagNumber(7)
  void clearVarDeclarationStatement() => clearField(7);
  @$pb.TagNumber(7)
  VariableDeclarationStatement ensureVarDeclarationStatement() => $_ensure(6);

  @$pb.TagNumber(8)
  WhileDefinitionStatement get whileDefinitionStatement => $_getN(7);
  @$pb.TagNumber(8)
  set whileDefinitionStatement(WhileDefinitionStatement v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasWhileDefinitionStatement() => $_has(7);
  @$pb.TagNumber(8)
  void clearWhileDefinitionStatement() => clearField(8);
  @$pb.TagNumber(8)
  WhileDefinitionStatement ensureWhileDefinitionStatement() => $_ensure(7);

  @$pb.TagNumber(9)
  ForDefinitionStatement get forDefinitionStatement => $_getN(8);
  @$pb.TagNumber(9)
  set forDefinitionStatement(ForDefinitionStatement v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasForDefinitionStatement() => $_has(8);
  @$pb.TagNumber(9)
  void clearForDefinitionStatement() => clearField(9);
  @$pb.TagNumber(9)
  ForDefinitionStatement ensureForDefinitionStatement() => $_ensure(8);
}

class AssignmentStatement extends $pb.GeneratedMessage {
  factory AssignmentStatement({
    $core.String? name,
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  AssignmentStatement._() : super();
  factory AssignmentStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignmentStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignmentStatement', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Expression>(2, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignmentStatement clone() => AssignmentStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignmentStatement copyWith(void Function(AssignmentStatement) updates) => super.copyWith((message) => updates(message as AssignmentStatement)) as AssignmentStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssignmentStatement create() => AssignmentStatement._();
  AssignmentStatement createEmptyInstance() => create();
  static $pb.PbList<AssignmentStatement> createRepeated() => $pb.PbList<AssignmentStatement>();
  @$core.pragma('dart2js:noInline')
  static AssignmentStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignmentStatement>(create);
  static AssignmentStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.Expression get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($0.Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  $0.Expression ensureValue() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($1.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $1.Position ensurePosition() => $_ensure(2);
}

class ClassDefinitionStatement extends $pb.GeneratedMessage {
  factory ClassDefinitionStatement({
    EncapsulationType? encapsulation,
    $core.String? name,
    $core.String? parentName,
    $core.Iterable<PropertyDeclaration>? properties,
    $core.Iterable<ConstructorDefinitionStatement>? constructors,
    $core.Iterable<FunctionDefinitionStatement>? methods,
    VariableValueType? parentClassType,
    $1.Position? position,
  }) {
    final $result = create();
    if (encapsulation != null) {
      $result.encapsulation = encapsulation;
    }
    if (name != null) {
      $result.name = name;
    }
    if (parentName != null) {
      $result.parentName = parentName;
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    if (constructors != null) {
      $result.constructors.addAll(constructors);
    }
    if (methods != null) {
      $result.methods.addAll(methods);
    }
    if (parentClassType != null) {
      $result.parentClassType = parentClassType;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ClassDefinitionStatement._() : super();
  factory ClassDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClassDefinitionStatement', createEmptyInstance: create)
    ..e<EncapsulationType>(1, _omitFieldNames ? '' : 'encapsulation', $pb.PbFieldType.OE, defaultOrMaker: EncapsulationType.PUBLIC, valueOf: EncapsulationType.valueOf, enumValues: EncapsulationType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'parentName', protoName: 'parentName')
    ..pc<PropertyDeclaration>(4, _omitFieldNames ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: PropertyDeclaration.create)
    ..pc<ConstructorDefinitionStatement>(5, _omitFieldNames ? '' : 'constructors', $pb.PbFieldType.PM, subBuilder: ConstructorDefinitionStatement.create)
    ..pc<FunctionDefinitionStatement>(6, _omitFieldNames ? '' : 'methods', $pb.PbFieldType.PM, subBuilder: FunctionDefinitionStatement.create)
    ..aOM<VariableValueType>(7, _omitFieldNames ? '' : 'parentClassType', protoName: 'parentClassType', subBuilder: VariableValueType.create)
    ..aOM<$1.Position>(8, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassDefinitionStatement clone() => ClassDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassDefinitionStatement copyWith(void Function(ClassDefinitionStatement) updates) => super.copyWith((message) => updates(message as ClassDefinitionStatement)) as ClassDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClassDefinitionStatement create() => ClassDefinitionStatement._();
  ClassDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<ClassDefinitionStatement> createRepeated() => $pb.PbList<ClassDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static ClassDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassDefinitionStatement>(create);
  static ClassDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  EncapsulationType get encapsulation => $_getN(0);
  @$pb.TagNumber(1)
  set encapsulation(EncapsulationType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncapsulation() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncapsulation() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get parentName => $_getSZ(2);
  @$pb.TagNumber(3)
  set parentName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasParentName() => $_has(2);
  @$pb.TagNumber(3)
  void clearParentName() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<PropertyDeclaration> get properties => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<ConstructorDefinitionStatement> get constructors => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<FunctionDefinitionStatement> get methods => $_getList(5);

  @$pb.TagNumber(7)
  VariableValueType get parentClassType => $_getN(6);
  @$pb.TagNumber(7)
  set parentClassType(VariableValueType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasParentClassType() => $_has(6);
  @$pb.TagNumber(7)
  void clearParentClassType() => clearField(7);
  @$pb.TagNumber(7)
  VariableValueType ensureParentClassType() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Position get position => $_getN(7);
  @$pb.TagNumber(8)
  set position($1.Position v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPosition() => $_has(7);
  @$pb.TagNumber(8)
  void clearPosition() => clearField(8);
  @$pb.TagNumber(8)
  $1.Position ensurePosition() => $_ensure(7);
}

class PropertyDeclaration extends $pb.GeneratedMessage {
  factory PropertyDeclaration({
    VariableType? varType,
    $core.String? name,
    VariableValueType? valueType,
    $0.Expression? value,
  }) {
    final $result = create();
    if (varType != null) {
      $result.varType = varType;
    }
    if (name != null) {
      $result.name = name;
    }
    if (valueType != null) {
      $result.valueType = valueType;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PropertyDeclaration._() : super();
  factory PropertyDeclaration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyDeclaration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyDeclaration', createEmptyInstance: create)
    ..e<VariableType>(1, _omitFieldNames ? '' : 'varType', $pb.PbFieldType.OE, protoName: 'varType', defaultOrMaker: VariableType.VARIABLE, valueOf: VariableType.valueOf, enumValues: VariableType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<VariableValueType>(3, _omitFieldNames ? '' : 'valueType', protoName: 'valueType', subBuilder: VariableValueType.create)
    ..aOM<$0.Expression>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyDeclaration clone() => PropertyDeclaration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyDeclaration copyWith(void Function(PropertyDeclaration) updates) => super.copyWith((message) => updates(message as PropertyDeclaration)) as PropertyDeclaration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyDeclaration create() => PropertyDeclaration._();
  PropertyDeclaration createEmptyInstance() => create();
  static $pb.PbList<PropertyDeclaration> createRepeated() => $pb.PbList<PropertyDeclaration>();
  @$core.pragma('dart2js:noInline')
  static PropertyDeclaration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyDeclaration>(create);
  static PropertyDeclaration? _defaultInstance;

  @$pb.TagNumber(1)
  VariableType get varType => $_getN(0);
  @$pb.TagNumber(1)
  set varType(VariableType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVarType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVarType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  VariableValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(VariableValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => clearField(3);
  @$pb.TagNumber(3)
  VariableValueType ensureValueType() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Expression get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Expression v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Expression ensureValue() => $_ensure(3);
}

class FunctionDefinitionStatement extends $pb.GeneratedMessage {
  factory FunctionDefinitionStatement({
    $core.String? name,
    $core.Iterable<Parameter>? parameters,
    VariableValueType? returnType,
    $core.Iterable<Statement>? statements,
    $1.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    if (returnType != null) {
      $result.returnType = returnType;
    }
    if (statements != null) {
      $result.statements.addAll(statements);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  FunctionDefinitionStatement._() : super();
  factory FunctionDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionDefinitionStatement', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<Parameter>(2, _omitFieldNames ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: Parameter.create)
    ..aOM<VariableValueType>(3, _omitFieldNames ? '' : 'returnType', protoName: 'returnType', subBuilder: VariableValueType.create)
    ..pc<Statement>(4, _omitFieldNames ? '' : 'statements', $pb.PbFieldType.PM, subBuilder: Statement.create)
    ..aOM<$1.Position>(5, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionDefinitionStatement clone() => FunctionDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionDefinitionStatement copyWith(void Function(FunctionDefinitionStatement) updates) => super.copyWith((message) => updates(message as FunctionDefinitionStatement)) as FunctionDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionDefinitionStatement create() => FunctionDefinitionStatement._();
  FunctionDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<FunctionDefinitionStatement> createRepeated() => $pb.PbList<FunctionDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static FunctionDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionDefinitionStatement>(create);
  static FunctionDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Parameter> get parameters => $_getList(1);

  @$pb.TagNumber(3)
  VariableValueType get returnType => $_getN(2);
  @$pb.TagNumber(3)
  set returnType(VariableValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasReturnType() => $_has(2);
  @$pb.TagNumber(3)
  void clearReturnType() => clearField(3);
  @$pb.TagNumber(3)
  VariableValueType ensureReturnType() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Statement> get statements => $_getList(3);

  @$pb.TagNumber(5)
  $1.Position get position => $_getN(4);
  @$pb.TagNumber(5)
  set position($1.Position v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => clearField(5);
  @$pb.TagNumber(5)
  $1.Position ensurePosition() => $_ensure(4);
}

class ConstructorDefinitionStatement extends $pb.GeneratedMessage {
  factory ConstructorDefinitionStatement({
    $core.String? className,
    $core.String? constructorName,
    $core.Iterable<Parameter>? parameters,
    $core.Iterable<Statement>? body,
    ThisConstructorDefinition? thisConstructor,
    $1.Position? position,
  }) {
    final $result = create();
    if (className != null) {
      $result.className = className;
    }
    if (constructorName != null) {
      $result.constructorName = constructorName;
    }
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    if (body != null) {
      $result.body.addAll(body);
    }
    if (thisConstructor != null) {
      $result.thisConstructor = thisConstructor;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ConstructorDefinitionStatement._() : super();
  factory ConstructorDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConstructorDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConstructorDefinitionStatement', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'className', protoName: 'className')
    ..aOS(2, _omitFieldNames ? '' : 'constructorName', protoName: 'constructorName')
    ..pc<Parameter>(3, _omitFieldNames ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: Parameter.create)
    ..pc<Statement>(4, _omitFieldNames ? '' : 'body', $pb.PbFieldType.PM, subBuilder: Statement.create)
    ..aOM<ThisConstructorDefinition>(5, _omitFieldNames ? '' : 'thisConstructor', protoName: 'thisConstructor', subBuilder: ThisConstructorDefinition.create)
    ..aOM<$1.Position>(6, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConstructorDefinitionStatement clone() => ConstructorDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConstructorDefinitionStatement copyWith(void Function(ConstructorDefinitionStatement) updates) => super.copyWith((message) => updates(message as ConstructorDefinitionStatement)) as ConstructorDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstructorDefinitionStatement create() => ConstructorDefinitionStatement._();
  ConstructorDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<ConstructorDefinitionStatement> createRepeated() => $pb.PbList<ConstructorDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static ConstructorDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConstructorDefinitionStatement>(create);
  static ConstructorDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get className => $_getSZ(0);
  @$pb.TagNumber(1)
  set className($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClassName() => $_has(0);
  @$pb.TagNumber(1)
  void clearClassName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get constructorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set constructorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConstructorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearConstructorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Parameter> get parameters => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Statement> get body => $_getList(3);

  @$pb.TagNumber(5)
  ThisConstructorDefinition get thisConstructor => $_getN(4);
  @$pb.TagNumber(5)
  set thisConstructor(ThisConstructorDefinition v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasThisConstructor() => $_has(4);
  @$pb.TagNumber(5)
  void clearThisConstructor() => clearField(5);
  @$pb.TagNumber(5)
  ThisConstructorDefinition ensureThisConstructor() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Position get position => $_getN(5);
  @$pb.TagNumber(6)
  set position($1.Position v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPosition() => $_has(5);
  @$pb.TagNumber(6)
  void clearPosition() => clearField(6);
  @$pb.TagNumber(6)
  $1.Position ensurePosition() => $_ensure(5);
}

class ThisConstructorDefinition extends $pb.GeneratedMessage {
  factory ThisConstructorDefinition({
    $core.Iterable<$0.Expression>? parameters,
  }) {
    final $result = create();
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    return $result;
  }
  ThisConstructorDefinition._() : super();
  factory ThisConstructorDefinition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ThisConstructorDefinition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ThisConstructorDefinition', createEmptyInstance: create)
    ..pc<$0.Expression>(1, _omitFieldNames ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: $0.Expression.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ThisConstructorDefinition clone() => ThisConstructorDefinition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ThisConstructorDefinition copyWith(void Function(ThisConstructorDefinition) updates) => super.copyWith((message) => updates(message as ThisConstructorDefinition)) as ThisConstructorDefinition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThisConstructorDefinition create() => ThisConstructorDefinition._();
  ThisConstructorDefinition createEmptyInstance() => create();
  static $pb.PbList<ThisConstructorDefinition> createRepeated() => $pb.PbList<ThisConstructorDefinition>();
  @$core.pragma('dart2js:noInline')
  static ThisConstructorDefinition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ThisConstructorDefinition>(create);
  static ThisConstructorDefinition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.Expression> get parameters => $_getList(0);
}

class Parameter extends $pb.GeneratedMessage {
  factory Parameter({
    $core.String? name,
    ParameterType? type,
    VariableValueType? valueType,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (valueType != null) {
      $result.valueType = valueType;
    }
    return $result;
  }
  Parameter._() : super();
  factory Parameter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Parameter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Parameter', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..e<ParameterType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ParameterType.TYPE, valueOf: ParameterType.valueOf, enumValues: ParameterType.values)
    ..aOM<VariableValueType>(3, _omitFieldNames ? '' : 'valueType', protoName: 'valueType', subBuilder: VariableValueType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Parameter clone() => Parameter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Parameter copyWith(void Function(Parameter) updates) => super.copyWith((message) => updates(message as Parameter)) as Parameter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Parameter create() => Parameter._();
  Parameter createEmptyInstance() => create();
  static $pb.PbList<Parameter> createRepeated() => $pb.PbList<Parameter>();
  @$core.pragma('dart2js:noInline')
  static Parameter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Parameter>(create);
  static Parameter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  ParameterType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ParameterType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  VariableValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(VariableValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => clearField(3);
  @$pb.TagNumber(3)
  VariableValueType ensureValueType() => $_ensure(2);
}

class ExpressionDefinitionStatement extends $pb.GeneratedMessage {
  factory ExpressionDefinitionStatement({
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ExpressionDefinitionStatement._() : super();
  factory ExpressionDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpressionDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExpressionDefinitionStatement', createEmptyInstance: create)
    ..aOM<$0.Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExpressionDefinitionStatement clone() => ExpressionDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExpressionDefinitionStatement copyWith(void Function(ExpressionDefinitionStatement) updates) => super.copyWith((message) => updates(message as ExpressionDefinitionStatement)) as ExpressionDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpressionDefinitionStatement create() => ExpressionDefinitionStatement._();
  ExpressionDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<ExpressionDefinitionStatement> createRepeated() => $pb.PbList<ExpressionDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static ExpressionDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpressionDefinitionStatement>(create);
  static ExpressionDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.Expression ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Position get position => $_getN(1);
  @$pb.TagNumber(2)
  set position($1.Position v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $1.Position ensurePosition() => $_ensure(1);
}

class IfDefinitionStatement extends $pb.GeneratedMessage {
  factory IfDefinitionStatement({
    IfBlock? ifBlock,
    $core.Iterable<IfBlock>? elseIfBlocks,
    IfBlock? elseBlock,
    $1.Position? position,
  }) {
    final $result = create();
    if (ifBlock != null) {
      $result.ifBlock = ifBlock;
    }
    if (elseIfBlocks != null) {
      $result.elseIfBlocks.addAll(elseIfBlocks);
    }
    if (elseBlock != null) {
      $result.elseBlock = elseBlock;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  IfDefinitionStatement._() : super();
  factory IfDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IfDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IfDefinitionStatement', createEmptyInstance: create)
    ..aOM<IfBlock>(1, _omitFieldNames ? '' : 'ifBlock', protoName: 'ifBlock', subBuilder: IfBlock.create)
    ..pc<IfBlock>(2, _omitFieldNames ? '' : 'elseIfBlocks', $pb.PbFieldType.PM, protoName: 'elseIfBlocks', subBuilder: IfBlock.create)
    ..aOM<IfBlock>(3, _omitFieldNames ? '' : 'elseBlock', protoName: 'elseBlock', subBuilder: IfBlock.create)
    ..aOM<$1.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IfDefinitionStatement clone() => IfDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IfDefinitionStatement copyWith(void Function(IfDefinitionStatement) updates) => super.copyWith((message) => updates(message as IfDefinitionStatement)) as IfDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IfDefinitionStatement create() => IfDefinitionStatement._();
  IfDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<IfDefinitionStatement> createRepeated() => $pb.PbList<IfDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static IfDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IfDefinitionStatement>(create);
  static IfDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  IfBlock get ifBlock => $_getN(0);
  @$pb.TagNumber(1)
  set ifBlock(IfBlock v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIfBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearIfBlock() => clearField(1);
  @$pb.TagNumber(1)
  IfBlock ensureIfBlock() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<IfBlock> get elseIfBlocks => $_getList(1);

  @$pb.TagNumber(3)
  IfBlock get elseBlock => $_getN(2);
  @$pb.TagNumber(3)
  set elseBlock(IfBlock v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasElseBlock() => $_has(2);
  @$pb.TagNumber(3)
  void clearElseBlock() => clearField(3);
  @$pb.TagNumber(3)
  IfBlock ensureElseBlock() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($1.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $1.Position ensurePosition() => $_ensure(3);
}

class IfBlock extends $pb.GeneratedMessage {
  factory IfBlock({
    $0.Expression? condition,
    $core.Iterable<Statement>? statements,
    BlockType? blockType,
    $1.Position? position,
  }) {
    final $result = create();
    if (condition != null) {
      $result.condition = condition;
    }
    if (statements != null) {
      $result.statements.addAll(statements);
    }
    if (blockType != null) {
      $result.blockType = blockType;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  IfBlock._() : super();
  factory IfBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IfBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IfBlock', createEmptyInstance: create)
    ..aOM<$0.Expression>(1, _omitFieldNames ? '' : 'condition', subBuilder: $0.Expression.create)
    ..pc<Statement>(2, _omitFieldNames ? '' : 'statements', $pb.PbFieldType.PM, subBuilder: Statement.create)
    ..e<BlockType>(3, _omitFieldNames ? '' : 'blockType', $pb.PbFieldType.OE, protoName: 'blockType', defaultOrMaker: BlockType.IF_BLOCK, valueOf: BlockType.valueOf, enumValues: BlockType.values)
    ..aOM<$1.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IfBlock clone() => IfBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IfBlock copyWith(void Function(IfBlock) updates) => super.copyWith((message) => updates(message as IfBlock)) as IfBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IfBlock create() => IfBlock._();
  IfBlock createEmptyInstance() => create();
  static $pb.PbList<IfBlock> createRepeated() => $pb.PbList<IfBlock>();
  @$core.pragma('dart2js:noInline')
  static IfBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IfBlock>(create);
  static IfBlock? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Expression get condition => $_getN(0);
  @$pb.TagNumber(1)
  set condition($0.Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCondition() => $_has(0);
  @$pb.TagNumber(1)
  void clearCondition() => clearField(1);
  @$pb.TagNumber(1)
  $0.Expression ensureCondition() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Statement> get statements => $_getList(1);

  @$pb.TagNumber(3)
  BlockType get blockType => $_getN(2);
  @$pb.TagNumber(3)
  set blockType(BlockType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlockType() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlockType() => clearField(3);

  @$pb.TagNumber(4)
  $1.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($1.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $1.Position ensurePosition() => $_ensure(3);
}

class WhileDefinitionStatement extends $pb.GeneratedMessage {
  factory WhileDefinitionStatement({
    $0.Expression? condition,
    $core.Iterable<Statement>? statements,
    $1.Position? position,
  }) {
    final $result = create();
    if (condition != null) {
      $result.condition = condition;
    }
    if (statements != null) {
      $result.statements.addAll(statements);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  WhileDefinitionStatement._() : super();
  factory WhileDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WhileDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WhileDefinitionStatement', createEmptyInstance: create)
    ..aOM<$0.Expression>(1, _omitFieldNames ? '' : 'condition', subBuilder: $0.Expression.create)
    ..pc<Statement>(2, _omitFieldNames ? '' : 'statements', $pb.PbFieldType.PM, subBuilder: Statement.create)
    ..aOM<$1.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WhileDefinitionStatement clone() => WhileDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WhileDefinitionStatement copyWith(void Function(WhileDefinitionStatement) updates) => super.copyWith((message) => updates(message as WhileDefinitionStatement)) as WhileDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WhileDefinitionStatement create() => WhileDefinitionStatement._();
  WhileDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<WhileDefinitionStatement> createRepeated() => $pb.PbList<WhileDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static WhileDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WhileDefinitionStatement>(create);
  static WhileDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Expression get condition => $_getN(0);
  @$pb.TagNumber(1)
  set condition($0.Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCondition() => $_has(0);
  @$pb.TagNumber(1)
  void clearCondition() => clearField(1);
  @$pb.TagNumber(1)
  $0.Expression ensureCondition() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Statement> get statements => $_getList(1);

  @$pb.TagNumber(3)
  $1.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($1.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $1.Position ensurePosition() => $_ensure(2);
}

enum ForInitOrIncrementStatement_InitOrIncrement {
  varDeclarationForStatement, 
  assignmentForStatement, 
  expressionForStatement, 
  notSet
}

class ForInitOrIncrementStatement extends $pb.GeneratedMessage {
  factory ForInitOrIncrementStatement({
    VarDeclarationForStatement? varDeclarationForStatement,
    AssignmentForStatement? assignmentForStatement,
    ExpressionForStatement? expressionForStatement,
  }) {
    final $result = create();
    if (varDeclarationForStatement != null) {
      $result.varDeclarationForStatement = varDeclarationForStatement;
    }
    if (assignmentForStatement != null) {
      $result.assignmentForStatement = assignmentForStatement;
    }
    if (expressionForStatement != null) {
      $result.expressionForStatement = expressionForStatement;
    }
    return $result;
  }
  ForInitOrIncrementStatement._() : super();
  factory ForInitOrIncrementStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForInitOrIncrementStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ForInitOrIncrementStatement_InitOrIncrement> _ForInitOrIncrementStatement_InitOrIncrementByTag = {
    1 : ForInitOrIncrementStatement_InitOrIncrement.varDeclarationForStatement,
    2 : ForInitOrIncrementStatement_InitOrIncrement.assignmentForStatement,
    3 : ForInitOrIncrementStatement_InitOrIncrement.expressionForStatement,
    0 : ForInitOrIncrementStatement_InitOrIncrement.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForInitOrIncrementStatement', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<VarDeclarationForStatement>(1, _omitFieldNames ? '' : 'varDeclarationForStatement', protoName: 'varDeclarationForStatement', subBuilder: VarDeclarationForStatement.create)
    ..aOM<AssignmentForStatement>(2, _omitFieldNames ? '' : 'assignmentForStatement', protoName: 'assignmentForStatement', subBuilder: AssignmentForStatement.create)
    ..aOM<ExpressionForStatement>(3, _omitFieldNames ? '' : 'expressionForStatement', protoName: 'expressionForStatement', subBuilder: ExpressionForStatement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForInitOrIncrementStatement clone() => ForInitOrIncrementStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForInitOrIncrementStatement copyWith(void Function(ForInitOrIncrementStatement) updates) => super.copyWith((message) => updates(message as ForInitOrIncrementStatement)) as ForInitOrIncrementStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForInitOrIncrementStatement create() => ForInitOrIncrementStatement._();
  ForInitOrIncrementStatement createEmptyInstance() => create();
  static $pb.PbList<ForInitOrIncrementStatement> createRepeated() => $pb.PbList<ForInitOrIncrementStatement>();
  @$core.pragma('dart2js:noInline')
  static ForInitOrIncrementStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForInitOrIncrementStatement>(create);
  static ForInitOrIncrementStatement? _defaultInstance;

  ForInitOrIncrementStatement_InitOrIncrement whichInitOrIncrement() => _ForInitOrIncrementStatement_InitOrIncrementByTag[$_whichOneof(0)]!;
  void clearInitOrIncrement() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VarDeclarationForStatement get varDeclarationForStatement => $_getN(0);
  @$pb.TagNumber(1)
  set varDeclarationForStatement(VarDeclarationForStatement v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVarDeclarationForStatement() => $_has(0);
  @$pb.TagNumber(1)
  void clearVarDeclarationForStatement() => clearField(1);
  @$pb.TagNumber(1)
  VarDeclarationForStatement ensureVarDeclarationForStatement() => $_ensure(0);

  @$pb.TagNumber(2)
  AssignmentForStatement get assignmentForStatement => $_getN(1);
  @$pb.TagNumber(2)
  set assignmentForStatement(AssignmentForStatement v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssignmentForStatement() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssignmentForStatement() => clearField(2);
  @$pb.TagNumber(2)
  AssignmentForStatement ensureAssignmentForStatement() => $_ensure(1);

  @$pb.TagNumber(3)
  ExpressionForStatement get expressionForStatement => $_getN(2);
  @$pb.TagNumber(3)
  set expressionForStatement(ExpressionForStatement v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpressionForStatement() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpressionForStatement() => clearField(3);
  @$pb.TagNumber(3)
  ExpressionForStatement ensureExpressionForStatement() => $_ensure(2);
}

class VarDeclarationForStatement extends $pb.GeneratedMessage {
  factory VarDeclarationForStatement({
    VariableType? varType,
    $core.String? name,
    VariableValueType? valueType,
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (varType != null) {
      $result.varType = varType;
    }
    if (name != null) {
      $result.name = name;
    }
    if (valueType != null) {
      $result.valueType = valueType;
    }
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  VarDeclarationForStatement._() : super();
  factory VarDeclarationForStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VarDeclarationForStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VarDeclarationForStatement', createEmptyInstance: create)
    ..e<VariableType>(1, _omitFieldNames ? '' : 'varType', $pb.PbFieldType.OE, protoName: 'varType', defaultOrMaker: VariableType.VARIABLE, valueOf: VariableType.valueOf, enumValues: VariableType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<VariableValueType>(3, _omitFieldNames ? '' : 'valueType', protoName: 'valueType', subBuilder: VariableValueType.create)
    ..aOM<$0.Expression>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(5, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VarDeclarationForStatement clone() => VarDeclarationForStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VarDeclarationForStatement copyWith(void Function(VarDeclarationForStatement) updates) => super.copyWith((message) => updates(message as VarDeclarationForStatement)) as VarDeclarationForStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VarDeclarationForStatement create() => VarDeclarationForStatement._();
  VarDeclarationForStatement createEmptyInstance() => create();
  static $pb.PbList<VarDeclarationForStatement> createRepeated() => $pb.PbList<VarDeclarationForStatement>();
  @$core.pragma('dart2js:noInline')
  static VarDeclarationForStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VarDeclarationForStatement>(create);
  static VarDeclarationForStatement? _defaultInstance;

  @$pb.TagNumber(1)
  VariableType get varType => $_getN(0);
  @$pb.TagNumber(1)
  set varType(VariableType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVarType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVarType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  VariableValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(VariableValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => clearField(3);
  @$pb.TagNumber(3)
  VariableValueType ensureValueType() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Expression get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Expression v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Expression ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Position get position => $_getN(4);
  @$pb.TagNumber(5)
  set position($1.Position v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => clearField(5);
  @$pb.TagNumber(5)
  $1.Position ensurePosition() => $_ensure(4);
}

class AssignmentForStatement extends $pb.GeneratedMessage {
  factory AssignmentForStatement({
    $core.String? name,
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  AssignmentForStatement._() : super();
  factory AssignmentForStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignmentForStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignmentForStatement', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Expression>(2, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignmentForStatement clone() => AssignmentForStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignmentForStatement copyWith(void Function(AssignmentForStatement) updates) => super.copyWith((message) => updates(message as AssignmentForStatement)) as AssignmentForStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssignmentForStatement create() => AssignmentForStatement._();
  AssignmentForStatement createEmptyInstance() => create();
  static $pb.PbList<AssignmentForStatement> createRepeated() => $pb.PbList<AssignmentForStatement>();
  @$core.pragma('dart2js:noInline')
  static AssignmentForStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignmentForStatement>(create);
  static AssignmentForStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.Expression get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($0.Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  $0.Expression ensureValue() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($1.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $1.Position ensurePosition() => $_ensure(2);
}

class ExpressionForStatement extends $pb.GeneratedMessage {
  factory ExpressionForStatement({
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ExpressionForStatement._() : super();
  factory ExpressionForStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpressionForStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExpressionForStatement', createEmptyInstance: create)
    ..aOM<$0.Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExpressionForStatement clone() => ExpressionForStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExpressionForStatement copyWith(void Function(ExpressionForStatement) updates) => super.copyWith((message) => updates(message as ExpressionForStatement)) as ExpressionForStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpressionForStatement create() => ExpressionForStatement._();
  ExpressionForStatement createEmptyInstance() => create();
  static $pb.PbList<ExpressionForStatement> createRepeated() => $pb.PbList<ExpressionForStatement>();
  @$core.pragma('dart2js:noInline')
  static ExpressionForStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpressionForStatement>(create);
  static ExpressionForStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.Expression ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Position get position => $_getN(1);
  @$pb.TagNumber(2)
  set position($1.Position v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $1.Position ensurePosition() => $_ensure(1);
}

class ForDefinitionStatement extends $pb.GeneratedMessage {
  factory ForDefinitionStatement({
    ForCondition? forCondition,
    $core.Iterable<Statement>? statements,
    $1.Position? position,
  }) {
    final $result = create();
    if (forCondition != null) {
      $result.forCondition = forCondition;
    }
    if (statements != null) {
      $result.statements.addAll(statements);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ForDefinitionStatement._() : super();
  factory ForDefinitionStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForDefinitionStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForDefinitionStatement', createEmptyInstance: create)
    ..aOM<ForCondition>(1, _omitFieldNames ? '' : 'forCondition', protoName: 'forCondition', subBuilder: ForCondition.create)
    ..pc<Statement>(2, _omitFieldNames ? '' : 'statements', $pb.PbFieldType.PM, subBuilder: Statement.create)
    ..aOM<$1.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForDefinitionStatement clone() => ForDefinitionStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForDefinitionStatement copyWith(void Function(ForDefinitionStatement) updates) => super.copyWith((message) => updates(message as ForDefinitionStatement)) as ForDefinitionStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForDefinitionStatement create() => ForDefinitionStatement._();
  ForDefinitionStatement createEmptyInstance() => create();
  static $pb.PbList<ForDefinitionStatement> createRepeated() => $pb.PbList<ForDefinitionStatement>();
  @$core.pragma('dart2js:noInline')
  static ForDefinitionStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForDefinitionStatement>(create);
  static ForDefinitionStatement? _defaultInstance;

  @$pb.TagNumber(1)
  ForCondition get forCondition => $_getN(0);
  @$pb.TagNumber(1)
  set forCondition(ForCondition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasForCondition() => $_has(0);
  @$pb.TagNumber(1)
  void clearForCondition() => clearField(1);
  @$pb.TagNumber(1)
  ForCondition ensureForCondition() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Statement> get statements => $_getList(1);

  @$pb.TagNumber(3)
  $1.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($1.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $1.Position ensurePosition() => $_ensure(2);
}

enum ForCondition_Condition {
  standardForCondition, 
  forEachCondition, 
  notSet
}

class ForCondition extends $pb.GeneratedMessage {
  factory ForCondition({
    StandardForCondition? standardForCondition,
    ForEachCondition? forEachCondition,
  }) {
    final $result = create();
    if (standardForCondition != null) {
      $result.standardForCondition = standardForCondition;
    }
    if (forEachCondition != null) {
      $result.forEachCondition = forEachCondition;
    }
    return $result;
  }
  ForCondition._() : super();
  factory ForCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ForCondition_Condition> _ForCondition_ConditionByTag = {
    1 : ForCondition_Condition.standardForCondition,
    2 : ForCondition_Condition.forEachCondition,
    0 : ForCondition_Condition.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForCondition', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<StandardForCondition>(1, _omitFieldNames ? '' : 'standardForCondition', protoName: 'standardForCondition', subBuilder: StandardForCondition.create)
    ..aOM<ForEachCondition>(2, _omitFieldNames ? '' : 'forEachCondition', protoName: 'forEachCondition', subBuilder: ForEachCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForCondition clone() => ForCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForCondition copyWith(void Function(ForCondition) updates) => super.copyWith((message) => updates(message as ForCondition)) as ForCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForCondition create() => ForCondition._();
  ForCondition createEmptyInstance() => create();
  static $pb.PbList<ForCondition> createRepeated() => $pb.PbList<ForCondition>();
  @$core.pragma('dart2js:noInline')
  static ForCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForCondition>(create);
  static ForCondition? _defaultInstance;

  ForCondition_Condition whichCondition() => _ForCondition_ConditionByTag[$_whichOneof(0)]!;
  void clearCondition() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StandardForCondition get standardForCondition => $_getN(0);
  @$pb.TagNumber(1)
  set standardForCondition(StandardForCondition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStandardForCondition() => $_has(0);
  @$pb.TagNumber(1)
  void clearStandardForCondition() => clearField(1);
  @$pb.TagNumber(1)
  StandardForCondition ensureStandardForCondition() => $_ensure(0);

  @$pb.TagNumber(2)
  ForEachCondition get forEachCondition => $_getN(1);
  @$pb.TagNumber(2)
  set forEachCondition(ForEachCondition v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasForEachCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearForEachCondition() => clearField(2);
  @$pb.TagNumber(2)
  ForEachCondition ensureForEachCondition() => $_ensure(1);
}

class StandardForCondition extends $pb.GeneratedMessage {
  factory StandardForCondition({
    ForInitOrIncrementStatement? initStatement,
    $0.Expression? controlExpression,
    ForInitOrIncrementStatement? incrementStatement,
    $1.Position? position,
  }) {
    final $result = create();
    if (initStatement != null) {
      $result.initStatement = initStatement;
    }
    if (controlExpression != null) {
      $result.controlExpression = controlExpression;
    }
    if (incrementStatement != null) {
      $result.incrementStatement = incrementStatement;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  StandardForCondition._() : super();
  factory StandardForCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StandardForCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StandardForCondition', createEmptyInstance: create)
    ..aOM<ForInitOrIncrementStatement>(1, _omitFieldNames ? '' : 'initStatement', protoName: 'initStatement', subBuilder: ForInitOrIncrementStatement.create)
    ..aOM<$0.Expression>(2, _omitFieldNames ? '' : 'controlExpression', protoName: 'controlExpression', subBuilder: $0.Expression.create)
    ..aOM<ForInitOrIncrementStatement>(3, _omitFieldNames ? '' : 'incrementStatement', protoName: 'incrementStatement', subBuilder: ForInitOrIncrementStatement.create)
    ..aOM<$1.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StandardForCondition clone() => StandardForCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StandardForCondition copyWith(void Function(StandardForCondition) updates) => super.copyWith((message) => updates(message as StandardForCondition)) as StandardForCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StandardForCondition create() => StandardForCondition._();
  StandardForCondition createEmptyInstance() => create();
  static $pb.PbList<StandardForCondition> createRepeated() => $pb.PbList<StandardForCondition>();
  @$core.pragma('dart2js:noInline')
  static StandardForCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StandardForCondition>(create);
  static StandardForCondition? _defaultInstance;

  @$pb.TagNumber(1)
  ForInitOrIncrementStatement get initStatement => $_getN(0);
  @$pb.TagNumber(1)
  set initStatement(ForInitOrIncrementStatement v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInitStatement() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitStatement() => clearField(1);
  @$pb.TagNumber(1)
  ForInitOrIncrementStatement ensureInitStatement() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Expression get controlExpression => $_getN(1);
  @$pb.TagNumber(2)
  set controlExpression($0.Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasControlExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearControlExpression() => clearField(2);
  @$pb.TagNumber(2)
  $0.Expression ensureControlExpression() => $_ensure(1);

  @$pb.TagNumber(3)
  ForInitOrIncrementStatement get incrementStatement => $_getN(2);
  @$pb.TagNumber(3)
  set incrementStatement(ForInitOrIncrementStatement v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncrementStatement() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncrementStatement() => clearField(3);
  @$pb.TagNumber(3)
  ForInitOrIncrementStatement ensureIncrementStatement() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($1.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $1.Position ensurePosition() => $_ensure(3);
}

class ForEachCondition extends $pb.GeneratedMessage {
  factory ForEachCondition({
    ItemDefinition? itemDefinition,
    $0.Expression? expression,
    $1.Position? position,
  }) {
    final $result = create();
    if (itemDefinition != null) {
      $result.itemDefinition = itemDefinition;
    }
    if (expression != null) {
      $result.expression = expression;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ForEachCondition._() : super();
  factory ForEachCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForEachCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForEachCondition', createEmptyInstance: create)
    ..aOM<ItemDefinition>(1, _omitFieldNames ? '' : 'itemDefinition', protoName: 'itemDefinition', subBuilder: ItemDefinition.create)
    ..aOM<$0.Expression>(2, _omitFieldNames ? '' : 'expression', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForEachCondition clone() => ForEachCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForEachCondition copyWith(void Function(ForEachCondition) updates) => super.copyWith((message) => updates(message as ForEachCondition)) as ForEachCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForEachCondition create() => ForEachCondition._();
  ForEachCondition createEmptyInstance() => create();
  static $pb.PbList<ForEachCondition> createRepeated() => $pb.PbList<ForEachCondition>();
  @$core.pragma('dart2js:noInline')
  static ForEachCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForEachCondition>(create);
  static ForEachCondition? _defaultInstance;

  @$pb.TagNumber(1)
  ItemDefinition get itemDefinition => $_getN(0);
  @$pb.TagNumber(1)
  set itemDefinition(ItemDefinition v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemDefinition() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemDefinition() => clearField(1);
  @$pb.TagNumber(1)
  ItemDefinition ensureItemDefinition() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Expression get expression => $_getN(1);
  @$pb.TagNumber(2)
  set expression($0.Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpression() => clearField(2);
  @$pb.TagNumber(2)
  $0.Expression ensureExpression() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($1.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $1.Position ensurePosition() => $_ensure(2);
}

class ItemDefinition extends $pb.GeneratedMessage {
  factory ItemDefinition({
    VariableType? varType,
    $core.String? name,
    VariableValueType? valueType,
    $1.Position? position,
  }) {
    final $result = create();
    if (varType != null) {
      $result.varType = varType;
    }
    if (name != null) {
      $result.name = name;
    }
    if (valueType != null) {
      $result.valueType = valueType;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ItemDefinition._() : super();
  factory ItemDefinition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemDefinition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ItemDefinition', createEmptyInstance: create)
    ..e<VariableType>(1, _omitFieldNames ? '' : 'varType', $pb.PbFieldType.OE, protoName: 'varType', defaultOrMaker: VariableType.VARIABLE, valueOf: VariableType.valueOf, enumValues: VariableType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<VariableValueType>(3, _omitFieldNames ? '' : 'valueType', protoName: 'valueType', subBuilder: VariableValueType.create)
    ..aOM<$1.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemDefinition clone() => ItemDefinition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemDefinition copyWith(void Function(ItemDefinition) updates) => super.copyWith((message) => updates(message as ItemDefinition)) as ItemDefinition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ItemDefinition create() => ItemDefinition._();
  ItemDefinition createEmptyInstance() => create();
  static $pb.PbList<ItemDefinition> createRepeated() => $pb.PbList<ItemDefinition>();
  @$core.pragma('dart2js:noInline')
  static ItemDefinition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemDefinition>(create);
  static ItemDefinition? _defaultInstance;

  @$pb.TagNumber(1)
  VariableType get varType => $_getN(0);
  @$pb.TagNumber(1)
  set varType(VariableType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVarType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVarType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  VariableValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(VariableValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => clearField(3);
  @$pb.TagNumber(3)
  VariableValueType ensureValueType() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($1.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $1.Position ensurePosition() => $_ensure(3);
}

class ObjectPropertyAssignmentStatement extends $pb.GeneratedMessage {
  factory ObjectPropertyAssignmentStatement({
    $core.String? objectName,
    $core.String? propertyName,
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (objectName != null) {
      $result.objectName = objectName;
    }
    if (propertyName != null) {
      $result.propertyName = propertyName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ObjectPropertyAssignmentStatement._() : super();
  factory ObjectPropertyAssignmentStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectPropertyAssignmentStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectPropertyAssignmentStatement', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'objectName', protoName: 'objectName')
    ..aOS(2, _omitFieldNames ? '' : 'propertyName', protoName: 'propertyName')
    ..aOM<$0.Expression>(3, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObjectPropertyAssignmentStatement clone() => ObjectPropertyAssignmentStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObjectPropertyAssignmentStatement copyWith(void Function(ObjectPropertyAssignmentStatement) updates) => super.copyWith((message) => updates(message as ObjectPropertyAssignmentStatement)) as ObjectPropertyAssignmentStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectPropertyAssignmentStatement create() => ObjectPropertyAssignmentStatement._();
  ObjectPropertyAssignmentStatement createEmptyInstance() => create();
  static $pb.PbList<ObjectPropertyAssignmentStatement> createRepeated() => $pb.PbList<ObjectPropertyAssignmentStatement>();
  @$core.pragma('dart2js:noInline')
  static ObjectPropertyAssignmentStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectPropertyAssignmentStatement>(create);
  static ObjectPropertyAssignmentStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get objectName => $_getSZ(0);
  @$pb.TagNumber(1)
  set objectName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObjectName() => $_has(0);
  @$pb.TagNumber(1)
  void clearObjectName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyName() => clearField(2);

  @$pb.TagNumber(3)
  $0.Expression get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($0.Expression v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Expression ensureValue() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($1.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $1.Position ensurePosition() => $_ensure(3);
}

class ReturnStatement extends $pb.GeneratedMessage {
  factory ReturnStatement({
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ReturnStatement._() : super();
  factory ReturnStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReturnStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReturnStatement', createEmptyInstance: create)
    ..aOM<$0.Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReturnStatement clone() => ReturnStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReturnStatement copyWith(void Function(ReturnStatement) updates) => super.copyWith((message) => updates(message as ReturnStatement)) as ReturnStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReturnStatement create() => ReturnStatement._();
  ReturnStatement createEmptyInstance() => create();
  static $pb.PbList<ReturnStatement> createRepeated() => $pb.PbList<ReturnStatement>();
  @$core.pragma('dart2js:noInline')
  static ReturnStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReturnStatement>(create);
  static ReturnStatement? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($0.Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $0.Expression ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Position get position => $_getN(1);
  @$pb.TagNumber(2)
  set position($1.Position v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $1.Position ensurePosition() => $_ensure(1);
}

class VariableDeclarationStatement extends $pb.GeneratedMessage {
  factory VariableDeclarationStatement({
    VariableType? varType,
    $core.String? name,
    VariableValueType? valueType,
    $0.Expression? value,
    $1.Position? position,
  }) {
    final $result = create();
    if (varType != null) {
      $result.varType = varType;
    }
    if (name != null) {
      $result.name = name;
    }
    if (valueType != null) {
      $result.valueType = valueType;
    }
    if (value != null) {
      $result.value = value;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  VariableDeclarationStatement._() : super();
  factory VariableDeclarationStatement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VariableDeclarationStatement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VariableDeclarationStatement', createEmptyInstance: create)
    ..e<VariableType>(1, _omitFieldNames ? '' : 'varType', $pb.PbFieldType.OE, protoName: 'varType', defaultOrMaker: VariableType.VARIABLE, valueOf: VariableType.valueOf, enumValues: VariableType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<VariableValueType>(3, _omitFieldNames ? '' : 'valueType', protoName: 'valueType', subBuilder: VariableValueType.create)
    ..aOM<$0.Expression>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Expression.create)
    ..aOM<$1.Position>(5, _omitFieldNames ? '' : 'position', subBuilder: $1.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VariableDeclarationStatement clone() => VariableDeclarationStatement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VariableDeclarationStatement copyWith(void Function(VariableDeclarationStatement) updates) => super.copyWith((message) => updates(message as VariableDeclarationStatement)) as VariableDeclarationStatement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableDeclarationStatement create() => VariableDeclarationStatement._();
  VariableDeclarationStatement createEmptyInstance() => create();
  static $pb.PbList<VariableDeclarationStatement> createRepeated() => $pb.PbList<VariableDeclarationStatement>();
  @$core.pragma('dart2js:noInline')
  static VariableDeclarationStatement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VariableDeclarationStatement>(create);
  static VariableDeclarationStatement? _defaultInstance;

  @$pb.TagNumber(1)
  VariableType get varType => $_getN(0);
  @$pb.TagNumber(1)
  set varType(VariableType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVarType() => $_has(0);
  @$pb.TagNumber(1)
  void clearVarType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  VariableValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(VariableValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => clearField(3);
  @$pb.TagNumber(3)
  VariableValueType ensureValueType() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Expression get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Expression v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Expression ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Position get position => $_getN(4);
  @$pb.TagNumber(5)
  set position($1.Position v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => clearField(5);
  @$pb.TagNumber(5)
  $1.Position ensurePosition() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

//
//  Generated code. Do not modify.
//  source: expressions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'expressions.pbenum.dart';
import 'google/protobuf/any.pb.dart' as $1;
import 'position.pb.dart' as $0;

export 'expressions.pbenum.dart';

enum Expression_Expr {
  intLit, 
  decLit, 
  stringLit, 
  boolLit, 
  listLiteralExpression, 
  binaryMathExpression, 
  binaryLogicExpression, 
  unaryMathExpression, 
  unaryLogicExpression, 
  preIncrementExpression, 
  postIncrementExpression, 
  preDecrementExpression, 
  postDecrementExpression, 
  inputExpression, 
  outputExpression, 
  varReferenceExpression, 
  parenthesysExpression, 
  functionCallExpression, 
  objectPropertyReferenceExpression, 
  objectMethodCallExpression, 
  notSet
}

class Expression extends $pb.GeneratedMessage {
  factory Expression({
    IntLit? intLit,
    DecLit? decLit,
    StringLit? stringLit,
    BoolLit? boolLit,
    ListLiteralExpression? listLiteralExpression,
    BinaryMathExpression? binaryMathExpression,
    BinaryLogicExpression? binaryLogicExpression,
    UnaryMathExpression? unaryMathExpression,
    UnaryLogicExpression? unaryLogicExpression,
    PreIncrementExpression? preIncrementExpression,
    PostIncrementExpression? postIncrementExpression,
    PreDecrementExpression? preDecrementExpression,
    PostDecrementExpression? postDecrementExpression,
    InputExpression? inputExpression,
    OutputExpression? outputExpression,
    VarReferenceExpression? varReferenceExpression,
    ParenthesisExpression? parenthesysExpression,
    FunctionCallExpression? functionCallExpression,
    ObjectPropertyReferenceExpression? objectPropertyReferenceExpression,
    ObjectMethodCallExpression? objectMethodCallExpression,
  }) {
    final $result = create();
    if (intLit != null) {
      $result.intLit = intLit;
    }
    if (decLit != null) {
      $result.decLit = decLit;
    }
    if (stringLit != null) {
      $result.stringLit = stringLit;
    }
    if (boolLit != null) {
      $result.boolLit = boolLit;
    }
    if (listLiteralExpression != null) {
      $result.listLiteralExpression = listLiteralExpression;
    }
    if (binaryMathExpression != null) {
      $result.binaryMathExpression = binaryMathExpression;
    }
    if (binaryLogicExpression != null) {
      $result.binaryLogicExpression = binaryLogicExpression;
    }
    if (unaryMathExpression != null) {
      $result.unaryMathExpression = unaryMathExpression;
    }
    if (unaryLogicExpression != null) {
      $result.unaryLogicExpression = unaryLogicExpression;
    }
    if (preIncrementExpression != null) {
      $result.preIncrementExpression = preIncrementExpression;
    }
    if (postIncrementExpression != null) {
      $result.postIncrementExpression = postIncrementExpression;
    }
    if (preDecrementExpression != null) {
      $result.preDecrementExpression = preDecrementExpression;
    }
    if (postDecrementExpression != null) {
      $result.postDecrementExpression = postDecrementExpression;
    }
    if (inputExpression != null) {
      $result.inputExpression = inputExpression;
    }
    if (outputExpression != null) {
      $result.outputExpression = outputExpression;
    }
    if (varReferenceExpression != null) {
      $result.varReferenceExpression = varReferenceExpression;
    }
    if (parenthesysExpression != null) {
      $result.parenthesysExpression = parenthesysExpression;
    }
    if (functionCallExpression != null) {
      $result.functionCallExpression = functionCallExpression;
    }
    if (objectPropertyReferenceExpression != null) {
      $result.objectPropertyReferenceExpression = objectPropertyReferenceExpression;
    }
    if (objectMethodCallExpression != null) {
      $result.objectMethodCallExpression = objectMethodCallExpression;
    }
    return $result;
  }
  Expression._() : super();
  factory Expression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Expression_Expr> _Expression_ExprByTag = {
    2 : Expression_Expr.intLit,
    3 : Expression_Expr.decLit,
    4 : Expression_Expr.stringLit,
    5 : Expression_Expr.boolLit,
    6 : Expression_Expr.listLiteralExpression,
    7 : Expression_Expr.binaryMathExpression,
    8 : Expression_Expr.binaryLogicExpression,
    9 : Expression_Expr.unaryMathExpression,
    10 : Expression_Expr.unaryLogicExpression,
    11 : Expression_Expr.preIncrementExpression,
    12 : Expression_Expr.postIncrementExpression,
    13 : Expression_Expr.preDecrementExpression,
    14 : Expression_Expr.postDecrementExpression,
    15 : Expression_Expr.inputExpression,
    16 : Expression_Expr.outputExpression,
    17 : Expression_Expr.varReferenceExpression,
    18 : Expression_Expr.parenthesysExpression,
    19 : Expression_Expr.functionCallExpression,
    20 : Expression_Expr.objectPropertyReferenceExpression,
    21 : Expression_Expr.objectMethodCallExpression,
    0 : Expression_Expr.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expression', createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])
    ..aOM<IntLit>(2, _omitFieldNames ? '' : 'intLit', protoName: 'intLit', subBuilder: IntLit.create)
    ..aOM<DecLit>(3, _omitFieldNames ? '' : 'decLit', protoName: 'decLit', subBuilder: DecLit.create)
    ..aOM<StringLit>(4, _omitFieldNames ? '' : 'stringLit', protoName: 'stringLit', subBuilder: StringLit.create)
    ..aOM<BoolLit>(5, _omitFieldNames ? '' : 'boolLit', protoName: 'boolLit', subBuilder: BoolLit.create)
    ..aOM<ListLiteralExpression>(6, _omitFieldNames ? '' : 'listLiteralExpression', protoName: 'listLiteralExpression', subBuilder: ListLiteralExpression.create)
    ..aOM<BinaryMathExpression>(7, _omitFieldNames ? '' : 'binaryMathExpression', protoName: 'binaryMathExpression', subBuilder: BinaryMathExpression.create)
    ..aOM<BinaryLogicExpression>(8, _omitFieldNames ? '' : 'binaryLogicExpression', protoName: 'binaryLogicExpression', subBuilder: BinaryLogicExpression.create)
    ..aOM<UnaryMathExpression>(9, _omitFieldNames ? '' : 'unaryMathExpression', protoName: 'unaryMathExpression', subBuilder: UnaryMathExpression.create)
    ..aOM<UnaryLogicExpression>(10, _omitFieldNames ? '' : 'unaryLogicExpression', protoName: 'unaryLogicExpression', subBuilder: UnaryLogicExpression.create)
    ..aOM<PreIncrementExpression>(11, _omitFieldNames ? '' : 'preIncrementExpression', protoName: 'preIncrementExpression', subBuilder: PreIncrementExpression.create)
    ..aOM<PostIncrementExpression>(12, _omitFieldNames ? '' : 'postIncrementExpression', protoName: 'postIncrementExpression', subBuilder: PostIncrementExpression.create)
    ..aOM<PreDecrementExpression>(13, _omitFieldNames ? '' : 'preDecrementExpression', protoName: 'preDecrementExpression', subBuilder: PreDecrementExpression.create)
    ..aOM<PostDecrementExpression>(14, _omitFieldNames ? '' : 'postDecrementExpression', protoName: 'postDecrementExpression', subBuilder: PostDecrementExpression.create)
    ..aOM<InputExpression>(15, _omitFieldNames ? '' : 'inputExpression', protoName: 'inputExpression', subBuilder: InputExpression.create)
    ..aOM<OutputExpression>(16, _omitFieldNames ? '' : 'outputExpression', protoName: 'outputExpression', subBuilder: OutputExpression.create)
    ..aOM<VarReferenceExpression>(17, _omitFieldNames ? '' : 'varReferenceExpression', protoName: 'varReferenceExpression', subBuilder: VarReferenceExpression.create)
    ..aOM<ParenthesisExpression>(18, _omitFieldNames ? '' : 'parenthesysExpression', protoName: 'parenthesysExpression', subBuilder: ParenthesisExpression.create)
    ..aOM<FunctionCallExpression>(19, _omitFieldNames ? '' : 'functionCallExpression', protoName: 'functionCallExpression', subBuilder: FunctionCallExpression.create)
    ..aOM<ObjectPropertyReferenceExpression>(20, _omitFieldNames ? '' : 'objectPropertyReferenceExpression', protoName: 'objectPropertyReferenceExpression', subBuilder: ObjectPropertyReferenceExpression.create)
    ..aOM<ObjectMethodCallExpression>(21, _omitFieldNames ? '' : 'objectMethodCallExpression', protoName: 'objectMethodCallExpression', subBuilder: ObjectMethodCallExpression.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expression clone() => Expression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expression copyWith(void Function(Expression) updates) => super.copyWith((message) => updates(message as Expression)) as Expression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expression create() => Expression._();
  Expression createEmptyInstance() => create();
  static $pb.PbList<Expression> createRepeated() => $pb.PbList<Expression>();
  @$core.pragma('dart2js:noInline')
  static Expression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expression>(create);
  static Expression? _defaultInstance;

  Expression_Expr whichExpr() => _Expression_ExprByTag[$_whichOneof(0)]!;
  void clearExpr() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  IntLit get intLit => $_getN(0);
  @$pb.TagNumber(2)
  set intLit(IntLit v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntLit() => $_has(0);
  @$pb.TagNumber(2)
  void clearIntLit() => clearField(2);
  @$pb.TagNumber(2)
  IntLit ensureIntLit() => $_ensure(0);

  @$pb.TagNumber(3)
  DecLit get decLit => $_getN(1);
  @$pb.TagNumber(3)
  set decLit(DecLit v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDecLit() => $_has(1);
  @$pb.TagNumber(3)
  void clearDecLit() => clearField(3);
  @$pb.TagNumber(3)
  DecLit ensureDecLit() => $_ensure(1);

  @$pb.TagNumber(4)
  StringLit get stringLit => $_getN(2);
  @$pb.TagNumber(4)
  set stringLit(StringLit v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStringLit() => $_has(2);
  @$pb.TagNumber(4)
  void clearStringLit() => clearField(4);
  @$pb.TagNumber(4)
  StringLit ensureStringLit() => $_ensure(2);

  @$pb.TagNumber(5)
  BoolLit get boolLit => $_getN(3);
  @$pb.TagNumber(5)
  set boolLit(BoolLit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoolLit() => $_has(3);
  @$pb.TagNumber(5)
  void clearBoolLit() => clearField(5);
  @$pb.TagNumber(5)
  BoolLit ensureBoolLit() => $_ensure(3);

  @$pb.TagNumber(6)
  ListLiteralExpression get listLiteralExpression => $_getN(4);
  @$pb.TagNumber(6)
  set listLiteralExpression(ListLiteralExpression v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasListLiteralExpression() => $_has(4);
  @$pb.TagNumber(6)
  void clearListLiteralExpression() => clearField(6);
  @$pb.TagNumber(6)
  ListLiteralExpression ensureListLiteralExpression() => $_ensure(4);

  @$pb.TagNumber(7)
  BinaryMathExpression get binaryMathExpression => $_getN(5);
  @$pb.TagNumber(7)
  set binaryMathExpression(BinaryMathExpression v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBinaryMathExpression() => $_has(5);
  @$pb.TagNumber(7)
  void clearBinaryMathExpression() => clearField(7);
  @$pb.TagNumber(7)
  BinaryMathExpression ensureBinaryMathExpression() => $_ensure(5);

  @$pb.TagNumber(8)
  BinaryLogicExpression get binaryLogicExpression => $_getN(6);
  @$pb.TagNumber(8)
  set binaryLogicExpression(BinaryLogicExpression v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBinaryLogicExpression() => $_has(6);
  @$pb.TagNumber(8)
  void clearBinaryLogicExpression() => clearField(8);
  @$pb.TagNumber(8)
  BinaryLogicExpression ensureBinaryLogicExpression() => $_ensure(6);

  @$pb.TagNumber(9)
  UnaryMathExpression get unaryMathExpression => $_getN(7);
  @$pb.TagNumber(9)
  set unaryMathExpression(UnaryMathExpression v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUnaryMathExpression() => $_has(7);
  @$pb.TagNumber(9)
  void clearUnaryMathExpression() => clearField(9);
  @$pb.TagNumber(9)
  UnaryMathExpression ensureUnaryMathExpression() => $_ensure(7);

  @$pb.TagNumber(10)
  UnaryLogicExpression get unaryLogicExpression => $_getN(8);
  @$pb.TagNumber(10)
  set unaryLogicExpression(UnaryLogicExpression v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUnaryLogicExpression() => $_has(8);
  @$pb.TagNumber(10)
  void clearUnaryLogicExpression() => clearField(10);
  @$pb.TagNumber(10)
  UnaryLogicExpression ensureUnaryLogicExpression() => $_ensure(8);

  @$pb.TagNumber(11)
  PreIncrementExpression get preIncrementExpression => $_getN(9);
  @$pb.TagNumber(11)
  set preIncrementExpression(PreIncrementExpression v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPreIncrementExpression() => $_has(9);
  @$pb.TagNumber(11)
  void clearPreIncrementExpression() => clearField(11);
  @$pb.TagNumber(11)
  PreIncrementExpression ensurePreIncrementExpression() => $_ensure(9);

  @$pb.TagNumber(12)
  PostIncrementExpression get postIncrementExpression => $_getN(10);
  @$pb.TagNumber(12)
  set postIncrementExpression(PostIncrementExpression v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasPostIncrementExpression() => $_has(10);
  @$pb.TagNumber(12)
  void clearPostIncrementExpression() => clearField(12);
  @$pb.TagNumber(12)
  PostIncrementExpression ensurePostIncrementExpression() => $_ensure(10);

  @$pb.TagNumber(13)
  PreDecrementExpression get preDecrementExpression => $_getN(11);
  @$pb.TagNumber(13)
  set preDecrementExpression(PreDecrementExpression v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPreDecrementExpression() => $_has(11);
  @$pb.TagNumber(13)
  void clearPreDecrementExpression() => clearField(13);
  @$pb.TagNumber(13)
  PreDecrementExpression ensurePreDecrementExpression() => $_ensure(11);

  @$pb.TagNumber(14)
  PostDecrementExpression get postDecrementExpression => $_getN(12);
  @$pb.TagNumber(14)
  set postDecrementExpression(PostDecrementExpression v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasPostDecrementExpression() => $_has(12);
  @$pb.TagNumber(14)
  void clearPostDecrementExpression() => clearField(14);
  @$pb.TagNumber(14)
  PostDecrementExpression ensurePostDecrementExpression() => $_ensure(12);

  @$pb.TagNumber(15)
  InputExpression get inputExpression => $_getN(13);
  @$pb.TagNumber(15)
  set inputExpression(InputExpression v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasInputExpression() => $_has(13);
  @$pb.TagNumber(15)
  void clearInputExpression() => clearField(15);
  @$pb.TagNumber(15)
  InputExpression ensureInputExpression() => $_ensure(13);

  @$pb.TagNumber(16)
  OutputExpression get outputExpression => $_getN(14);
  @$pb.TagNumber(16)
  set outputExpression(OutputExpression v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasOutputExpression() => $_has(14);
  @$pb.TagNumber(16)
  void clearOutputExpression() => clearField(16);
  @$pb.TagNumber(16)
  OutputExpression ensureOutputExpression() => $_ensure(14);

  @$pb.TagNumber(17)
  VarReferenceExpression get varReferenceExpression => $_getN(15);
  @$pb.TagNumber(17)
  set varReferenceExpression(VarReferenceExpression v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasVarReferenceExpression() => $_has(15);
  @$pb.TagNumber(17)
  void clearVarReferenceExpression() => clearField(17);
  @$pb.TagNumber(17)
  VarReferenceExpression ensureVarReferenceExpression() => $_ensure(15);

  @$pb.TagNumber(18)
  ParenthesisExpression get parenthesysExpression => $_getN(16);
  @$pb.TagNumber(18)
  set parenthesysExpression(ParenthesisExpression v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasParenthesysExpression() => $_has(16);
  @$pb.TagNumber(18)
  void clearParenthesysExpression() => clearField(18);
  @$pb.TagNumber(18)
  ParenthesisExpression ensureParenthesysExpression() => $_ensure(16);

  @$pb.TagNumber(19)
  FunctionCallExpression get functionCallExpression => $_getN(17);
  @$pb.TagNumber(19)
  set functionCallExpression(FunctionCallExpression v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasFunctionCallExpression() => $_has(17);
  @$pb.TagNumber(19)
  void clearFunctionCallExpression() => clearField(19);
  @$pb.TagNumber(19)
  FunctionCallExpression ensureFunctionCallExpression() => $_ensure(17);

  @$pb.TagNumber(20)
  ObjectPropertyReferenceExpression get objectPropertyReferenceExpression => $_getN(18);
  @$pb.TagNumber(20)
  set objectPropertyReferenceExpression(ObjectPropertyReferenceExpression v) { setField(20, v); }
  @$pb.TagNumber(20)
  $core.bool hasObjectPropertyReferenceExpression() => $_has(18);
  @$pb.TagNumber(20)
  void clearObjectPropertyReferenceExpression() => clearField(20);
  @$pb.TagNumber(20)
  ObjectPropertyReferenceExpression ensureObjectPropertyReferenceExpression() => $_ensure(18);

  @$pb.TagNumber(21)
  ObjectMethodCallExpression get objectMethodCallExpression => $_getN(19);
  @$pb.TagNumber(21)
  set objectMethodCallExpression(ObjectMethodCallExpression v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasObjectMethodCallExpression() => $_has(19);
  @$pb.TagNumber(21)
  void clearObjectMethodCallExpression() => clearField(21);
  @$pb.TagNumber(21)
  ObjectMethodCallExpression ensureObjectMethodCallExpression() => $_ensure(19);
}

class IntLit extends $pb.GeneratedMessage {
  factory IntLit({
    $core.String? value,
    $0.Position? position,
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
  IntLit._() : super();
  factory IntLit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntLit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntLit', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntLit clone() => IntLit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntLit copyWith(void Function(IntLit) updates) => super.copyWith((message) => updates(message as IntLit)) as IntLit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntLit create() => IntLit._();
  IntLit createEmptyInstance() => create();
  static $pb.PbList<IntLit> createRepeated() => $pb.PbList<IntLit>();
  @$core.pragma('dart2js:noInline')
  static IntLit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntLit>(create);
  static IntLit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

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

class DecLit extends $pb.GeneratedMessage {
  factory DecLit({
    $core.String? value,
    $0.Position? position,
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
  DecLit._() : super();
  factory DecLit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DecLit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DecLit', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DecLit clone() => DecLit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DecLit copyWith(void Function(DecLit) updates) => super.copyWith((message) => updates(message as DecLit)) as DecLit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecLit create() => DecLit._();
  DecLit createEmptyInstance() => create();
  static $pb.PbList<DecLit> createRepeated() => $pb.PbList<DecLit>();
  @$core.pragma('dart2js:noInline')
  static DecLit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DecLit>(create);
  static DecLit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

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

class StringLit extends $pb.GeneratedMessage {
  factory StringLit({
    $core.String? value,
    $0.Position? position,
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
  StringLit._() : super();
  factory StringLit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringLit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringLit', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringLit clone() => StringLit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringLit copyWith(void Function(StringLit) updates) => super.copyWith((message) => updates(message as StringLit)) as StringLit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringLit create() => StringLit._();
  StringLit createEmptyInstance() => create();
  static $pb.PbList<StringLit> createRepeated() => $pb.PbList<StringLit>();
  @$core.pragma('dart2js:noInline')
  static StringLit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringLit>(create);
  static StringLit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

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

class BoolLit extends $pb.GeneratedMessage {
  factory BoolLit({
    $core.String? value,
    $0.Position? position,
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
  BoolLit._() : super();
  factory BoolLit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoolLit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoolLit', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'value')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoolLit clone() => BoolLit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoolLit copyWith(void Function(BoolLit) updates) => super.copyWith((message) => updates(message as BoolLit)) as BoolLit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoolLit create() => BoolLit._();
  BoolLit createEmptyInstance() => create();
  static $pb.PbList<BoolLit> createRepeated() => $pb.PbList<BoolLit>();
  @$core.pragma('dart2js:noInline')
  static BoolLit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoolLit>(create);
  static BoolLit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get value => $_getSZ(0);
  @$pb.TagNumber(1)
  set value($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

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

class ListLiteralExpression extends $pb.GeneratedMessage {
  factory ListLiteralExpression({
    $core.Iterable<$1.Any>? value,
    $0.Position? position,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ListLiteralExpression._() : super();
  factory ListLiteralExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLiteralExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListLiteralExpression', createEmptyInstance: create)
    ..pc<$1.Any>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.PM, subBuilder: $1.Any.create)
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLiteralExpression clone() => ListLiteralExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLiteralExpression copyWith(void Function(ListLiteralExpression) updates) => super.copyWith((message) => updates(message as ListLiteralExpression)) as ListLiteralExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListLiteralExpression create() => ListLiteralExpression._();
  ListLiteralExpression createEmptyInstance() => create();
  static $pb.PbList<ListLiteralExpression> createRepeated() => $pb.PbList<ListLiteralExpression>();
  @$core.pragma('dart2js:noInline')
  static ListLiteralExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLiteralExpression>(create);
  static ListLiteralExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Any> get value => $_getList(0);

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

class BinaryExpression extends $pb.GeneratedMessage {
  factory BinaryExpression({
    Expression? left,
    Expression? right,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (right != null) {
      $result.right = right;
    }
    return $result;
  }
  BinaryExpression._() : super();
  factory BinaryExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BinaryExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'left', subBuilder: Expression.create)
    ..aOM<Expression>(2, _omitFieldNames ? '' : 'right', subBuilder: Expression.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryExpression clone() => BinaryExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryExpression copyWith(void Function(BinaryExpression) updates) => super.copyWith((message) => updates(message as BinaryExpression)) as BinaryExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BinaryExpression create() => BinaryExpression._();
  BinaryExpression createEmptyInstance() => create();
  static $pb.PbList<BinaryExpression> createRepeated() => $pb.PbList<BinaryExpression>();
  @$core.pragma('dart2js:noInline')
  static BinaryExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryExpression>(create);
  static BinaryExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Expression get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => clearField(2);
  @$pb.TagNumber(2)
  Expression ensureRight() => $_ensure(1);
}

class BinaryMathExpression extends $pb.GeneratedMessage {
  factory BinaryMathExpression({
    Expression? left,
    Expression? right,
    MathOperand? operand,
    $0.Position? position,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (right != null) {
      $result.right = right;
    }
    if (operand != null) {
      $result.operand = operand;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  BinaryMathExpression._() : super();
  factory BinaryMathExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryMathExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BinaryMathExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'left', subBuilder: Expression.create)
    ..aOM<Expression>(2, _omitFieldNames ? '' : 'right', subBuilder: Expression.create)
    ..e<MathOperand>(3, _omitFieldNames ? '' : 'operand', $pb.PbFieldType.OE, defaultOrMaker: MathOperand.PLUS, valueOf: MathOperand.valueOf, enumValues: MathOperand.values)
    ..aOM<$0.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryMathExpression clone() => BinaryMathExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryMathExpression copyWith(void Function(BinaryMathExpression) updates) => super.copyWith((message) => updates(message as BinaryMathExpression)) as BinaryMathExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BinaryMathExpression create() => BinaryMathExpression._();
  BinaryMathExpression createEmptyInstance() => create();
  static $pb.PbList<BinaryMathExpression> createRepeated() => $pb.PbList<BinaryMathExpression>();
  @$core.pragma('dart2js:noInline')
  static BinaryMathExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryMathExpression>(create);
  static BinaryMathExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Expression get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => clearField(2);
  @$pb.TagNumber(2)
  Expression ensureRight() => $_ensure(1);

  @$pb.TagNumber(3)
  MathOperand get operand => $_getN(2);
  @$pb.TagNumber(3)
  set operand(MathOperand v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperand() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperand() => clearField(3);

  @$pb.TagNumber(4)
  $0.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($0.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $0.Position ensurePosition() => $_ensure(3);
}

class BinaryLogicExpression extends $pb.GeneratedMessage {
  factory BinaryLogicExpression({
    Expression? left,
    Expression? right,
    LogicOperand? operand,
    $0.Position? position,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (right != null) {
      $result.right = right;
    }
    if (operand != null) {
      $result.operand = operand;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  BinaryLogicExpression._() : super();
  factory BinaryLogicExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryLogicExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BinaryLogicExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'left', subBuilder: Expression.create)
    ..aOM<Expression>(2, _omitFieldNames ? '' : 'right', subBuilder: Expression.create)
    ..e<LogicOperand>(3, _omitFieldNames ? '' : 'operand', $pb.PbFieldType.OE, defaultOrMaker: LogicOperand.AND, valueOf: LogicOperand.valueOf, enumValues: LogicOperand.values)
    ..aOM<$0.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryLogicExpression clone() => BinaryLogicExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryLogicExpression copyWith(void Function(BinaryLogicExpression) updates) => super.copyWith((message) => updates(message as BinaryLogicExpression)) as BinaryLogicExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BinaryLogicExpression create() => BinaryLogicExpression._();
  BinaryLogicExpression createEmptyInstance() => create();
  static $pb.PbList<BinaryLogicExpression> createRepeated() => $pb.PbList<BinaryLogicExpression>();
  @$core.pragma('dart2js:noInline')
  static BinaryLogicExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryLogicExpression>(create);
  static BinaryLogicExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Expression get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Expression v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => clearField(2);
  @$pb.TagNumber(2)
  Expression ensureRight() => $_ensure(1);

  @$pb.TagNumber(3)
  LogicOperand get operand => $_getN(2);
  @$pb.TagNumber(3)
  set operand(LogicOperand v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOperand() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperand() => clearField(3);

  @$pb.TagNumber(4)
  $0.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($0.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $0.Position ensurePosition() => $_ensure(3);
}

class UnaryMathExpression extends $pb.GeneratedMessage {
  factory UnaryMathExpression({
    Expression? value,
    MathOperand? operand,
    $0.Position? position,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (operand != null) {
      $result.operand = operand;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  UnaryMathExpression._() : super();
  factory UnaryMathExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnaryMathExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnaryMathExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: Expression.create)
    ..e<MathOperand>(2, _omitFieldNames ? '' : 'operand', $pb.PbFieldType.OE, defaultOrMaker: MathOperand.PLUS, valueOf: MathOperand.valueOf, enumValues: MathOperand.values)
    ..aOM<$0.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnaryMathExpression clone() => UnaryMathExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnaryMathExpression copyWith(void Function(UnaryMathExpression) updates) => super.copyWith((message) => updates(message as UnaryMathExpression)) as UnaryMathExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnaryMathExpression create() => UnaryMathExpression._();
  UnaryMathExpression createEmptyInstance() => create();
  static $pb.PbList<UnaryMathExpression> createRepeated() => $pb.PbList<UnaryMathExpression>();
  @$core.pragma('dart2js:noInline')
  static UnaryMathExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnaryMathExpression>(create);
  static UnaryMathExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  MathOperand get operand => $_getN(1);
  @$pb.TagNumber(2)
  set operand(MathOperand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperand() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperand() => clearField(2);

  @$pb.TagNumber(3)
  $0.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($0.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $0.Position ensurePosition() => $_ensure(2);
}

class UnaryLogicExpression extends $pb.GeneratedMessage {
  factory UnaryLogicExpression({
    Expression? value,
    LogicOperand? operand,
    $0.Position? position,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (operand != null) {
      $result.operand = operand;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  UnaryLogicExpression._() : super();
  factory UnaryLogicExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnaryLogicExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UnaryLogicExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: Expression.create)
    ..e<LogicOperand>(2, _omitFieldNames ? '' : 'operand', $pb.PbFieldType.OE, defaultOrMaker: LogicOperand.AND, valueOf: LogicOperand.valueOf, enumValues: LogicOperand.values)
    ..aOM<$0.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnaryLogicExpression clone() => UnaryLogicExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnaryLogicExpression copyWith(void Function(UnaryLogicExpression) updates) => super.copyWith((message) => updates(message as UnaryLogicExpression)) as UnaryLogicExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnaryLogicExpression create() => UnaryLogicExpression._();
  UnaryLogicExpression createEmptyInstance() => create();
  static $pb.PbList<UnaryLogicExpression> createRepeated() => $pb.PbList<UnaryLogicExpression>();
  @$core.pragma('dart2js:noInline')
  static UnaryLogicExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnaryLogicExpression>(create);
  static UnaryLogicExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  LogicOperand get operand => $_getN(1);
  @$pb.TagNumber(2)
  set operand(LogicOperand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperand() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperand() => clearField(2);

  @$pb.TagNumber(4)
  $0.Position get position => $_getN(2);
  @$pb.TagNumber(4)
  set position($0.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $0.Position ensurePosition() => $_ensure(2);
}

class PreIncrementExpression extends $pb.GeneratedMessage {
  factory PreIncrementExpression({
    $core.String? name,
    $0.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  PreIncrementExpression._() : super();
  factory PreIncrementExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreIncrementExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreIncrementExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreIncrementExpression clone() => PreIncrementExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreIncrementExpression copyWith(void Function(PreIncrementExpression) updates) => super.copyWith((message) => updates(message as PreIncrementExpression)) as PreIncrementExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreIncrementExpression create() => PreIncrementExpression._();
  PreIncrementExpression createEmptyInstance() => create();
  static $pb.PbList<PreIncrementExpression> createRepeated() => $pb.PbList<PreIncrementExpression>();
  @$core.pragma('dart2js:noInline')
  static PreIncrementExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreIncrementExpression>(create);
  static PreIncrementExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

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

class PostIncrementExpression extends $pb.GeneratedMessage {
  factory PostIncrementExpression({
    $core.String? name,
    $0.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  PostIncrementExpression._() : super();
  factory PostIncrementExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostIncrementExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostIncrementExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostIncrementExpression clone() => PostIncrementExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostIncrementExpression copyWith(void Function(PostIncrementExpression) updates) => super.copyWith((message) => updates(message as PostIncrementExpression)) as PostIncrementExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostIncrementExpression create() => PostIncrementExpression._();
  PostIncrementExpression createEmptyInstance() => create();
  static $pb.PbList<PostIncrementExpression> createRepeated() => $pb.PbList<PostIncrementExpression>();
  @$core.pragma('dart2js:noInline')
  static PostIncrementExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostIncrementExpression>(create);
  static PostIncrementExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

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

class PreDecrementExpression extends $pb.GeneratedMessage {
  factory PreDecrementExpression({
    $core.String? name,
    $0.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  PreDecrementExpression._() : super();
  factory PreDecrementExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreDecrementExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreDecrementExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreDecrementExpression clone() => PreDecrementExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreDecrementExpression copyWith(void Function(PreDecrementExpression) updates) => super.copyWith((message) => updates(message as PreDecrementExpression)) as PreDecrementExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreDecrementExpression create() => PreDecrementExpression._();
  PreDecrementExpression createEmptyInstance() => create();
  static $pb.PbList<PreDecrementExpression> createRepeated() => $pb.PbList<PreDecrementExpression>();
  @$core.pragma('dart2js:noInline')
  static PreDecrementExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreDecrementExpression>(create);
  static PreDecrementExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

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

class PostDecrementExpression extends $pb.GeneratedMessage {
  factory PostDecrementExpression({
    $core.String? name,
    $0.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  PostDecrementExpression._() : super();
  factory PostDecrementExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostDecrementExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PostDecrementExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PostDecrementExpression clone() => PostDecrementExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PostDecrementExpression copyWith(void Function(PostDecrementExpression) updates) => super.copyWith((message) => updates(message as PostDecrementExpression)) as PostDecrementExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PostDecrementExpression create() => PostDecrementExpression._();
  PostDecrementExpression createEmptyInstance() => create();
  static $pb.PbList<PostDecrementExpression> createRepeated() => $pb.PbList<PostDecrementExpression>();
  @$core.pragma('dart2js:noInline')
  static PostDecrementExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostDecrementExpression>(create);
  static PostDecrementExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

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

class InputExpression extends $pb.GeneratedMessage {
  factory InputExpression({
    $0.Position? position,
  }) {
    final $result = create();
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  InputExpression._() : super();
  factory InputExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InputExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InputExpression', createEmptyInstance: create)
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InputExpression clone() => InputExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InputExpression copyWith(void Function(InputExpression) updates) => super.copyWith((message) => updates(message as InputExpression)) as InputExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InputExpression create() => InputExpression._();
  InputExpression createEmptyInstance() => create();
  static $pb.PbList<InputExpression> createRepeated() => $pb.PbList<InputExpression>();
  @$core.pragma('dart2js:noInline')
  static InputExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InputExpression>(create);
  static InputExpression? _defaultInstance;

  @$pb.TagNumber(2)
  $0.Position get position => $_getN(0);
  @$pb.TagNumber(2)
  set position($0.Position v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  $0.Position ensurePosition() => $_ensure(0);
}

class OutputExpression extends $pb.GeneratedMessage {
  factory OutputExpression({
    Expression? value,
    $0.Position? position,
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
  OutputExpression._() : super();
  factory OutputExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutputExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OutputExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: Expression.create)
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OutputExpression clone() => OutputExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OutputExpression copyWith(void Function(OutputExpression) updates) => super.copyWith((message) => updates(message as OutputExpression)) as OutputExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OutputExpression create() => OutputExpression._();
  OutputExpression createEmptyInstance() => create();
  static $pb.PbList<OutputExpression> createRepeated() => $pb.PbList<OutputExpression>();
  @$core.pragma('dart2js:noInline')
  static OutputExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutputExpression>(create);
  static OutputExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureValue() => $_ensure(0);

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

class VarReferenceExpression extends $pb.GeneratedMessage {
  factory VarReferenceExpression({
    $core.String? name,
    $0.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  VarReferenceExpression._() : super();
  factory VarReferenceExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VarReferenceExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VarReferenceExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VarReferenceExpression clone() => VarReferenceExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VarReferenceExpression copyWith(void Function(VarReferenceExpression) updates) => super.copyWith((message) => updates(message as VarReferenceExpression)) as VarReferenceExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VarReferenceExpression create() => VarReferenceExpression._();
  VarReferenceExpression createEmptyInstance() => create();
  static $pb.PbList<VarReferenceExpression> createRepeated() => $pb.PbList<VarReferenceExpression>();
  @$core.pragma('dart2js:noInline')
  static VarReferenceExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VarReferenceExpression>(create);
  static VarReferenceExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

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

class ParenthesisExpression extends $pb.GeneratedMessage {
  factory ParenthesisExpression({
    Expression? value,
    $0.Position? position,
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
  ParenthesisExpression._() : super();
  factory ParenthesisExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParenthesisExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParenthesisExpression', createEmptyInstance: create)
    ..aOM<Expression>(1, _omitFieldNames ? '' : 'value', subBuilder: Expression.create)
    ..aOM<$0.Position>(2, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParenthesisExpression clone() => ParenthesisExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParenthesisExpression copyWith(void Function(ParenthesisExpression) updates) => super.copyWith((message) => updates(message as ParenthesisExpression)) as ParenthesisExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParenthesisExpression create() => ParenthesisExpression._();
  ParenthesisExpression createEmptyInstance() => create();
  static $pb.PbList<ParenthesisExpression> createRepeated() => $pb.PbList<ParenthesisExpression>();
  @$core.pragma('dart2js:noInline')
  static ParenthesisExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParenthesisExpression>(create);
  static ParenthesisExpression? _defaultInstance;

  @$pb.TagNumber(1)
  Expression get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Expression v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Expression ensureValue() => $_ensure(0);

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

class FunctionCallExpression extends $pb.GeneratedMessage {
  factory FunctionCallExpression({
    $core.String? name,
    $core.Iterable<Expression>? parameters,
    $0.Position? position,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  FunctionCallExpression._() : super();
  factory FunctionCallExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionCallExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionCallExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<Expression>(2, _omitFieldNames ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: Expression.create)
    ..aOM<$0.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionCallExpression clone() => FunctionCallExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionCallExpression copyWith(void Function(FunctionCallExpression) updates) => super.copyWith((message) => updates(message as FunctionCallExpression)) as FunctionCallExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionCallExpression create() => FunctionCallExpression._();
  FunctionCallExpression createEmptyInstance() => create();
  static $pb.PbList<FunctionCallExpression> createRepeated() => $pb.PbList<FunctionCallExpression>();
  @$core.pragma('dart2js:noInline')
  static FunctionCallExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionCallExpression>(create);
  static FunctionCallExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Expression> get parameters => $_getList(1);

  @$pb.TagNumber(3)
  $0.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($0.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $0.Position ensurePosition() => $_ensure(2);
}

class ObjectPropertyReferenceExpression extends $pb.GeneratedMessage {
  factory ObjectPropertyReferenceExpression({
    $core.String? objectName,
    $core.String? propertyName,
    $0.Position? position,
  }) {
    final $result = create();
    if (objectName != null) {
      $result.objectName = objectName;
    }
    if (propertyName != null) {
      $result.propertyName = propertyName;
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ObjectPropertyReferenceExpression._() : super();
  factory ObjectPropertyReferenceExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectPropertyReferenceExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectPropertyReferenceExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'objectName', protoName: 'objectName')
    ..aOS(2, _omitFieldNames ? '' : 'propertyName', protoName: 'propertyName')
    ..aOM<$0.Position>(3, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObjectPropertyReferenceExpression clone() => ObjectPropertyReferenceExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObjectPropertyReferenceExpression copyWith(void Function(ObjectPropertyReferenceExpression) updates) => super.copyWith((message) => updates(message as ObjectPropertyReferenceExpression)) as ObjectPropertyReferenceExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectPropertyReferenceExpression create() => ObjectPropertyReferenceExpression._();
  ObjectPropertyReferenceExpression createEmptyInstance() => create();
  static $pb.PbList<ObjectPropertyReferenceExpression> createRepeated() => $pb.PbList<ObjectPropertyReferenceExpression>();
  @$core.pragma('dart2js:noInline')
  static ObjectPropertyReferenceExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectPropertyReferenceExpression>(create);
  static ObjectPropertyReferenceExpression? _defaultInstance;

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
  $0.Position get position => $_getN(2);
  @$pb.TagNumber(3)
  set position($0.Position v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
  @$pb.TagNumber(3)
  $0.Position ensurePosition() => $_ensure(2);
}

class ObjectMethodCallExpression extends $pb.GeneratedMessage {
  factory ObjectMethodCallExpression({
    $core.String? objectName,
    $core.String? methodName,
    $core.Iterable<Expression>? parameters,
    $0.Position? position,
  }) {
    final $result = create();
    if (objectName != null) {
      $result.objectName = objectName;
    }
    if (methodName != null) {
      $result.methodName = methodName;
    }
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    if (position != null) {
      $result.position = position;
    }
    return $result;
  }
  ObjectMethodCallExpression._() : super();
  factory ObjectMethodCallExpression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectMethodCallExpression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectMethodCallExpression', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'objectName', protoName: 'objectName')
    ..aOS(2, _omitFieldNames ? '' : 'methodName', protoName: 'methodName')
    ..pc<Expression>(3, _omitFieldNames ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: Expression.create)
    ..aOM<$0.Position>(4, _omitFieldNames ? '' : 'position', subBuilder: $0.Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObjectMethodCallExpression clone() => ObjectMethodCallExpression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObjectMethodCallExpression copyWith(void Function(ObjectMethodCallExpression) updates) => super.copyWith((message) => updates(message as ObjectMethodCallExpression)) as ObjectMethodCallExpression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectMethodCallExpression create() => ObjectMethodCallExpression._();
  ObjectMethodCallExpression createEmptyInstance() => create();
  static $pb.PbList<ObjectMethodCallExpression> createRepeated() => $pb.PbList<ObjectMethodCallExpression>();
  @$core.pragma('dart2js:noInline')
  static ObjectMethodCallExpression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectMethodCallExpression>(create);
  static ObjectMethodCallExpression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get objectName => $_getSZ(0);
  @$pb.TagNumber(1)
  set objectName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObjectName() => $_has(0);
  @$pb.TagNumber(1)
  void clearObjectName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get methodName => $_getSZ(1);
  @$pb.TagNumber(2)
  set methodName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMethodName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMethodName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Expression> get parameters => $_getList(2);

  @$pb.TagNumber(4)
  $0.Position get position => $_getN(3);
  @$pb.TagNumber(4)
  set position($0.Position v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);
  @$pb.TagNumber(4)
  $0.Position ensurePosition() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

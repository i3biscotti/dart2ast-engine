import 'package:dart2ast_engine/ast.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;

import 'protobuf2ast/base.dart';
import 'protobuf2ast/statements.dart';
import 'protobuf2ast/expressions.dart';

ast.Node convertNodeFromProtobuf(protocol.Node node) {
  final parsedNode = switch (node) {
    protocol.ProgramFile p => p.toAst(),
    protocol.Statement s => convertStatementFromProtobuf(s),
    protocol.Expression e => convertExpressionFromProtobuf(e),
    _ => throw UnsupportedError("${node.runtimeType} not supported"),
  };

  return parsedNode;
}

ast.Statement convertStatementFromProtobuf(protocol.Statement statement) {
  if (statement.hasVarDeclarationStatement()) {
    return statement.varDeclarationStatement.toAst();
  } else if (statement.hasAssignmentStatement()) {
    return statement.assignmentStatement.toAst();
  } else if (statement.hasExpressionDefinitionStatement()) {
    return statement.expressionDefinitionStatement.toAst();
  } else if (statement.hasReturnStatement()) {
    return statement.returnStatement.toAst();
  } else if (statement.hasIfDefinitionStatement()) {
    return statement.ifDefinitionStatement.toAst();
  } else if (statement.hasWhileDefinitionStatement()) {
    return statement.whileDefinitionStatement.toAst();
  } else {
    throw UnsupportedError("${statement.runtimeType} not supported");
  }
}

ast.Expression convertExpressionFromProtobuf(protocol.Expression expression) {
  if (expression.hasBoolLit()) {
    return expression.boolLit.toAst();
  } else if (expression.hasStringLit()) {
    return expression.stringLit.toAst();
  } else if (expression.hasIntLit()) {
    return expression.intLit.toAst();
  } else if (expression.hasDecLit()) {
    return expression.decLit.toAst();
  } else if (expression.hasVarReferenceExpression()) {
    return expression.varReferenceExpression.toAst();
  } else if (expression.hasBinaryMathExpression()) {
    return expression.binaryMathExpression.toAst();
  }else if(expression.hasBinaryComparisonExpression()){
    return expression.binaryComparisonExpression.toAst();
  }

  else {
    throw UnsupportedError("${expression.runtimeType} not supported");
  }
}
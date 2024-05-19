import 'package:dart2ast_engine/ast/models.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'package:dart2ast_engine/ast/protocol/converter/ast2protobuf/base.dart';
import 'package:protobuf/protobuf.dart' as $pb;

$pb.GeneratedMessage convertToProtobuf<T extends Object>(T object) {
  if (object is ast.AstObject) {
    return convertAstObjectToProtobuf(object);
  } else {
    throw UnsupportedError("${object.runtimeType} not supported");
  }
}

protocol.AstObject convertAstObjectToProtobuf(ast.AstObject object) {
  final astObject = protocol.AstObject();

  final _ = switch (object) {
    ast.Node node => astObject.node = convertNodeToProtobuf(node),
    ast.Position pos => astObject.position = pos.toProtobuf(),
    ast.Point point => astObject.point = point.toProtobuf(),
    _ => throw UnsupportedError("${object.runtimeType} not supported"),
  };

  return astObject;
}

protocol.Node convertNodeToProtobuf<T extends ast.Node>(T object) {
  final node = protocol.Node();

  final _ = switch (object) {
    ast.ProgramFile p => node.programFile = p.toProtobuf(),
    ast.Statement s => node.statement = convertStatementToProtobuf(s),
    ast.Expression e => node.expression = convertExpressionToProtobuf(e),
    ast.IfBlock ifBlock => UnimplementedError(""),
    ast.ForCondition forCond => UnimplementedError(""),
    ast.ItemDefinition itemDef => UnimplementedError(""),
    ast.Parameter param => UnimplementedError(""),
    _ => throw UnsupportedError("${object.runtimeType} not supported"),
  };

  return node;
}

protocol.Statement convertStatementToProtobuf(ast.Statement object) {
  final statement = protocol.Statement();

  final _ = switch (object) {
    ast.VariableDeclarationStatement s => statement.varDeclarationStatement =
        s.toProtobuf(),
    ast.AssignmentStatement s => statement.assignmentStatement = s.toProtobuf(),
    ast.ExpressionDefinitionStatement s =>
      statement.expressionDefinitionStatement = s.toProtobuf(),
    ast.ReturnStatement s => statement.returnStatement = s.toProtobuf(),
    ast.IfDefinitionStatement s => statement.ifDefinitionStatement =
        s.toProtobuf(),
    ast.IfBlock node => node,
    ast.WhileDefinitionStatement s => statement.whileDefinitionStatement =
        s.toProtobuf(),
    ast.VarDeclarationForStatement node => node,
    ast.AssignmentForStatement node => node,
    ast.ExpressionForStatement node => node,
    ast.ItemDefinition node => node,
    ast.ForDefinitionStatement s => statement.forDefinitionStatement =
        s.toProtobuf(),
    ast.ForCondition node => node,
    ast.FunctionDefinitionStatement s => statement.functionDefinitionStatement =  s.toProtobuf(),
    ast.Parameter node => node,
    ast.ClassDefinitionStatement s => statement.classDefinitionStatement =
        s.toProtobuf(),
    ast.ObjectPropertyAssignmentStatement s =>
      statement.objectPropertyAssignmentStatement = s.toProtobuf(),
    _ => throw UnsupportedError("${object.runtimeType} not supported"),
  };

  return statement;
}

protocol.Expression convertExpressionToProtobuf(ast.Expression object) {
  final expression = protocol.Expression();

  final _ = switch (object) {
    ast.IntLit e => expression.intLit = e.toProtobuf(),
    ast.DecLit e => expression.decLit = e.toProtobuf(),
    ast.BoolLit e => expression.boolLit = e.toProtobuf(),
    ast.StringLit e => expression.stringLit = e.toProtobuf(),
    ast.ListLiteralExpression e => expression.listLiteralExpression =
        e.toProtobuf(),
    ast.BinaryMathExpression e => expression.binaryMathExpression =
        e.toProtobuf(),
    ast.BinaryLogicExpression e => expression.binaryLogicExpression =
        e.toProtobuf(),
    ast.BinaryComparisonExpression e => expression.binaryComparisonExpression =
        e.toProtobuf(),
    ast.UnaryMathExpression e => expression.unaryMathExpression =
        e.toProtobuf(),
    ast.UnaryLogicExpression e => expression.unaryLogicExpression =
        e.toProtobuf(),
    ast.PreIncrementExpression e => expression.preIncrementExpression =
        e.toProtobuf(),
    ast.PostIncrementExpression e => expression.postIncrementExpression =
        e.toProtobuf(),
    ast.PreDecrementExpression e => expression.preDecrementExpression =
        e.toProtobuf(),
    ast.PostDecrementExpression e => expression.postDecrementExpression =
        e.toProtobuf(),
    ast.InputExpression e => expression.inputExpression = e.toProtobuf(),
    ast.OutputExpression e => expression.outputExpression = e.toProtobuf(),
    ast.ParenthesysExpression e => expression.parenthesisExpression =
        e.toProtobuf(),
    ast.VarReferenceExpression e => expression.varReferenceExpression =
        e.toProtobuf(),
    ast.FunctionCallExpression e => expression.functionCallExpression =
        e.toProtobuf(),
    ast.ObjectMethodCallExpression e => expression.objectMethodCallExpression =
        e.toProtobuf(),
    ast.ObjectPropertyReferenceExpression e =>
      expression.objectPropertyReferenceExpression = e.toProtobuf(),
    _ => throw UnsupportedError("${object.runtimeType} not supported"),
  };

  return expression;
}

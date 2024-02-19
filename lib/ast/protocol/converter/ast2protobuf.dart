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

protocol.AstObject convertAstObjectToProtobuf<T extends ast.AstObject>(T object) {
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
    ast.VarDeclarationForStatement node => UnimplementedError(""),
    ast.AssignmentForStatement node => node,
    ast.Expression node => UnimplementedError(""),
    ast.IfBlock node => UnimplementedError(""),
    ast.ForCondition node => UnimplementedError(""),
    ast.ItemDefinition node => UnimplementedError(""),
    ast.Parameter node => UnimplementedError(""),
    _ => throw UnsupportedError("${object.runtimeType} not supported"),
  };

  return statement;
}

protocol.Expression convertExpressionToProtobuf(ast.Expression object) {
  final expression =  protocol.Expression();

  return expression;
}

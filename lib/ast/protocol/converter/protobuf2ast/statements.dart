import 'package:dart2ast_engine/ast.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'base.dart';

extension ProtocolVariableDeclarationStatementDeserializer
on protocol.VariableDeclarationStatement {
  ast.VariableDeclarationStatement toAst() {
    final _varType = this.varType.toAst();
    final _name = this.name;
    final _valueType = this.valueType.toAst();
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.VariableDeclarationStatement(
      _varType,
      _name,
      _valueType,
      _value,
      _position,
    );
  }
}

extension on protocol.VariableType {
  ast.VariableType toAst() {
    switch (this) {
      case protocol.VariableType.VARIABLE:
        return ast.VariableType.variable;
      case protocol.VariableType.TYPE:
        return ast.VariableType.type;
      case protocol.VariableType.IMMUTABLE:
        return ast.VariableType.immutable;
      case protocol.VariableType.CONSTANT:
        return ast.VariableType.constant;
      default:
        throw UnsupportedError("VariableType $this not supported");
    }
  }
}

extension on protocol.VariableValueType {
  ast.VariableValueType toAst() => ast.VariableValueType(name);
}

extension ProtocolAssignmentStatementDeserializer
on protocol.AssignmentStatement {
  ast.AssignmentStatement toAst() {
    final _name = this.name;
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.AssignmentStatement(
      _name,
      _value,
      _position,
    );
  }
}

extension ProtocolExpressionDefinitionStatementSerializer
on protocol.ExpressionDefinitionStatement {
  ast.ExpressionDefinitionStatement toAst() {
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.ExpressionDefinitionStatement(
      _value,
      _position,
    );
  }
}

extension ProtocolReturnStatement on protocol.ReturnStatement {
  ast.ReturnStatement toAst() {
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.ReturnStatement(
      _value,
      _position,
    );
  }
}

extension ProtocolIfDefinitionStatement on protocol.IfDefinitionStatement {
  ast.IfDefinitionStatement toAst() {
    final _ifBlock = this.ifBlock.toAst();
    final _elseIfBlocks = this.elseIfBlocks.map((e) => e.toAst()).toList();
    final _elseBlock = this.elseBlock.toAst();

    final _position = this.position.toAst();

    return ast.IfDefinitionStatement(
      _ifBlock,
      _elseIfBlocks,
      _elseBlock,
      _position,
    );
  }
}

extension on protocol.IfBlock {
  ast.IfBlock toAst() {
    final _blockType = this.blockType.toAst();
    final _condition = protocol.convertExpressionFromProtobuf(this.condition);
    final _block =
    this.statements.map(protocol.convertStatementFromProtobuf).toList();
    final _position = this.position.toAst();

    return ast.IfBlock(
      _condition,
      _block,
      _blockType,
      _position,
    );
  }
}

extension on protocol.BlockType {
  ast.BlockType toAst() {
    switch (this) {
      case protocol.BlockType.IF_BLOCK:
        return ast.BlockType.ifBlock;
      case protocol.BlockType.ELSE_IF_BLOCK:
        return ast.BlockType.elseIfBlock;
      case protocol.BlockType.ELSE_BLOCK:
        return ast.BlockType.elseBlock;
      default:
        throw UnsupportedError("BlockType $this not supported");
    }
  }
}

extension ProtocolWhileDefinitionStatement
on protocol.WhileDefinitionStatement {
  ast.WhileDefinitionStatement toAst() {
    final _condition = protocol.convertExpressionFromProtobuf(this.condition);
    final _block =
    this.statements.map(protocol.convertStatementFromProtobuf).toList();
    final _position = this.position.toAst();

    return ast.WhileDefinitionStatement(
      _condition,
      _block,
      _position,
    );
  }
}

extension ProtocolForDefinitionStatement on protocol.ForDefinitionStatement {
  ast.ForDefinitionStatement toAst() {
    final _condition = this.forCondition.toAst();
    final _block =
    this.statements.map(protocol.convertStatementFromProtobuf).toList();
    final _position = this.position.toAst();

    return ast.ForDefinitionStatement(
      _condition,
      _block,
      _position,
    );
  }
}

extension on protocol.ForCondition {
  ast.ForCondition toAst() {
    if (this.hasStandardForCondition()) {
      return this.standardForCondition.toAst();
    } else if (this.hasForEachCondition()) {
      return this.forEachCondition.toAst();
    } else {
      throw UnsupportedError("ForCondition $this not supported");
    }
  }
}

extension on protocol.StandardForCondition {
  ast.StandardForCondition toAst() {
    final _initStatement = this.initStatement.toAst();
    final _controlExpression =
    protocol.convertExpressionFromProtobuf(this.controlExpression);
    final _incrementStatement = this.incrementStatement.toAst();
    final _position = this.position.toAst();

    return ast.StandardForCondition(
      _initStatement,
      _controlExpression,
      _incrementStatement,
      _position,
    );
  }
}

extension on protocol.ForInitOrIncrementStatement {
  ast.ForInitOrIncrementStatement toAst() {
    if (this.hasVarDeclarationForStatement()) {
      return this.varDeclarationForStatement.toAst();
    } else if (this.hasAssignmentForStatement()) {
      return this.assignmentForStatement.toAst();
    } else if (this.hasExpressionForStatement()) {
      return this.expressionForStatement.toAst();
    } else {
      throw UnsupportedError("ForInitOrIncrementStatement $this not supported");
    }
  }
}

extension on protocol.AssignmentForStatement {
  ast.AssignmentForStatement toAst() {
    final _name = this.name;
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.AssignmentForStatement(
      _name,
      _value,
      _position,
    );
  }
}

extension on protocol.ExpressionForStatement {
  ast.ExpressionForStatement toAst() {
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.ExpressionForStatement(
      _value,
      _position,
    );
  }
}

extension on protocol.VarDeclarationForStatement {
  ast.VarDeclarationForStatement toAst() {
    final _varType = this.varType.toAst();
    final _name = this.name;
    final _valueType = this.valueType.toAst();
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst();

    return ast.VarDeclarationForStatement(
      _varType,
      _name,
      _valueType,
      _value,
      _position,
    );
  }
}

extension on protocol.ForEachCondition {
  ast.ForEachCondition toAst() {
    final _itemDefinition = this.itemDefinition.toAst();
    final _expression = protocol.convertExpressionFromProtobuf(this.expression);
    final _position = this.position.toAst();

    return ast.ForEachCondition(
      _itemDefinition,
      _expression,
      _position,
    );
  }
}

extension on protocol.ItemDefinition {
  ast.ItemDefinition toAst() {
    final _varType = this.varType.toAst();
    final _name = this.name;
    final _valueType = this.valueType.toAst();
    final _position = this.position.toAst();

    return ast.ItemDefinition(
      _varType,
      _name,
      _valueType,
      _position,
    );
  }
}

extension ProtocolFunctionDefinitionStatement
on protocol.FunctionDefinitionStatement {
  ast.FunctionDefinitionStatement toAst() {
    final _name = this.name;
    final _parameters = this.parameters.map((p) => p.toAst()).toList();
    final _statements =
    this.statements.map(protocol.convertStatementFromProtobuf).toList();
    final _position = this.position.toAst();
    final _returnType = this.returnType.toAst();

    return ast.FunctionDefinitionStatement(
      _name,
      _parameters,
      _returnType,
      _statements,
      _position,
    );
  }
}

extension on protocol.Parameter {
  ast.Parameter toAst() {
    final _type = this.type.toAst();
    final _valueType = this.valueType.toAst();
    final _name = this.name;
    final _position = this.position.toAst();

    return ast.Parameter(
      _name,
      _type,
      _valueType,
      _position,
    );
  }


}

extension on protocol.ParameterType{
  ast.ParameterType toAst() {
    switch(this){
    case protocol.ParameterType.THIS:
    return ast.ParameterType.THIS;
    case protocol.ParameterType.TYPED:
    return ast.ParameterType.TYPE;
    case protocol.ParameterType.SUPER:
    return ast.ParameterType.SUPER;
    default:
    throw UnsupportedError("ParameterType $this not supported");
    }
  }
}

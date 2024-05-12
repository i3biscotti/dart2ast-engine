import 'package:dart2ast_engine/ast/models.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'package:dart2ast_engine/ast/protocol/converter/ast2protobuf.dart';

extension VariableType2Protobuf on ast.VariableType {
  protocol.VariableType toProtobuf() {
    return switch (this) {
      ast.VariableType.type => protocol.VariableType.TYPE,
      ast.VariableType.variable => protocol.VariableType.VARIABLE,
      ast.VariableType.immutable => protocol.VariableType.IMMUTABLE,
      ast.VariableType.constant => protocol.VariableType.CONSTANT,
    };
  }
}

extension VarDeclarationStatement2Protobuf on ast.VariableDeclarationStatement {
  protocol.VariableDeclarationStatement toProtobuf() {
    final variable =  protocol.VariableDeclarationStatement(
      varType: varType.toProtobuf(),
      name : name,
      position: position?.toProtobuf(),
    );
    if (valueType != null) {
      variable.valueType = protocol.VariableValueType(name: valueType!.typeName);
    };
    if (value != null) {
      variable.value = protocol.convertExpressionToProtobuf(value!);
    }
    return variable;
  }
}

extension AssignmentStatement2Protobuf on ast.AssignmentStatement {
  protocol.AssignmentStatement toProtobuf() {
    return protocol.AssignmentStatement(
      name: name,
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
  }
}

extension ExpressionDefinitionStatement2Protobuf on ast.ExpressionDefinitionStatement {
  protocol.ExpressionDefinitionStatement toProtobuf() {
    return protocol.ExpressionDefinitionStatement(
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
  }
}

extension ReturnStatement2Protobuf on ast.ReturnStatement {
  protocol.ReturnStatement toProtobuf() {
    return protocol.ReturnStatement(
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
  }
}

extension BlockType2Protobuf on ast.BlockType {
  protocol.BlockType toProtobuf() {
    return switch (this) {
      ast.BlockType.ifBlock => protocol.BlockType.IF_BLOCK,
      ast.BlockType.elseIfBlock => protocol.BlockType.ELSE_IF_BLOCK,
      ast.BlockType.elseBlock => protocol.BlockType.ELSE_BLOCK,
    };
  }
}

extension IfStatement2Protobuf on ast.IfDefinitionStatement {
  protocol.IfDefinitionStatement toProtobuf() {
    final statement = protocol.IfDefinitionStatement(
      ifBlock: ifBlock.toProtobuf(),
      elseIfBlocks: elseIfBlocks.map((e) => e.toProtobuf()),
      position: position?.toProtobuf(),
    );
    if (elseBlock != null) {
      statement.elseBlock = elseBlock!.toProtobuf();
    }
    return statement;
  }
}

extension IfBlock2Protobuf on ast.IfBlock {
  protocol.IfBlock toProtobuf() {
    final block = protocol.IfBlock(
      statements: statements.map((e) => convertStatementToProtobuf(e)).toList(),
      blockType: blockType.toProtobuf(),
      position: position?.toProtobuf(),
    );
    if (condition != null ) {
      block.condition = protocol.convertExpressionToProtobuf(condition!);
    }
    return block;
  }
}

extension WhileStatement2Protobuf on ast.WhileDefinitionStatement {
  protocol.WhileDefinitionStatement toProtobuf() {
    final statement = protocol.WhileDefinitionStatement(
      statements: statements.map((e) => convertStatementToProtobuf(e)).toList(),
      position: position?.toProtobuf(),
    );
    if (condition != null) {
      statement.condition = convertExpressionToProtobuf(condition!);
    }
    return statement;
  }
}


extension ForInitOrIncrementStatement2Protobuf on ast.ForInitOrIncrementStatement {
  protocol.ForInitOrIncrementStatement toProtobuf(){
     final forInitOrIncrementStatement = protocol.ForInitOrIncrementStatement();
     final _ = switch(this) {
      ast.VarDeclarationForStatement s => forInitOrIncrementStatement.varDeclarationForStatement = s.toProtobuf(),
      ast.AssignmentForStatement s => forInitOrIncrementStatement.assignmentForStatement = s.toProtobuf(),
      ast.ExpressionForStatement s => forInitOrIncrementStatement.expressionForStatement = s.toProtobuf(),
      _ => throw UnimplementedError()
     };
     return forInitOrIncrementStatement;
     }
}

extension VarDeclarationForStatement2Protobuf on ast.VarDeclarationForStatement {
  protocol.VarDeclarationForStatement toProtobuf() {
    final variable = protocol.VarDeclarationForStatement(
      name : name,
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
     if (valueType != null) {
      variable.valueType = protocol.VariableValueType(name: valueType!.typeName);
    };
    if (varType != null) {
      variable.varType = varType!.toProtobuf();
    }
    return variable;
  }
}

extension AssignmentForStatement2Protobuf on ast.AssignmentForStatement {
  protocol.AssignmentForStatement toProtobuf() {
    return protocol.AssignmentForStatement(
      name: name,
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
  }
}

extension ExpressionForStatement2Protobuf on ast.ExpressionForStatement {
  protocol.ExpressionForStatement toProtobuf() {
    return protocol.ExpressionForStatement(
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
  }
}

extension ItemDefinition2Protobuf on ast.ItemDefinition {
  protocol.ItemDefinition toProtobuf() {
    final item = protocol.ItemDefinition(
      varType: varType.toProtobuf(),
      name: name,
      position: position?.toProtobuf(),
    );
     if (valueType != null) {
      item.valueType = protocol.VariableValueType(name: valueType!.typeName);
    };
    return item;
  }
}

extension ForDefinitionStatement2Protobuf on ast.ForDefinitionStatement {
  protocol.ForDefinitionStatement toProtobuf() {
    return protocol.ForDefinitionStatement(
      forCondition: forCondition.toProtobuf(),
      statements: statements.map((e) => convertStatementToProtobuf(e)).toList(),
      position: position?.toProtobuf(),
    );
  }
}

extension ForCondition2Protobuf on ast.ForCondition {
  protocol.ForCondition toProtobuf() {
    final forCondition = protocol.ForCondition();
    final _ = switch (this) {
      ast.StandardForCondition st => forCondition.standardForCondition = st.toProtobuf(),
      ast.ForEachCondition st => forCondition.forEachCondition = st.toProtobuf(),
      _ => throw UnimplementedError()
    };
    return forCondition;
  } 
}

extension StandardForCondition2Protobuf on ast.StandardForCondition {
  protocol.StandardForCondition toProtobuf() {
    return protocol.StandardForCondition(
      initStatement: initStatement.toProtobuf(),
      controlExpression: convertExpressionToProtobuf(controlExpression),
      incrementStatement: incrementStatement.toProtobuf(),
      position: position?.toProtobuf(),
    );
  }
}

extension ForEachCondition2Protobuf on ast.ForEachCondition {
  protocol.ForEachCondition toProtobuf() {
    return protocol.ForEachCondition(
      itemDefinition: itemDefinition.toProtobuf(),
      expression: convertExpressionToProtobuf(expression),
      position: position?.toProtobuf(),
    );
  }
}


extension FunctionDefinitionStatement2Protobuf on ast.FunctionDefinitionStatement {
  protocol.FunctionDefinitionStatement toProtobuf() {
    final function = protocol.FunctionDefinitionStatement(
      name: name,
      parameters: parameters.map((e) => e.toProtobuf()).toList(),
      statements: body.map((s) => convertStatementToProtobuf(s)).toList(),
      position: position?.toProtobuf()
    );
    if (returnType != null) {
      function.returnType = protocol.VariableValueType(name: returnType!.typeName);
    } return function;
  } 
}

extension ParameterType2Protobuf on ast.ParameterType{
  protocol.ParameterType toProtobuf() {
    return switch (this) {
      ast.ParameterType.THIS => protocol.ParameterType.THIS,
      ast.ParameterType.SUPER => protocol.ParameterType.SUPER,
      ast.ParameterType.TYPE => protocol.ParameterType.TYPED,
    };
  }
}

extension ParameterConverter2Protobuf on ast.Parameter {
  protocol.Parameter toProtobuf() {
    final parameter = protocol.Parameter(
      name: name,
      type: paramType.toProtobuf(),
      position: position?.toProtobuf()
    );
    if (valueType != null) {
      parameter.valueType = protocol.VariableValueType(name: valueType!.typeName);
    }
    return parameter;
  }
}

extension EncapsulationType2Protobuf on ast.EncapsulationType {
   protocol.EncapsulationType toProtobuf() {
    return switch (this) {
      ast.EncapsulationType.public => protocol.EncapsulationType.PUBLIC,
      ast.EncapsulationType.private => protocol.EncapsulationType.PRIVATE
    };
   }
}

extension ConstructorDefinitionStatement2Protobuf on ast.ConstructorDefinitionStatement {
  protocol.ConstructorDefinitionStatement toProtobuf () {
    final constructor = protocol.ConstructorDefinitionStatement(
      className: className,
      constructorName: constructorName,
      parameters: parameters.map((e) => e.toProtobuf()).toList(),
      body: body.map((s) => convertStatementToProtobuf(s)).toList(),
      position: position?.toProtobuf()
    );
    if (thisConstructor != null) {
      constructor.thisConstructor = protocol.ThisConstructorDefinition(
        parameters: thisConstructor!.parameters.map(convertExpressionToProtobuf).toList(),
        position: thisConstructor!.position?.toProtobuf()
      );
    };
    return constructor;
  }
}


extension ClassDefinitionStatement2Protobuf on ast.ClassDefinitionStatement {
  protocol.ClassDefinitionStatement toProtobuf() {
    return protocol.ClassDefinitionStatement(
      encapsulation: encapsulationType.toProtobuf(),
      name: name,
      parentName: parentName,
      properties: properties.map((e) => e.toProtobuf()),
      constructors: constructors.map((e) => e.toProtobuf()).toList(),        
      methods: methods.map((e) => e.toProtobuf()).toList(),              
      position: position?.toProtobuf()
    );
  }
}

extension ObjectPropertyAssignmentStatement2Protobuf on ast.ObjectPropertyAssignmentStatement {
  protocol.ObjectPropertyAssignmentStatement toProtobuf() {
    return protocol.ObjectPropertyAssignmentStatement(
      objectName: objectName,
      propertyName: propertyName,
      value: convertExpressionToProtobuf(value),
      position: position?.toProtobuf(),
    );
  }
}


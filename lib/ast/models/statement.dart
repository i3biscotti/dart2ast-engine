import 'package:dart2ast_engine/dart2ast.dart';

abstract class Statement extends Node {
  Statement(super.position);
}

class VariableDeclarationStatement extends Statement {
  final VariableType varType;
  final String name;
  final VariableValueType? valueType;
  final Expression? value;

  VariableDeclarationStatement(
    this.varType,
    this.name,
    this.valueType,
    this.value,
    super.position,
  );

  @override
  List<Object?> get props => [varType, name, valueType, value, position];
}

enum VariableType {
  type,
  variable,
  immutable,
  constant;

  static VariableType fromName(String name) {
    return switch (name) {
      'type' => VariableType.type,
      'variable' => VariableType.variable,
      'immutable' => VariableType.immutable,
      'constant' => VariableType.constant,
      _ => throw UnimplementedError(),
    };
  }
}

class VariableValueType extends AstObject {
  final String typeName;

  VariableValueType(this.typeName);

  factory VariableValueType.fromName(String name) {
    return switch (name) {
      'int' => VariableValueType.INT,
      'double' => VariableValueType.DOUBLE,
      'String' => VariableValueType.STRING,
      'bool' => VariableValueType.BOOLEAN,
      'List' => VariableValueType.LIST,
      'void' => VariableValueType.VOID,
      String type => VariableValueType(type),
    };
  }

  static VariableValueType get INT => VariableValueType('int');

  static VariableValueType get DOUBLE => VariableValueType('double');

  static VariableValueType get STRING => VariableValueType('string');

  static VariableValueType get BOOLEAN => VariableValueType('bool');

  static VariableValueType get LIST => VariableValueType('list');

  static VariableValueType get DYNAMIC => VariableValueType('dynamic');

  static VariableValueType get VOID => VariableValueType('void');

  @override
  List<Object?> get props => [typeName];
}

class AssignmentStatement extends Statement {
  final String name;
  final Expression value;

  AssignmentStatement(this.name, this.value, super.position);

  @override
  List<Object?> get props => [name, value, position];
}

class ExpressionDefinitionStatement extends Statement {
  final Expression value;

  ExpressionDefinitionStatement(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class ReturnStatement extends Statement {
  final Expression value;

  ReturnStatement(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class IfDefinitionStatement extends Statement {
  final IfBlock ifBlock;
  final List<IfBlock> elseIfBlocks;
  final IfBlock? elseBlock;

  IfDefinitionStatement(
    this.ifBlock,
    this.elseIfBlocks,
    this.elseBlock,
    super.position,
  );

  @override
  List<Object?> get props => [ifBlock, elseIfBlocks, elseBlock, position];
}

enum BlockType { ifBlock, elseIfBlock, elseBlock }

class IfBlock extends Node {
  final Expression? condition;
  final List<Statement> statements;
  final BlockType blockType;

  IfBlock(this.condition, this.statements, this.blockType, super.position);

  @override
  List<Object?> get props => [condition, statements, blockType, position];
}

//task 4
class WhileDefinitionStatement extends Statement {
  final Expression? condition;
  final List<Statement> statements;

  WhileDefinitionStatement(this.condition, this.statements, super.position);

  @override
  List<Object?> get props => [condition, statements, position];
}

//task 5

abstract class ForInitOrIncrementStatement extends Statement {
  ForInitOrIncrementStatement(super.position);
}

class VarDeclarationForStatement extends ForInitOrIncrementStatement {
  final VariableType? varType;
  final String name;
  final VariableValueType? valueType;
  final Expression value;

  VarDeclarationForStatement(
    this.varType,
    this.name,
    this.valueType,
    this.value,
    super.position,
  );

  @override
  List<Object?> get props => [varType, name, valueType, value, position];
}

class AssignmentForStatement extends ForInitOrIncrementStatement {
  final String name;
  final Expression value;

  AssignmentForStatement(this.name, this.value, super.position);

  @override
  List<Object?> get props => [name, value, position];
}

class ExpressionForStatement extends ForInitOrIncrementStatement {
  final Expression value;

  ExpressionForStatement(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class ItemDefinition extends Node {
  final VariableType varType;
  final String name;
  final VariableValueType? valueType;

  ItemDefinition(
    this.varType,
    this.name,
    this.valueType,
    super.position,
  );

  @override
  List<Object?> get props => [varType, name, valueType, position];
}

class ForDefinitionStatement extends Statement {
  final ForCondition forCondition;
  final List<Statement> statements;

  ForDefinitionStatement(this.forCondition, this.statements, super.position);

  @override
  List<Object?> get props => [forCondition, statements, position];
}

abstract class ForCondition extends Node {
  ForCondition(super.position);
}

class StandardForCondition extends ForCondition {
  final ForInitOrIncrementStatement initStatement;
  final Expression controlExpression;
  final ForInitOrIncrementStatement incrementStatement;

  StandardForCondition(
    this.initStatement,
    this.controlExpression,
    this.incrementStatement,
    super.position,
  );

  @override
  List<Object?> get props => [
        initStatement,
        controlExpression,
        incrementStatement,
        position,
      ];
}

class ForEachCondition extends ForCondition {
  final ItemDefinition itemDefinition;
  final Expression expression;

  ForEachCondition(this.itemDefinition, this.expression, super.position);

  @override
  List<Object?> get props => [itemDefinition, expression, position];
}

class FunctionDefinitionStatement extends Statement {
  final String name;
  final List<Parameter> parameters;
  final VariableValueType? returnType;
  final List<Statement> body;

  FunctionDefinitionStatement(
    this.name,
    this.parameters,
    this.returnType,
    this.body,
    super.position,
  );

  @override
  List<Object?> get props => [name, parameters, returnType, body, position];
}

enum ParameterType { THIS, SUPER, TYPE }

class Parameter extends Node {
  final String name;
  final ParameterType paramType;
  final VariableValueType? valueType;

  Parameter(this.name, this.paramType, this.valueType, super.position);

  @override
  List<Object?> get props => [name, paramType, valueType, position];
}

enum EncapsulationType { public, private }

class ClassDefinitionStatement extends Statement {
  final EncapsulationType encapsulationType;
  final String name;
  final String? parentName;
  final List<VariableDeclarationStatement> properties;
  final List<ConstructorDefinitionStatement> constructors;
  final List<FunctionDefinitionStatement> methods;

  ClassDefinitionStatement(
    this.encapsulationType,
    this.name,
    this.parentName,
    this.properties,
    this.constructors,
    this.methods,
    super.position,
  );

  @override
  List<Object?> get props => [
        encapsulationType,
        name,
        parentName,
        properties,
        constructors,
        methods,
        position,
      ];
}

class ConstructorDefinitionStatement extends Statement {
  final String className;
  final String? constructorName;
  final List<Parameter> parameters;
  final ThisConstructorDefinition? thisConstructor;
  final List<Statement> body;

  ConstructorDefinitionStatement(
    this.className,
    this.constructorName,
    this.parameters,
    this.thisConstructor,
    this.body,
    super.position,
  );

  @override
  List<Object?> get props => [
        className,
        constructorName,
        parameters,
        thisConstructor,
        body,
        position,
      ];
}

class ThisConstructorDefinition extends Node {
  final List<Expression> parameters;

  ThisConstructorDefinition(this.parameters, super.position);

  @override
  List<Object?> get props => [parameters, position];
}

class ObjectPropertyAssignmentStatement extends Statement {
  final String objectName;
  final String propertyName;
  final Expression value;

  ObjectPropertyAssignmentStatement(
    this.objectName,
    this.propertyName,
    this.value,
    super.position,
  );

  @override
  List<Object?> get props => [objectName, propertyName, value, position];
}

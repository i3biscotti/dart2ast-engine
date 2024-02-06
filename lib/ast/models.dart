import 'package:dart2ast_engine/dart2ast.dart';
import 'package:equatable/equatable.dart';

class Point extends Equatable {
  final int line;
  final int column;

  Point(this.line, this.column);

  @override
  List<Object?> get props => [line, column];

  Map<String, int> toJson() => {
        'line': line,
        'column': column,
      };
}

class Position extends Equatable {
  final Point start;
  final Point end;

  Position(this.start, this.end);

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      Point(json['start']['line'], json['start']['column']),
      Point(json['end']['line'], json['end']['column']),
    );
  }

  @override
  List<Object?> get props => [start, end];

  operator <(Position other) {
    return start.line < other.start.line ||
        (start.line == other.start.line && start.column < other.start.column);
  }

  operator >(Position other) {
    return start.line > other.start.line ||
        (start.line == other.start.line && start.column > other.start.column);
  }

  operator <=(Position other) {
    return start.line <= other.start.line ||
        (start.line == other.start.line && start.column <= other.start.column);
  }

  operator >=(Position other) {
    return start.line >= other.start.line ||
        (start.line == other.start.line && start.column >= other.start.column);
  }

  Map<String, dynamic> toJson() => {
        'start': start.toJson(),
        'end': end.toJson(),
      };
}

abstract class Node extends Equatable {
  final Position? position;

  Node(this.position);

  Map<String, dynamic> toJson();
}

class ProgramFile extends Node {
  final List<Statement> lines;

  ProgramFile(this.lines, super.position);

  factory ProgramFile.fromJson(Map<String, dynamic> json) {
    return ProgramFile(
      (json['lines'] as List).map((e) => Statement.fromJson(e)).toList(),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [lines, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'lines': lines.map((e) => e.toJson()).toList(),
        'position': position?.toJson(),
      };
}

abstract class Statement extends Node {
  Statement(super.position);

  factory Statement.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'VariableDeclarationStatement' =>
        VariableDeclarationStatement.fromJson(json),
      'AssignmentStatement' => AssignmentStatement.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }
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

  factory VariableDeclarationStatement.fromJson(Map<String, dynamic> json) {
    return VariableDeclarationStatement(
      VariableType.fromName(json['varType']),
      json['name'],
      VariableValueType.fromName(json['valueType']),
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, valueType, value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'varType': varType.name,
        'name': name,
        'valueType': valueType?.typeName,
        'value': value?.toJson(),
        'position': position?.toJson(),
      };
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

class VariableValueType extends Equatable {
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
  static VariableValueType get STRING => VariableValueType('String');
  static VariableValueType get BOOLEAN => VariableValueType('bool');
  static VariableValueType get LIST => VariableValueType('List');
  static VariableValueType get VOID => VariableValueType('void');

  @override
  List<Object?> get props => [typeName];
}

class AssignmentStatement extends Statement {
  final String name;
  final Expression value;

  AssignmentStatement(this.name, this.value, super.position);

  factory AssignmentStatement.fromJson(Map<String, dynamic> json) {
    return AssignmentStatement(
      json['name'],
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [name, value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'name': name,
        'value': value.toJson(),
        'position': position?.toJson(),
      };
}

class ExpressionDefinitionStatement extends Statement {
  final Expression value;

  ExpressionDefinitionStatement(this.value, super.position);

  factory ExpressionDefinitionStatement.fromJson(Map<String, dynamic> json) {
    return ExpressionDefinitionStatement(
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value.toJson(),
        'position': position?.toJson(),
      };
}

class ReturnStatement extends Statement {
  final Expression value;

  ReturnStatement(this.value, super.position);

  factory ReturnStatement.fromJson(Map<String, dynamic> json) {
    return ReturnStatement(
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value.toJson(),
        'position': position?.toJson(),
      };
}

abstract class Expression extends Node {
  Expression(super.position);

  factory Expression.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'IntLit' => IntLit.fromJson(json),
      'DecLit' => DecLit.fromJson(json),
      'StringLit' => StringLit.fromJson(json),
      'BoolLit' => BoolLit.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }
}

class IntLit extends Expression {
  final String value;
  IntLit(this.value, super.position);

  factory IntLit.fromJson(Map<String, dynamic> json) {
    return IntLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position?.toJson(),
      };
}

class DecLit extends Expression {
  final String value;
  DecLit(this.value, super.position);

  factory DecLit.fromJson(Map<String, dynamic> json) {
    return DecLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position?.toJson(),
      };
}

class StringLit extends Expression {
  final String value;
  StringLit(this.value, super.position);

  factory StringLit.fromJson(Map<String, dynamic> json) {
    return StringLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position?.toJson(),
      };
}

class BoolLit extends Expression {
  final String value;
  BoolLit(this.value, super.position);

  @override
  List<Object?> get props => [value, position];

  factory BoolLit.fromJson(Map<String, dynamic> json) {
    return BoolLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position?.toJson(),
      };
}

abstract class BinaryExpression extends Expression {
  final Expression left;
  final Expression right;

  BinaryExpression(this.left, this.right, super.position);

  @override
  List<Object?> get props => [left, right, position];
}

enum MathOperand {
  plus("+"),
  minus("-"),
  times("*"),
  division("/");

  final String symbol;

  const MathOperand(this.symbol);
}

class BinaryMathExpression extends BinaryExpression {
  final MathOperand operand;

  BinaryMathExpression(super.left, super.right, this.operand, super.position);

  BinaryMathExpression.fromJson(Map<String, dynamic> json)
      : operand = switch (json['operand']) {
          '+' => MathOperand.plus,
          '-' => MathOperand.minus,
          '*' => MathOperand.times,
          '/' => MathOperand.division,
          _ => throw UnimplementedError(),
        },
        super(
          Expression.fromJson(json['left']),
          Expression.fromJson(json['right']),
          Position.fromJson(json['position']),
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "left": left.toJson(),
      "right": right.toJson(),
      "operand": operand.symbol,
    };
  }

  @override
  List<Object?> get props => [left, operand, right, position];
}

enum LogicOperand {
  and("&&"),
  or("||"),
  not("!"),
  equal("=="),
  lessThan("<"),
  lessThanOrEqual("<="),
  greaterThan(">"),
  greaterThanOrEqual(">="),
  notEqual("!=");

  final String symbol;

  const LogicOperand(this.symbol);
}

class BinaryLogicExpression extends BinaryExpression {
  final LogicOperand operand;

  BinaryLogicExpression(super.left, super.right, this.operand, super.position);

  BinaryLogicExpression.fromJson(Map<String, dynamic> json)
      : operand = switch (json['operand']) {
          '&&' => LogicOperand.and,
          '||' => LogicOperand.or,
          '!' => LogicOperand.not,
          '==' => LogicOperand.equal,
          '<' => LogicOperand.lessThan,
          '<=' => LogicOperand.lessThanOrEqual,
          '>' => LogicOperand.greaterThan,
          '>=' => LogicOperand.greaterThanOrEqual,
          '!=' => LogicOperand.notEqual,
          _ => throw UnimplementedError(),
        },
        super(
          Expression.fromJson(json['left']),
          Expression.fromJson(json['right']),
          Position.fromJson(json['position']),
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "left": left.toJson(),
      "right": right.toJson(),
      "operand": operand.symbol,
    };
  }

  @override
  List<Object?> get props => [left, operand, right, position];
}

class UnaryMathExpression extends Expression {
  final Expression value;
  final MathOperand operand;

  UnaryMathExpression(this.value, this.operand, super.position);

  UnaryMathExpression.fromJson(Map<String, dynamic> json)
      : operand = switch (json['operand']) {
          '+' => MathOperand.plus,
          '-' => MathOperand.minus,
          _ => throw UnimplementedError(),
        },
        value = Expression.fromJson(json['value']),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [value, operand, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "operand": operand.symbol,
      "position": position?.toJson(),
    };
  }
}

class UnaryLogicExpression extends Expression {
  final Expression value;
  final LogicOperand operand;

  UnaryLogicExpression(this.value, this.operand, super.position);

  UnaryLogicExpression.fromJson(Map<String, dynamic> json)
      : operand = switch (json['operand']) {
          '!' => LogicOperand.not,
          _ => throw UnimplementedError(),
        },
        value = Expression.fromJson(json['value']),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [value, operand, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "operand": operand.symbol,
      "position": position?.toJson(),
    };
  }
}


class IncrementExpression extends Expression{
 final String name;

 IncrementExpression(this.name, super.position);

 IncrementExpression.fromJson(Map<String, dynamic> json)
  : name = json['name'],
  super(Position.fromJson(json['position']));
  
  @override
  List<Object?> get props => [name, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "position": position?.toJson(),
    };
  }
}

class DecrementExpression extends Expression{
 final String name;

 DecrementExpression(this.name, super.position);

 DecrementExpression.fromJson(Map<String, dynamic> json)
  : name = json['name'],
  super(Position.fromJson(json['position']));
  
  @override
  List<Object?> get props => [name, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "position": position?.toJson(),
    };
  }
}


class VarReferenceExpression extends Expression {
  final String name;

  VarReferenceExpression(this.name, super.position);

  VarReferenceExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "position": position?.toJson(),
    };
  }
}

class ParenthesysExpression extends Expression {
  final Expression value;

  ParenthesysExpression(this.value, super.position);

  ParenthesysExpression.fromJson(Map<String, dynamic> json)
      : value = Expression.fromJson(json['value']),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "position": position?.toJson(),
    };
  }
}

class FunctionCallExpression extends Expression {
  final String name;
  final List<Expression> parameters;

  FunctionCallExpression(this.name, this.parameters, super.position);

  FunctionCallExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        parameters = List.from(json['parameters'])
            .map((e) => Expression.fromJson(e))
            .toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, parameters, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}


class IfStatement extends Statement{
  final IfBlock ifBlock;
  final List<IfBlock> elseIfBlocks;
  final IfBlock? elseBlock;

  IfStatement(
    this.ifBlock,
    this.elseIfBlocks,
    this.elseBlock,
    super.position,
  );

  IfStatement.fromJson(Map<String,dynamic> json)
     : ifBlock = IfBlock.fromJson(json ['ifBlock']),
       elseIfBlocks = List.from(json['elseifBlocks']).map((e) => IfBlock.fromJson(e)).toList(),
       elseBlock = (json['elseBlock']) != null ? IfBlock.fromJson(json['elseBlock']) : null,
       super(Position.fromJson(json['position']));
  
  @override
  List<Object?> get props => [ifBlock, elseIfBlocks, elseBlock, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "ifBlock": ifBlock.toJson(),
      "elseifBlocks": elseIfBlocks.map((e) => e.toJson()).toList(),
      "elseBlock": elseBlock?.toJson(),
      "position": position?.toJson(),
    };

  }
}

enum BlockType {ifBlock, elseIfBlock, elseBlock}

class IfBlock extends Node{
  final Expression? condition;
  final List<Statement> statements;
  final BlockType blockType;

  IfBlock(this.condition, this.statements, this.blockType, super.position);

  IfBlock.fromJson(Map<String, dynamic> json): this(
    json["condition"] != null ? Expression.fromJson(json["condition"]) : null,
    List.from(json["statements"]).map((e) => Statement.fromJson(e)).toList(),
    switch(json['blockType']) {
      "ifBlock" => BlockType.ifBlock,
      "elseIfBLock" => BlockType.elseIfBlock,
      "elseBlock" => BlockType.elseBlock,
      _ => throw UnimplementedError(json["blockType"]),
    },
    Position.fromJson(json["position"])
  );

  @override
  List<Object?> get props => [condition, statements, blockType, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "condition": condition?.toJson(),
      "statements": statements.map((e) => e.toJson()),
      "blockType": blockType.name,
      "position": position?.toJson(),
    };
  }
}

//task 4
class WhileStatement extends Statement{
  final Expression? condition;
  final List<Statement> statements;

  WhileStatement(this.condition, this.statements, super.position);
  
  WhileStatement.fromJson(Map<String, dynamic> json): this(
    json["condition"] != null ? Expression.fromJson(json["condition"]) : null,
    List.from(json["statements"]).map((e) => Statement.fromJson(e)).toList(),
    Position.fromJson(json["position"])
  );

  @override
  List<Object?> get props => [condition, statements, position];
  
  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "condition": condition?.toJson(),
      "statements": statements.map((e) => e.toJson()),
      "position": position?.toJson(),
    };
  }
}

//task 5 

abstract class InitializzationForExpression extends Expression{
   InitializzationForExpression(super.position);
}

class VarDeclaration extends InitializzationForExpression{

}

class Assigment extends InitializzationForExpression{

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

  factory ItemDefinition.fromJson(Map<String, dynamic> json) {
    return ItemDefinition(
      switch (json['varType']) {
        'variable' => VariableType.variable,
        'immutable' => VariableType.immutable,
        'constant' => VariableType.constant,
        _ => throw UnimplementedError(),
      },
      json['name'],
      switch (json['valueType']) {
        'Int' => VariableValueType.INT,
        'Double' => VariableValueType.DOUBLE,
        'String' => VariableValueType.STRING,
        'Boolean' => VariableValueType.BOOLEAN,
        'List' => VariableValueType.LIST,
        String type => VariableValueType(type),
        null => null,
        _ => throw UnimplementedError(json['valueType']),
      },
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, valueType, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'varType': varType.name,
        'name': name,
        'valueType': valueType?.typeName,
        'position': position?.toJson(),
      };
}

class ForStatement extends Statement{
  final ForCondition forCondition;
  final Block block;

  ForStatement(this.forCondition, this.block, super.position);

  ForStatement.fromJson(Map<String, dynamic> json): this(
    ForCondition.fromJson(json['forCodition']),
    Block.fromJson(json['block']),
    Position.fromJson(json["position"])
  );
  
  @override
  List<Object?> get props => [forCondition, block, position];
  
  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "forCondition": forCondition.toJson(),
      "block": block.toJson(),
      "position": position?.toJson(),
    };
  }
}

class Block extends Node{
  final List<Statement> statements;
  
  Block(this.statements, super.position);

  Block.fromJson(Map<String, dynamic> json): this(
    List.from(json["statements"]).map((e) => Statement.fromJson(e)).toList(),
    Position.fromJson(json["position"])
  );

  @override
  List<Object?> get props => [statements, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "statements": statements.map((e) => e.toJson()),
      "position": position?.toJson(),
    };
  }
}


abstract class ForCondition extends Node{
  ForCondition(super.position);
}

class StandardForCondition extends ForCondition{
  final InitializzationForExpression ife;
  final Expression e1;
  final Expression e2;

  StandardForCondition(this.ife, this.e1, this.e2, super.position);

  StandardForCondition.fromJson(Map<String, dynamic> json): this(
    InitializzationForExpression.fromJson(json['ife']),
    Expression.fromJson(json['e1']),
    Expression.fromJson(json['e2']),
    Position.fromJson(json["position"])
  );
  
  @override
  List<Object?> get props => [ife, e1, e2, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "ife": ife.toJson(),
      "e1": e1.toJson(),  
      "e2": e2.toJson(), 
      "position": position?.toJson(),
    };
  }
}

class ForEachCondition extends ForCondition{
  final ItemDefinition itemDefinition;
  final Expression expression;

  ForEachCondition(this.itemDefinition, this.expression, super.position);

  ForEachCondition.fromJson(Map<String, dynamic> json): this(
    ItemDefinition.fromJson(json['itemDefinition']),
    Expression.fromJson(json['expression']),
    Position.fromJson(json["position"])
  );
  
  @override
  List<Object?> get props => [itemDefinition, expression, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "itemDefinition": itemDefinition.toJson(),
      "expression": expression.toJson(),      
      "position": position?.toJson(),
    };
  }
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


  FunctionDefinitionStatement.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        parameters = List.from(json['parameters'])
            .map((e) => Parameter.fromJson(e))
            .toList(),
        returnType = VariableValueType.fromName(json['returnType']),
        body =
            List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, parameters, returnType, body, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "returnType": returnType?.typeName,
      "body": body.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

enum ParameterType { THIS, SUPER, TYPE }

class Parameter extends Node {
  final String name;
  final ParameterType paramType;
  final VariableValueType? valueType;

  Parameter(this.name, this.paramType, this.valueType, super.position);

  factory Parameter.fromJson(Map<String, dynamic> json) {
    return Parameter(
      json['name'],
      switch (json['paramType']) {
        'this' => ParameterType.THIS,
        'super' => ParameterType.SUPER,
        'type' => ParameterType.TYPE,
        _ => throw UnimplementedError(),
      },
      VariableValueType.fromName(json['valueType']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [name, paramType, valueType, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "paramType": paramType.name,
      "valueType": valueType?.typeName,
      "position": position?.toJson(),
    };
  }
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

  factory ClassDefinitionStatement.fromJson(Map<String, dynamic> json) {
    return ClassDefinitionStatement(
      switch (json['encapsulationType']) {
        "public" => EncapsulationType.public,
        "private" => EncapsulationType.private,
        _ => throw UnimplementedError(),
      },
      json['name'],
      json['parentName'],
      List.from(json['properties'])
          .map((e) => VariableDeclarationStatement.fromJson(e))
          .toList(),
      List.from(json['constructors'])
          .map((e) => ConstructorDefinitionStatement.fromJson(e))
          .toList(),
      List.from(json['methods'])
          .map((e) => FunctionDefinitionStatement.fromJson(e))
          .toList(),
      Position.fromJson(json['position']),
    );
  }

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

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "encapsulationType": encapsulationType.name,
      "name": name,
      "parentName": parentName,
      "properties": properties.map((e) => e.toJson()).toList(),
      "constructors": constructors.map((e) => e.toJson()).toList(),
      "methods": methods.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

class ConstructorDefinitionStatement extends Statement {
  final String className;
  final String? constructorName;
  final List<Parameter> parameters;
  final List<Expression>? thisConstructorParameters;
  final List<Statement> body;

  ConstructorDefinitionStatement(
    this.className,
    this.constructorName,
    this.parameters,
    this.thisConstructorParameters,
    this.body,
    super.position,
  );

  factory ConstructorDefinitionStatement.fromJson(Map<String, dynamic> json) {
    return ConstructorDefinitionStatement(
      json['className'],
      json['constructorName'],
      List.from(json['parameters']).map((e) => Parameter.fromJson(e)).toList(),
      List.from(json['thisConstructorParameters'])
          .map((e) => Expression.fromJson(e))
          .toList(),
      List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [
        className,
        constructorName,
        parameters,
        thisConstructorParameters,
        body,
        position,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "className": className,
      "constructorName": constructorName,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "thisConstructorParameters":
          thisConstructorParameters?.map((e) => e.toJson()).toList(),
      "body": body.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}
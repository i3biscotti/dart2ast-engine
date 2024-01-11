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
  final Position position;

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
  List<Object?> get props => [lines];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'lines': lines.map((e) => e.toJson()).toList(),
        'position': position.toJson(),
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
  final Expression value;

  VariableDeclarationStatement(
    this.varType,
    this.name,
    this.valueType,
    this.value,
    super.position,
  );

  factory VariableDeclarationStatement.fromJson(Map<String, dynamic> json) {
    return VariableDeclarationStatement(
      switch (json['varType']) {
        'variable' => VariableType.variable,
        'immutable' => VariableType.immutable,
        'constant' => VariableType.constant,
        _ => throw UnimplementedError(),
      },
      json['name'],
      switch (json['valueType']) {
        'Int' => VariableValueType.Int,
        'Double' => VariableValueType.Double,
        'String' => VariableValueType.String,
        'Boolean' => VariableValueType.Boolean,
        'Reference' => VariableValueType.Reference,
        null => null,
        _ => throw UnimplementedError(json['valueType']),
      },
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, valueType, value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'varType': varType.name,
        'name': name,
        'valueType': valueType?.name,
        'value': value.toJson(),
        'position': position.toJson(),
      };
}

enum VariableType { variable, immutable, constant }

enum VariableValueType { Int, Double, String, Boolean, Reference, Void }

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
  List<Object?> get props => [name, value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'name': name,
        'value': value.toJson(),
        'position': position.toJson(),
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
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

class DecLit extends Expression {
  final String value;
  DecLit(this.value, super.position);

  factory DecLit.fromJson(Map<String, dynamic> json) {
    return DecLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

class StringLit extends Expression {
  final String value;
  StringLit(this.value, super.position);

  factory StringLit.fromJson(Map<String, dynamic> json) {
    return StringLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

class BoolLit extends Expression {
  final String value;
  BoolLit(this.value, super.position);

  @override
  List<Object?> get props => [value];

  factory BoolLit.fromJson(Map<String, dynamic> json) {
    return BoolLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

abstract class BinaryExpression extends Expression {
  final Expression left;
  final Expression right;

  BinaryExpression(this.left, this.right, super.position);

  @override
  List<Object?> get props => [left, right];
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
  List<Object?> get props => [left, operand, right];
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
  List<Object?> get props => [left, operand, right];
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
  List<Object?> get props => [value, operand];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "operand": operand.symbol,
      "position": position.toJson(),
    };
  }
}

class UnaryLogicExpression extends Node {
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
  List<Object?> get props => [value, operand];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "operand": operand.symbol,
      "position": position.toJson(),
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
  List<Object?> get props => [name];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "position": position.toJson(),
    };
  }
}

class ParenthesysExpression extends Node {
  final Expression value;

  ParenthesysExpression(this.value, super.position);

  ParenthesysExpression.fromJson(Map<String, dynamic> json)
      : value = Expression.fromJson(json['value']),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "position": position.toJson(),
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
        returnType = switch (json['returnType']) {
          'Int' => VariableValueType.Int,
          'Double' => VariableValueType.Double,
          'String' => VariableValueType.String,
          'Boolean' => VariableValueType.Boolean,
          'Reference' => VariableValueType.Reference,
          'void' => VariableValueType.Void,
          null => null,
          _ => throw UnimplementedError(json['returnType']),
        },
        body =
            List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, parameters, returnType, body];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "returnType": returnType?.name,
      "body": body.map((e) => e.toJson()).toList(),
      "position": position.toJson(),
    };
  }
}

class Parameter extends Node {
  final String name;
  final VariableValueType? valueType;

  Parameter(this.name, this.valueType, super.position);

  Parameter.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        valueType = switch (json['type']) {
          'Int' => VariableValueType.Int,
          'Double' => VariableValueType.Double,
          'String' => VariableValueType.String,
          'Boolean' => VariableValueType.Boolean,
          'Reference' => VariableValueType.Reference,
          _ => throw UnimplementedError(json['type']),
        },
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, valueType];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "valueType": valueType?.name,
      "position": position.toJson(),
    };
  }
}

class ClassDefinitionStatement extends Statement {
  final String name;
  final List<Statement> body;

  ClassDefinitionStatement(this.name, this.body, super.position);

  ClassDefinitionStatement.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        body =
            List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, body];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "body": body.map((e) => e.toJson()).toList(),
      "position": position.toJson(),
    };
  }
}

class ConstructorDefinitionStatement extends Statement {
  final String name;
  final List<ConstructorParameter> parameters;
  final List<Statement> body;

  ConstructorDefinitionStatement(
    this.name,
    this.parameters,
    this.body,
    super.position,
  );

  ConstructorDefinitionStatement.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        parameters = List.from(json['parameters'])
            .map((e) => ConstructorParameter.fromJson(e))
            .toList(),
        body =
            List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, parameters, body];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "body": body.map((e) => e.toJson()).toList(),
      "position": position.toJson(),
    };
  }
}

class ConstructorParameter extends Node {
  final String name;

  ConstructorParameter(this.name, super.position);

  ConstructorParameter.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "position": position.toJson(),
    };
  }
}

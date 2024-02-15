import 'package:dart2ast_engine/ast/deserialization.dart';
import 'package:dart2ast_engine/dart2ast.dart';

abstract class Expression extends Node {
  Expression(super.position);
}

class IntLit extends Expression {
  final String value;
  IntLit(this.value, super.position);

  factory IntLit.fromJson(Map<String, dynamic> json) {
    return IntLit(json['value'], deserializeToAst<Position>(json['position']));
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
    return DecLit(json['value'], deserializeToAst<Position>(json['position']));
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
    return StringLit(
        json['value'], deserializeToAst<Position>(json['position']));
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
    return BoolLit(json['value'], deserializeToAst<Position>(json['position']));
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position?.toJson(),
      };
}

class ListLiteralExpression extends Expression {
  final List value;
  ListLiteralExpression(this.value, super.position);

  ListLiteralExpression.fromJson(Map<String, dynamic> json)
      : value = List.from(json['value'])
            .map((e) => deserializeToAst<Position>(e))
            .toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value.map((e) => e.toJson()).toList(),
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

  static MathOperand fromJson(Map<String, dynamic> json) {
    return switch (json['enumValue']) {
      'plus' => MathOperand.plus,
      'minus' => MathOperand.minus,
      'times' => MathOperand.times,
      'division' => MathOperand.division,
      _ => throw UnimplementedError(),
    };
  }
}

class BinaryMathExpression extends BinaryExpression {
  final MathOperand operand;

  BinaryMathExpression(super.left, super.right, this.operand, super.position);

  BinaryMathExpression.fromJson(Map<String, dynamic> json)
      : operand = MathOperand.fromJson(json['operand']),
        super(
          deserializeToAst<Expression>(json['left']),
          deserializeToAst<Expression>(json['right']),
          deserializeToAst<Position>(json['position']),
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

  static LogicOperand fromJson(Map<String, dynamic> json) {
    return switch (json['enumValue']) {
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
    };
  }
}

class BinaryLogicExpression extends BinaryExpression {
  final LogicOperand operand;

  BinaryLogicExpression(super.left, super.right, this.operand, super.position);

  BinaryLogicExpression.fromJson(Map<String, dynamic> json)
      : operand = LogicOperand.fromJson(json['operand']),
        super(
          deserializeToAst<Expression>(json['left']),
          deserializeToAst<Expression>(json['right']),
          deserializeToAst<Position>(json['position']),
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
      : operand = MathOperand.fromJson(json['operand']),
        value = deserializeToAst<Expression>(json['value']),
        super(deserializeToAst<Position>(json['position']));

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
      : operand = LogicOperand.fromJson(json['operand']),
        value = deserializeToAst<Expression>(json['value']),
        super(deserializeToAst<Position>(json['position']));

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

class PreIncrementExpression extends Expression {
  final String name;

  PreIncrementExpression(this.name, super.position);

  PreIncrementExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(deserializeToAst<Position>(json['position']));

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

class PostIncrementExpression extends Expression {
  final String name;

  PostIncrementExpression(this.name, super.position);

  PostIncrementExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(deserializeToAst<Position>(json['position']));

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

class PreDecrementExpression extends Expression {
  final String name;

  PreDecrementExpression(this.name, super.position);

  PreDecrementExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(deserializeToAst<Position>(json['position']));

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

class PostDecrementExpression extends Expression {
  final String name;

  PostDecrementExpression(this.name, super.position);

  PostDecrementExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(deserializeToAst<Position>(json['position']));

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

class InputExpression extends Expression {

  InputExpression(super.position);

  InputExpression.fromJson(Map<String, dynamic> json)
     : super(deserializeToAst<Position>(json['position']));
  
  @override
  List<Object?> get props => [position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "position": position?.toJson(),
    };
  }
}

class OutputExpression extends Expression {
  final Expression value;

  OutputExpression(this.value, super.position);

  OutputExpression.fromJson(Map<String, dynamic> json)
      : value = deserializeToAst<Expression>(json['value']),
        super(deserializeToAst<Position>(json['position']));

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

class VarReferenceExpression extends Expression {
  final String name;

  VarReferenceExpression(this.name, super.position);

  VarReferenceExpression.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super(deserializeToAst<Position>(json['position']));

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
      : value = deserializeToAst<Expression>(json['value']),
        super(deserializeToAst<Position>(json['position']));

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
            .map((e) => deserializeToAst<Expression>(e))
            .toList(),
        super(deserializeToAst<Position>(json['position']));

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

class ObjectPropertyReferenceExpression extends Expression {
  final String objectName;
  final String propertyName;

  ObjectPropertyReferenceExpression(
    this.objectName,
    this.propertyName,
    super.position,
  );

  factory ObjectPropertyReferenceExpression.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObjectPropertyReferenceExpression(
      json['objectName'],
      json['propertyName'],
      deserializeToAst<Position>(json['position']),
    );
  }

  @override
  List<Object?> get props => [objectName, propertyName, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "objectName": objectName,
      "propertyName": propertyName,
      "position": position?.toJson(),
    };
  }
}

class ObjectMethodCallExpression extends Expression {
  final String objectName;
  final String methodName;
  final List<Expression> parameters;

  ObjectMethodCallExpression(
    this.objectName,
    this.methodName,
    this.parameters,
    super.position,
  );

  factory ObjectMethodCallExpression.fromJson(Map<String, dynamic> json) {
    return ObjectMethodCallExpression(
      json['objectName'],
      json['methodName'],
      List.from(json['parameters'])
          .map((e) => deserializeToAst<Expression>(e))
          .toList(),
      deserializeToAst<Position>(json['position']),
    );
  }

  @override
  List<Object?> get props => [objectName, methodName, parameters, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "objectName": objectName,
      "methodName": methodName,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

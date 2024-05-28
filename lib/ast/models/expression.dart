import 'package:dart2ast_engine/dart2ast.dart';

abstract class Expression extends Node {
  Expression(super.position);
}

class IntLit extends Expression {
  final String value;

  IntLit(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class DecLit extends Expression {
  final String value;

  DecLit(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class StringLit extends Expression {
  final String value;

  StringLit(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class BoolLit extends Expression {
  final String value;

  BoolLit(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class ListLiteralExpression extends Expression {
  final List<Expression> value;

  ListLiteralExpression(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
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

  @override
  List<Object?> get props => [left, operand, right, position];
}

enum LogicOperand {
  and("&&"),
  or("||"),
  not("!");

  final String symbol;

  const LogicOperand(this.symbol);

  static LogicOperand fromJson(Map<String, dynamic> json) {
    return switch (json['enumValue']) {
      '&&' => LogicOperand.and,
      '||' => LogicOperand.or,
      '!' => LogicOperand.not,
      _ => throw UnimplementedError(),
    };
  }
}

class BinaryLogicExpression extends BinaryExpression {
  final LogicOperand operand;

  BinaryLogicExpression(super.left, super.right, this.operand, super.position);

  @override
  List<Object?> get props => [left, operand, right, position];
}

enum ComparisonOperand {
  equal("=="),
  lessThan("<"),
  lessThanOrEqual("<="),
  greaterThan(">"),
  greaterThanOrEqual(">="),
  notEqual("!=");

  final String symbol;

  const ComparisonOperand(this.symbol);
}

class BinaryComparisonExpression extends BinaryExpression {
  final ComparisonOperand operand;

  BinaryComparisonExpression(
    super.left,
    super.right,
    this.operand,
    super.position,
  );

  @override
  List<Object?> get props => [left, operand, right, position];
}

class UnaryMathExpression extends Expression {
  final Expression value;
  final MathOperand operand;

  UnaryMathExpression(this.value, this.operand, super.position);

  @override
  List<Object?> get props => [value, operand, position];
}

class UnaryLogicExpression extends Expression {
  final Expression value;
  final LogicOperand operand;

  UnaryLogicExpression(this.value, this.operand, super.position);

  @override
  List<Object?> get props => [value, operand, position];
}

class PreIncrementExpression extends Expression {
  final String name;

  PreIncrementExpression(this.name, super.position);

  @override
  List<Object?> get props => [name, position];
}

class PostIncrementExpression extends Expression {
  final String name;

  PostIncrementExpression(this.name, super.position);

  @override
  List<Object?> get props => [name, position];
}

class PreDecrementExpression extends Expression {
  final String name;

  PreDecrementExpression(this.name, super.position);

  @override
  List<Object?> get props => [name, position];
}

class PostDecrementExpression extends Expression {
  final String name;

  PostDecrementExpression(this.name, super.position);

  @override
  List<Object?> get props => [name, position];
}

class InputExpression extends Expression {
  InputExpression(super.position);

  @override
  List<Object?> get props => [position];
}

class OutputExpression extends Expression {
  final Expression value;

  OutputExpression(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class VarReferenceExpression extends Expression {
  final String name;

  VarReferenceExpression(this.name, super.position);

  @override
  List<Object?> get props => [name, position];
}

class ParenthesisExpression extends Expression {
  final Expression value;

  ParenthesisExpression(this.value, super.position);

  @override
  List<Object?> get props => [value, position];
}

class FunctionCallExpression extends Expression {
  final String name;
  final List<Expression> parameters;

  FunctionCallExpression(this.name, this.parameters, super.position);

  @override
  List<Object?> get props => [name, parameters, position];
}

class ObjectPropertyReferenceExpression extends Expression {
  final String objectName;
  final String propertyName;

  ObjectPropertyReferenceExpression(
    this.objectName,
    this.propertyName,
    super.position,
  );

  @override
  List<Object?> get props => [objectName, propertyName, position];
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

  @override
  List<Object?> get props => [objectName, methodName, parameters, position];
}

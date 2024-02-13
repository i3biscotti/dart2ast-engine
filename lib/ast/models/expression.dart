import 'package:dart2ast_engine/dart2ast.dart';

abstract class Expression extends Node {
  Expression(super.position);

  factory Expression.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'IntLit' => IntLit.fromJson(json),
      'DecLit' => DecLit.fromJson(json),
      'StringLit' => StringLit.fromJson(json),
      'BoolLit' => BoolLit.fromJson(json),
      'ListLit' => ListLiteralExpression.fromJson(json),
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

class ListLiteralExpression extends Expression {
  final List value;
  ListLiteralExpression(this.value, super.position);

  ListLiteralExpression.fromJson(Map<String, dynamic> json)
    : value = List.from(json['value']).map((e) => Expression.fromJson(e)).toList(),
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


class PreIncrementExpression extends Expression{
 final String name;

  PreIncrementExpression(this.name, super.position);

  PreIncrementExpression.fromJson(Map<String, dynamic> json)
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


class PostIncrementExpression extends Expression {
  final String name;

  PostIncrementExpression(this.name, super.position);

  PostIncrementExpression.fromJson(Map<String, dynamic> json)
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


class PreDecrementExpression extends Expression{
  final String name;

  PreDecrementExpression(this.name, super.position);

  PreDecrementExpression.fromJson(Map<String, dynamic> json)
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


class PostDecrementExpression extends Expression {
  final String name;

  PostDecrementExpression(this.name, super.position);

  PostDecrementExpression.fromJson(Map<String, dynamic> json)
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
      List.from(json['parameters']).map((e) => Expression.fromJson(e)).toList(),
      Position.fromJson(json['position']),
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

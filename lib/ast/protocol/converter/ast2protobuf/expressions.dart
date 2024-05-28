
import 'package:dart2ast_engine/ast/models.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;

extension IntLiteralExpression2Protobuf on ast.IntLit {
  protocol.IntLit toProtobuf() {
    return protocol.IntLit(
      value: value,
      position: position?.toProtobuf()
    );
  }
}

extension DoubleLiteralExpression2Protobuf on ast.DecLit {
    protocol.DecLit toProtobuf() {
    return protocol.DecLit(
      value: value,
      position: position?.toProtobuf()
    );
  }
}

extension BoolLiteralExpression2Protobuf on ast.BoolLit {
  protocol.BoolLit toProtobuf() {
    return protocol.BoolLit(
      value: value,
      position: position?.toProtobuf()
    );
  }
}

extension StringLiteralExpression2Protobuf on ast.StringLit {
  protocol.StringLit toProtobuf() {
    return protocol.StringLit(
      value: value,
      position: position?.toProtobuf()
    );
  }
}

extension ListLiteralExpression2Protobuf on ast.ListLiteralExpression {
  protocol.ListLiteralExpression toProtobuf() {
    return protocol.ListLiteralExpression(
      value: value.map((e) => protocol.convertExpressionToProtobuf(e)).toList(),
      position: position?.toProtobuf());
  }
}

extension MathOperand2Protobuf on ast.MathOperand {
  protocol.MathOperand toProtobuf() {
    return switch (this) {
      ast.MathOperand.plus => protocol.MathOperand.PLUS,
      ast.MathOperand.minus => protocol.MathOperand.MINUS,
      ast.MathOperand.times => protocol.MathOperand.TIMES,
      ast.MathOperand.division => protocol.MathOperand.DIVISION,
    };
  }
}

extension LogicOperand2Protobuf on ast.LogicOperand {
  protocol.LogicOperand toProtobuf() {

    return switch (this) {
      ast.LogicOperand.and => protocol.LogicOperand.AND,
      ast.LogicOperand.or => protocol.LogicOperand.OR,
      ast.LogicOperand.not => protocol.LogicOperand.NOT,
    };
  }
}

extension ComparisonOperand2Protobuf on ast.ComparisonOperand {
  protocol.ComparisonOperand toProtobuf() {
    return switch (this) {
      ast.ComparisonOperand.equal => protocol.ComparisonOperand.EQUAL,
      ast.ComparisonOperand.notEqual => protocol.ComparisonOperand.NOT_EQUAL,
      ast.ComparisonOperand.lessThan => protocol.ComparisonOperand.LESS_THAN,
      ast.ComparisonOperand.greaterThan => protocol.ComparisonOperand.GREATER_THAN,
      ast.ComparisonOperand.lessThanOrEqual => protocol.ComparisonOperand.LESS_THAN_OR_EQUAL,
      ast.ComparisonOperand.greaterThanOrEqual => protocol.ComparisonOperand.GREATER_THAN_OR_EQUAL,
    };
  }
}

extension BinaryMathExpression2Protobuf on ast.BinaryMathExpression {
  protocol.BinaryMathExpression toProtobuf() {
    return protocol.BinaryMathExpression(
      left: protocol.convertExpressionToProtobuf(left),
      right: protocol.convertExpressionToProtobuf(right),
      operand: operand.toProtobuf(),
      position: position?.toProtobuf()
    );
  }
}

extension BinaryLogicExpression2Protobuf on ast.BinaryLogicExpression {
  protocol.BinaryLogicExpression toProtobuf() {
    return protocol.BinaryLogicExpression(      
      left: protocol.convertExpressionToProtobuf(left),
      right: protocol.convertExpressionToProtobuf(right),
      operand: operand.toProtobuf(),
      position: position?.toProtobuf()
    );
  }
}

extension BinaryComparisonExpression2Protobuf on ast.BinaryComparisonExpression {
  protocol.BinaryComparisonExpression toProtobuf() {
    return protocol.BinaryComparisonExpression(
      left: protocol.convertExpressionToProtobuf(left),
      right: protocol.convertExpressionToProtobuf(right),
      operand: operand.toProtobuf(),
      position: position?.toProtobuf()
    );
  }
}

extension UnaryMathExpression2Protobuf on ast.UnaryMathExpression {
  protocol.UnaryMathExpression toProtobuf() {
    return protocol.UnaryMathExpression(
      value: protocol.convertExpressionToProtobuf(value),
      operand: operand.toProtobuf(),
      position: position?.toProtobuf()
    );
  }
}

extension UnaryLogicExpression2Protobuf on ast.UnaryLogicExpression {
    protocol.UnaryLogicExpression toProtobuf() {
    return protocol.UnaryLogicExpression(
      value: protocol.convertExpressionToProtobuf(value),
      operand: operand.toProtobuf(),
      position: position?.toProtobuf()
    );
  }
}

extension PreIncrementExpression2Protobuf on ast.PreIncrementExpression {
    protocol.PreIncrementExpression toProtobuf() {
    return protocol.PreIncrementExpression(
      name: name,
      position: position?.toProtobuf()
    );   
  }
}

extension PostIncrementExpression2Protobuf on ast.PostIncrementExpression {
    protocol.PostIncrementExpression toProtobuf() {
    return protocol.PostIncrementExpression(
      name: name,
      position: position?.toProtobuf()
    );   
  }
}

extension PreDecrementExpression2Protobuf on ast.PreDecrementExpression {
    protocol.PreDecrementExpression toProtobuf() {
    return protocol.PreDecrementExpression(
      name: name,
      position: position?.toProtobuf()
    );   
  }
}

extension PostDecrementExpression2Protobuf on ast.PostDecrementExpression {
    protocol.PostDecrementExpression toProtobuf() {
    return protocol.PostDecrementExpression(
      name: name,
      position: position?.toProtobuf()
    );   
  }
}

extension InputExpression2Protobuf on ast.InputExpression {
  protocol.InputExpression toProtobuf() {
    return protocol.InputExpression(
      position: position?.toProtobuf()
    );
  }
}

extension OutputExpression2Protobuf on ast.OutputExpression {
    protocol.OutputExpression toProtobuf() {
    return protocol.OutputExpression(
      value: protocol.convertExpressionToProtobuf(value),
      position: position?.toProtobuf()
    );
  }
}

extension ParenthesysExpression2Protobuf on ast.ParenthesisExpression {
    protocol.ParenthesisExpression toProtobuf() {
    return protocol.ParenthesisExpression(
      value: protocol.convertExpressionToProtobuf(value),
      position: position?.toProtobuf()
    );
  }
}

extension VarReferenceExpression2Protobuf on ast.VarReferenceExpression {
    protocol.VarReferenceExpression toProtobuf() {
    return protocol.VarReferenceExpression(
      name: name,
      position: position?.toProtobuf()
    );   
  }
}

extension FunctionCallExpression2Protobuf on ast.FunctionCallExpression {
    protocol.FunctionCallExpression toProtobuf() {
    return protocol.FunctionCallExpression(
      name: name,
      parameters: parameters.map((e) => protocol.convertExpressionToProtobuf(e)).toList(),
      position: position?.toProtobuf()
    );

  }
}

extension ObjectMethodCallExpression2Protobuf on ast.ObjectMethodCallExpression {
    protocol.ObjectMethodCallExpression toProtobuf() {
    return protocol.ObjectMethodCallExpression(
      objectName: objectName,
      methodName: methodName,
      parameters: parameters.map((e) => protocol.convertExpressionToProtobuf(e)).toList(),
      position: position?.toProtobuf()
    );
  }
}

extension ObjectPropertyReferenceExpression2Protobuf on ast.ObjectPropertyReferenceExpression {
    protocol.ObjectPropertyReferenceExpression toProtobuf() {
    return protocol.ObjectPropertyReferenceExpression(
      objectName: objectName,
      propertyName: propertyName,
      position: position?.toProtobuf()
    );
  }
}


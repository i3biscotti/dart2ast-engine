import 'package:dart2ast_engine/ast.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'base.dart';

extension ProtocolBoolLiteralDeserializer on protocol.BoolLit {
  ast.BoolLit toAst(){
    final _value = this.value;
    final _position = this.position.toAst(hasPosition());

    return ast.BoolLit(_value, _position);
  }
}

extension ProtocolStringLiteralDeserializer on protocol.StringLit {
  ast.StringLit toAst(){
    final _value = this.value;
    final _position = this.position.toAst(hasPosition());

    return ast.StringLit(_value, _position);
  }
}

extension ProtocolIntLiteralDeserializer on protocol.IntLit {
  ast.IntLit toAst(){
    final _value = this.value;
    final _position = this.position.toAst(hasPosition());

    return ast.IntLit(_value, _position);
  }
}

extension ProtocolDecimalLiteralDeserializer on protocol.DecLit {
  ast.DecLit toAst(){
    final _value = this.value;
    final _position = this.position.toAst(hasPosition());

    return ast.DecLit(_value, _position);
  }
}

extension ProtocolVariableReferenceExpressionDeserializer on protocol.VarReferenceExpression {
  ast.VarReferenceExpression toAst(){
    final _name = this.name;
    final _position = this.position.toAst(hasPosition());

    return ast.VarReferenceExpression(_name, _position);
  }
}

extension ProtocolBinaryMathExpressionDeserializer on protocol.BinaryMathExpression {
  ast.BinaryMathExpression toAst(){
    final _left = protocol.convertExpressionFromProtobuf(this.left);
    final _right = protocol.convertExpressionFromProtobuf(this.right);
    final _operand = this.operand.toAst();
    final _position = this.position.toAst(hasPosition());

    return ast.BinaryMathExpression(_left, _right, _operand, _position);
  }
}

extension on protocol.MathOperand{
  ast.MathOperand toAst(){
    if (this == protocol.MathOperand.PLUS){
      return ast.MathOperand.plus;
    } else if (this == protocol.MathOperand.MINUS){
      return ast.MathOperand.minus;
    } else if (this == protocol.MathOperand.TIMES){
      return ast.MathOperand.times;
    } else if (this == protocol.MathOperand.DIVISION){
      return ast.MathOperand.division;
    } else {
      throw UnsupportedError("${this.runtimeType} not supported");
    }
  }

}

extension ProtocolBinaryComparisonExpressionDeserializer on protocol.BinaryComparisonExpression {
  ast.BinaryComparisonExpression toAst(){
    final _left = protocol.convertExpressionFromProtobuf(this.left);
    final _right = protocol.convertExpressionFromProtobuf(this.right);
    final _operand = this.operand.toAst();
    final _position = this.position.toAst(hasPosition());

    return ast.BinaryComparisonExpression(_left, _right, _operand, _position);
  }
}

extension ProtocolBinaryLogicExpressionDeserializer on protocol.BinaryLogicExpression {
  ast.BinaryLogicExpression toAst(){
    final _left = protocol.convertExpressionFromProtobuf(this.left);
    final _right = protocol.convertExpressionFromProtobuf(this.right);
    final _operand = this.operand.toAst();
    final _position = this.position.toAst(hasPosition());

    return ast.BinaryLogicExpression(_left, _right, _operand, _position);
  }
}

extension on protocol.LogicOperand{
  ast.LogicOperand toAst(){
    if (this == protocol.LogicOperand.AND){
      return ast.LogicOperand.and;
    } else if (this == protocol.LogicOperand.OR){
      return ast.LogicOperand.or;
    } else {
      throw UnsupportedError("${this.runtimeType} not supported");
    }
  }

}

extension on protocol.ComparisonOperand{
  ast.ComparisonOperand toAst(){
    if (this == protocol.ComparisonOperand.EQUAL){
      return ast.ComparisonOperand.equal;
    } else if (this == protocol.ComparisonOperand.NOT_EQUAL){
      return ast.ComparisonOperand.notEqual;
    } else if (this == protocol.ComparisonOperand.GREATER_THAN){
      return ast.ComparisonOperand.greaterThan;
    } else if (this == protocol.ComparisonOperand.GREATER_THAN_OR_EQUAL){
      return ast.ComparisonOperand.greaterThanOrEqual;
    } else if (this == protocol.ComparisonOperand.LESS_THAN){
      return ast.ComparisonOperand.lessThan;
    } else if (this == protocol.ComparisonOperand.LESS_THAN_OR_EQUAL){
      return ast.ComparisonOperand.lessThanOrEqual;
    } else {
      throw UnsupportedError("${this.runtimeType} not supported");
    }
  }
}

extension ProtocolUnaryLogicExpressionDeserializer on protocol.UnaryLogicExpression {
  ast.UnaryLogicExpression toAst(){
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _operand = this.operand.toAst();
    final _position = this.position.toAst(hasPosition());

    return ast.UnaryLogicExpression(_value, _operand, _position);
  }
}

extension ProtocolParenthesisExpressionDeserializer on protocol.ParenthesisExpression {
  ast.ParenthesisExpression toAst(){
    final _expression = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst(hasPosition());

    return ast.ParenthesisExpression(_expression, _position);
  }
}

extension ProtocolUnaryMathExpressionDeserializer on protocol.UnaryMathExpression {
  ast.UnaryMathExpression toAst(){
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _operand = this.operand.toAst();
    final _position = this.position.toAst(hasPosition());

    return ast.UnaryMathExpression(_value, _operand, _position);
  }
}

extension ProtocolPostIncrementExpressionDeserializer on protocol.PostIncrementExpression {
  ast.PostIncrementExpression toAst(){
    final _name = this.name;
    final _position = this.position.toAst(hasPosition());

    return ast.PostIncrementExpression(_name, _position);
  }
}

extension ProtocolPreIncrementExpressionDeserializer on protocol.PreIncrementExpression {
  ast.PreIncrementExpression toAst(){
    final _name = this.name;
    final _position = this.position.toAst(hasPosition());

    return ast.PreIncrementExpression(_name, _position);
  }
}

extension ProtocolPreDecrementExpressionDeserializer on protocol.PreDecrementExpression {
  ast.PreDecrementExpression toAst(){
    final _name = this.name;
    final _position = this.position.toAst(hasPosition());

    return ast.PreDecrementExpression(_name, _position);
  }
}

extension ProtocolPostDecrementExpressionDeserializer on protocol.PostDecrementExpression {
  ast.PostDecrementExpression toAst(){
    final _name = this.name;
    final _position = this.position.toAst(hasPosition());

    return ast.PostDecrementExpression(_name, _position);
  }
}

extension ProtocolListLiteralDeserializer on protocol.ListLiteralExpression {
  ast.ListLiteralExpression toAst(){
    final _values = this.value.map(protocol.convertExpressionFromProtobuf).toList();
    final _position = this.position.toAst(hasPosition());

    return ast.ListLiteralExpression(_values, _position);
  }
}

extension ProtocolInputExpressionDeserializer on protocol.InputExpression {
  ast.InputExpression toAst(){
    final _position = this.position.toAst(hasPosition());

    return ast.InputExpression(_position);
  }
}

extension ProtocolOutputExpressionDeserializer on protocol.OutputExpression {
  ast.OutputExpression toAst(){
    final _value = protocol.convertExpressionFromProtobuf(this.value);
    final _position = this.position.toAst(hasPosition());

    return ast.OutputExpression(_value, _position);
  }
}

extension ProtocolFunctionCallExpressionDeserializer on protocol.FunctionCallExpression {
  ast.FunctionCallExpression toAst(){
    final _name = this.name;
    final _arguments = this.parameters.map(protocol.convertExpressionFromProtobuf).toList();
    final _position = this.position.toAst(hasPosition());

    return ast.FunctionCallExpression(_name, _arguments, _position);
  }
}

extension ProtocolMethodCallExpressionDeserializer on protocol.ObjectMethodCallExpression {
  ast.ObjectMethodCallExpression toAst(){
    final _objectName = this.objectName;
    final _methodName = this.methodName;
    final _arguments = this.parameters.map(protocol.convertExpressionFromProtobuf).toList();
    final _position = this.position.toAst(hasPosition());

    return ast.ObjectMethodCallExpression(_objectName, _methodName, _arguments, _position);
  }
}

extension ProtocolObjectPropertyReferenceExpressionDeserializer on protocol.ObjectPropertyReferenceExpression {
  ast.ObjectPropertyReferenceExpression toAst(){
    final _objectName = this.objectName;
    final _propertyName = this.propertyName;
    final _position = this.position.toAst(hasPosition());

    return ast.ObjectPropertyReferenceExpression(_objectName, _propertyName, _position);
  }
}

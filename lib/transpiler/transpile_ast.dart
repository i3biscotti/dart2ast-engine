import '../ast.dart';

extension ExpressionTranspilerExtension on Expression {
  String Transpile() {
    return switch (this) {
      IntLit intlit => intlit.value,
      DecLit declit => declit.value,
      BoolLit boollit => boollit.value,
      StringLit stringlit => stringlit.value,
      BinaryLogicExpression expression => expression.Transpile(),
      BinaryMathExpression expression => expression.Transpile(),
      UnaryLogicExpression expression => expression.Transpile(),
      UnaryMathExpression expression => expression.Transpile(),
      ParenthesysExpression expression => expression.Transpile(),
      VarReferenceExpression expression => expression.Transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension StatementTranspilerExtension on Statement {
  String Transpile() {
    return switch (this) {
      VariableDeclarationStatement st => st.Transpile(),
      AssignmentStatement st => st.Transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatementTranspilerExtension
    on VariableDeclarationStatement {
  String Transpile() {
    String variableTypeTranspiler = switch (varType) {
      VariableType.variable => 'var',
      VariableType.immutable => 'final',
      VariableType.constant => 'const',
    };
    String variableValueTypeTranspiler = switch (valueType) {
      VariableValueType.Int => 'int',
      VariableValueType.Double => 'double',
      VariableValueType.String => 'String',
      VariableValueType.Boolean => 'bool',
      VariableValueType.Reference => '',
      null => '',
      _ => throw UnimplementedError()
    };
    String valueTranspiler = value.Transpile();
    String statement =
        '$variableTypeTranspiler $variableValueTypeTranspiler $name = $valueTranspiler;';
    return statement;
  }
}

extension AssignmentStatementTranspilerExtension on AssignmentStatement {
  String Transpile() {
    String valueTranspiler = value.Transpile();
    String statement = '$name = $valueTranspiler;';
    return statement;
  }
}

extension NodeTranspilerExtension on Node {
  String Transpile() {
    return switch (this) {
      ProgramFile df => df.Transpile(),
      Statement st => st.Transpile(),
      Expression ex => ex.Transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension DartFileTranspilerExtension on ProgramFile {
  String Transpile() {
    final linesTranspiled = lines.map((l) => l.Transpile()).join('\n');
    return linesTranspiled;
  }
}

extension BinaryMathExpressionTranspilerExtension on BinaryMathExpression {
  String Transpile() {
    String leftTranspiler = left.Transpile();
    String rightTranspiler = right.Transpile();
    String operatorTranspiler = switch (operand) {
      MathOperand.plus => '+',
      MathOperand.minus => '-',
      MathOperand.times => '*',
      MathOperand.division => '/',
    };
    String expression = '$leftTranspiler $operatorTranspiler $rightTranspiler';
    return expression;
  }
}

extension BinaryLogicExpressionTranspilerExtension on BinaryLogicExpression {
  String Transpile() {
    String leftTranspiler = left.Transpile();
    String rightTranspiler = right.Transpile();
    String operatorTranspiler = switch (operand) {
      LogicOperand.and => '&&',
      LogicOperand.or => '||',
      LogicOperand.equal => '==',
      LogicOperand.notEqual => '!=',
      LogicOperand.not => '!',
      LogicOperand.lessThan => '<',
      LogicOperand.greaterThan => '>',
      LogicOperand.lessThanOrEqual => '<=',
      LogicOperand.greaterThanOrEqual => '>=',
    };
    String expression = '$leftTranspiler $operatorTranspiler $rightTranspiler';
    return expression;
  }
}

extension UnaryMathExpressionTranspilerExtension on UnaryMathExpression {
  String Transpile() {
    String valueTranspiler = value.Transpile();
    String operatorTranspiler = switch (operand) {
      MathOperand.minus => '-',
      MathOperand.plus => '',
      _ => throw UnsupportedError('${operand.symbol} is not supported'),
    };

    String expression = '$operatorTranspiler$valueTranspiler';
    return expression;
  }
}

extension VariableReferenceTranspilerExtension on VarReferenceExpression {
  String Transpile() {
    return name;
  }
}

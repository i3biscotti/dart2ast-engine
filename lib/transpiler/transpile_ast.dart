import 'package:indent/indent.dart';

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
      ExpressionDefinitionStatement st => st.Transpile(),
      ClassDefinitionStatement st => st.Transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatementTranspilerExtension
    on VariableDeclarationStatement {
  String Transpile() {
    String statement = '';

    String variableTypeTranspiler = switch (varType) {
      VariableType.variable => 'var',
      VariableType.immutable => 'final',
      VariableType.constant => 'const',
    };

    statement += variableTypeTranspiler;

    if (valueType != null) {
      statement += ' ${valueType!.typeName}';
    }

    String valueTranspiler = value.Transpile();
    statement += ' $name = $valueTranspiler;';

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

extension ExpressionDefinitionStatementTranspilerExtension on ExpressionDefinitionStatement {
  String Transpile() {
    String valueTranspiler = value.Transpile();
    String expression = '$valueTranspiler';
    return expression;
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
    String operatorTranspiler = operand.symbol;
    String expression = '$leftTranspiler $operatorTranspiler $rightTranspiler';
    return expression;
  }
}

extension BinaryLogicExpressionTranspilerExtension on BinaryLogicExpression {
  String Transpile() {
    String leftTranspiler = left.Transpile();
    String rightTranspiler = right.Transpile();
    String operatorTranspiler = operand.symbol;
    String expression = '$leftTranspiler $operatorTranspiler $rightTranspiler';
    return expression;
  }
}

extension UnaryLogicExpressionTranspilerExtension on UnaryLogicExpression{
 String Transpile() {
  String valueTranspiler = value.Transpile();
  String operatorTranspiler = operand.symbol;

  String expression = '$operatorTranspiler$valueTranspiler';
  return expression;
 }
}

extension UnaryMathExpressionTranspilerExtension on UnaryMathExpression {
  String Transpile() {
    String valueTranspiler = value.Transpile();
    String operatorTranspiler = operand.symbol;

    String expression = '$operatorTranspiler$valueTranspiler';
    return expression;
  }
}

extension ParenthesysExpressionTranspilerExtension on ParenthesysExpression{
  String Transpile() {
    String par_open = '(';
    String valueTranspiler = value.Transpile();
    String par_close = ')';
    String expression = '$par_open$valueTranspiler$par_close';
    return expression;
  }
}

extension VariableReferenceTranspilerExtension on VarReferenceExpression {
  String Transpile() {
    return name;
  }
}

extension FunctionDefinitionTranspilerExtension on FunctionDefinitionStatement {
  String Transpile() {
    String? returnTypeTranspiler = returnType?.typeName;
    String nameTranspiler = name;
    String parametersTranspiler =
        parameters.map((p) => p.Transpile()).toList().join(', ');

    String bodyTranspiler = body.map((e) => e.Transpile()).join('\n');
    String functionDeclaration = """
    $returnTypeTranspiler $nameTranspiler($parametersTranspiler) { 
      $bodyTranspiler 
    }
    """
        .unindent();

    return functionDeclaration;
  }
}

extension ParameterTranspilerExtension on Parameter {
  String Transpile() {
    return switch (paramType) {
      ParameterType.SUPER => 'super.$name',
      ParameterType.THIS => 'this.$name',
      ParameterType.TYPE => '${valueType?.typeName} $name',
    };
  }
}

extension ClassDefinitionTranspilerExtension on ClassDefinitionStatement {
  String Transpile() {
    String nameTranspiler = name;
    String propertiesTranspiled =
        properties.map((e) => e.Transpile()).join('\n');
    String constructorsTranspiled =
        constructors.map((e) => e.Transpile()).join('\n');
    String methodsTranspiled = methods.map((e) => e.Transpile()).join('\n');
    String classDeclaration = """
    class $nameTranspiler { 
      $propertiesTranspiled

      $constructorsTranspiled

      $methodsTranspiled 
    }
    """
        .unindent();

    return classDeclaration;
  }
}

extension ConstructorDefinitionTranspilerExtension
    on ConstructorDefinitionStatement {
  String Transpile() {
    String constructorNameTranspiled = className;
    if (constructorName != null) {
      constructorNameTranspiled += '.$constructorName';
    }

    String parametersTranspiler =
        parameters.map((p) => p.Transpile()).toList().join(', ');

    String bodyTranspiled = ";";
    if (body.isNotEmpty) {
      bodyTranspiled = """{
        ${body.map((e) => e.Transpile()).join('\n')}
      }"""
          .unindent();
    }

    String constructorDeclaration = """
    $constructorNameTranspiled($parametersTranspiler) $bodyTranspiled
    """
        .unindent();

    return constructorDeclaration;
  }
}

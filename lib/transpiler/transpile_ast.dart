import 'package:indent/indent.dart';

import '../ast.dart';

String generateIdentationSpace(int space) => "  " * space;

extension NodeTranspilerExtension on Node {
  String transpile() {
    return switch (this) {
      ProgramFile df => df.transpile(),
      Statement st => st.transpile(),
      Expression ex => ex.transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension ExpressionTranspilerExtension on Expression {
  String transpile() {
    return switch (this) {
      IntLit intlit => intlit.value,
      DecLit declit => declit.value,
      BoolLit boollit => boollit.value,
      StringLit stringlit => stringlit.value,
      BinaryLogicExpression expression => expression.transpile(),
      BinaryMathExpression expression => expression.transpile(),
      UnaryLogicExpression expression => expression.transpile(),
      UnaryMathExpression expression => expression.transpile(),
      ParenthesysExpression expression => expression.transpile(),
      VarReferenceExpression expression => expression.transpile(),
      FunctionCallExpression expression => expression.transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension StatementTranspilerExtension on Statement {
  String transpile([int depth = 0]) {
    return switch (this) {
      VariableDeclarationStatement st => st.transpile(depth),
      AssignmentStatement st => st.transpile(depth),
      ExpressionDefinitionStatement st => st.transpile(depth),
      IfStatement st => st.transpile(depth),
      ClassDefinitionStatement st => st.transpile(depth),
      FunctionDefinitionStatement st => st.transpile(depth),
      ReturnStatement st => st.transpile(depth),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatementTranspilerExtension
    on VariableDeclarationStatement {
  String transpile([int depth = 0]) {
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

    String valueTranspiler = value.transpile();
    statement = generateIdentationSpace(depth) +
        statement +
        ' $name = $valueTranspiler;';

    return statement;
  }
}

extension AssignmentStatementTranspilerExtension on AssignmentStatement {
  String transpile([int depth = 0]) {
    String valueTranspiler = value.transpile();
    String statement =
        '${generateIdentationSpace(depth)}$name = $valueTranspiler;';
    return statement;
  }
}

extension ExpressionDefinitionStatementTranspilerExtension
    on ExpressionDefinitionStatement {
  String transpile([int depth = 0]) {
    String valueTranspiler = value.transpile();
    String expression = '$valueTranspiler';
    return expression;
  }
}

extension ReturnStatementTranspilerExtension on ReturnStatement {
  String transpile([int depth = 0]) {
    String valueTranspiler = value.transpile();
    String expression =
        '${generateIdentationSpace(depth)}return $valueTranspiler;';
    return expression;
  }
}

extension FunctionCallExpressionTranspilerExtension on FunctionCallExpression {
  String transpile() {
    String nameTranspiler = name;
    String parametersTranspiler =
        parameters.map((p) => p.transpile()).toList().join(', ');
    String expression = '$nameTranspiler($parametersTranspiler)';
    return expression;
  }
}

extension DartFileTranspilerExtension on ProgramFile {
  String transpile() {
    final linesTranspiled = lines.map((l) => l.transpile()).join('\n');
    return linesTranspiled;
  }
}

extension BinaryMathExpressionTranspilerExtension on BinaryMathExpression {
  String transpile() {
    String leftTranspiler = left.transpile();
    String rightTranspiler = right.transpile();
    String operatorTranspiler = operand.symbol;
    String expression = '$leftTranspiler $operatorTranspiler $rightTranspiler';
    return expression;
  }
}

extension BinaryLogicExpressionTranspilerExtension on BinaryLogicExpression {
  String transpile() {
    String leftTranspiler = left.transpile();
    String rightTranspiler = right.transpile();
    String operatorTranspiler = operand.symbol;
    String expression = '$leftTranspiler $operatorTranspiler $rightTranspiler';
    return expression;
  }
}

extension UnaryLogicExpressionTranspilerExtension on UnaryLogicExpression {
  String transpile() {
    String valueTranspiler = value.transpile();
    String operatorTranspiler = operand.symbol;

    String expression = '$operatorTranspiler$valueTranspiler';
    return expression;
  }
}

extension UnaryMathExpressionTranspilerExtension on UnaryMathExpression {
  String transpile() {
    String valueTranspiler = value.transpile();
    String operatorTranspiler = operand.symbol;

    String expression = '$operatorTranspiler$valueTranspiler';
    return expression;
  }
}

extension ParenthesysExpressionTranspilerExtension on ParenthesysExpression {
  String transpile() {
    String par_open = '(';
    String valueTranspiler = value.transpile();
    String par_close = ')';
    String expression = '$par_open$valueTranspiler$par_close';
    return expression;
  }
}

extension VariableReferenceTranspilerExtension on VarReferenceExpression {
  String transpile() {
    return name;
  }
}


//task 3
extension IfStatementTranspilerExtension on IfStatement{
  String transpile([int depth = 0]) {
    String ifBlockTranspiler = ifBlock.transpile(depth);
    String elseIfBlocksTranspiler = elseIfBlocks.map((b) => b.transpile(depth)).toList().join(', ');
    String? elseBlockTranspiler = elseBlock?.transpile(depth);
    String statement = '$ifBlockTranspiler$elseIfBlocksTranspiler$elseBlockTranspiler';
    return statement;
  }
}

extension IfBlockTranspilerExtension on IfBlock{
  String transpile([int depth = 0]) {
     String? conditionTranspiled = condition?.transpile();
     String statementsTranspiled = statements.map((s) => s.transpile(depth+1)).join('\n');

     String ifblockstatement = """
                               |if ($conditionTranspiled) {
                               |$statementsTranspiled
                               |}
                               """ .trimMargin();
     String elseifblockstatement = """
                                   |else if ($conditionTranspiled) {
                                   |$statementsTranspiled
                                   |}
                                   """ .trimMargin();
     String elsestatement = """
                            |else {
                            |$statementsTranspiled
                            |}
                            """ .trimMargin();
     return switch(blockType){
      BlockType.ifBlock => ifblockstatement,
      BlockType.elseIfBlock => elseifblockstatement,
      BlockType.elseBlock => elsestatement,
     } ;   
  }
}


extension FunctionDefinitionTranspilerExtension on FunctionDefinitionStatement {
  String transpile([int depth = 0]) {
    String? returnTypeTranspiler = returnType?.typeName;
    String nameTranspiler = name;
    String parametersTranspiler =
        parameters.map((p) => p.transpile()).toList().join(', ');
    String bodyTranspiled = "{}";

    if (body.isNotEmpty) {
      var bodyStatementsTranspiled =
          body.map((e) => e.transpile(depth + 1)).join('\n');
      bodyTranspiled = """
                |{
                |$bodyStatementsTranspiled
                |${generateIdentationSpace(depth)}}
                """
          .trimMargin();
    }

    final functionDeclaration =
        "${generateIdentationSpace(depth)}$returnTypeTranspiler $nameTranspiler($parametersTranspiler) $bodyTranspiled";

    return functionDeclaration;
  }
}

extension ParameterTranspilerExtension on Parameter {
  String transpile() {
    return switch (paramType) {
      ParameterType.SUPER => 'super.$name',
      ParameterType.THIS => 'this.$name',
      ParameterType.TYPE => '${valueType?.typeName} $name',
    };
  }
}

extension ClassDefinitionTranspilerExtension on ClassDefinitionStatement {
  String transpile([int depth = 0]) {
    String nameTranspiler = name;

    String propertiesTranspiled =
        properties.map((e) => e.transpile(depth + 1)).join('\n');
    String constructorsTranspiled =
        constructors.map((e) => e.transpile(depth + 1)).join('\n');
    String methodsTranspiled =
        methods.map((e) => e.transpile(depth + 1)).join('\n');

    String classDeclaration = """
    |${generateIdentationSpace(depth)}class $nameTranspiler { 
    |$propertiesTranspiled
    |$constructorsTranspiled
    |$methodsTranspiled 
    |${generateIdentationSpace(depth)}}
    """
        .trimMargin();

    return classDeclaration;
  }
}

extension ConstructorDefinitionTranspilerExtension
    on ConstructorDefinitionStatement {
  String transpile([int depth = 0]) {
    String constructorNameTranspiled = className;
    if (constructorName != null) {
      constructorNameTranspiled += '.$constructorName';
    }

    String parametersTranspiler =
        parameters.map((p) => p.transpile()).toList().join(', ');

    String bodyTranspiled = ";";
    if (body.isNotEmpty) {
      bodyTranspiled = """
      |{
      |${body.map((e) => e.transpile(depth + 1)).join('\n')}
      |${generateIdentationSpace(depth)}}"""
          .unindent();
    }

    String constructorDeclaration = """
    |${generateIdentationSpace(depth)}$constructorNameTranspiled($parametersTranspiler) $bodyTranspiled
    """
        .trimMargin();

    return constructorDeclaration;
  }
}

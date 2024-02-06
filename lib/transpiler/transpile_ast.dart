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
      WhileStatement st => st.transpile(depth),
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
    var statement = generateIdentationSpace(depth);

    if (varType != VariableType.type) {
      String variableTypeTranspiled = switch (varType) {
        VariableType.variable => 'var',
        VariableType.immutable => 'final',
        VariableType.constant => 'const',
        _ => throw UnimplementedError()
      };

      statement += variableTypeTranspiled + " ";
    }

    if (valueType != null) {
      statement += '${valueType!.typeName} ';
    }

    statement += "$name";

    if (value != null) {
      statement += ' = ${value!.transpile()};';
    } else {
      statement += ';';
    }

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
                               |${generateIdentationSpace(depth)}}
                               """ .trimMargin();
     String elseifblockstatement = """
                                   |${generateIdentationSpace(depth)}else if ($conditionTranspiled) {
                                   |$statementsTranspiled
                                   |${generateIdentationSpace(depth)}}
                                   """ .trimMargin();
     String elsestatement = """
                            |${generateIdentationSpace(depth)}else {
                            |$statementsTranspiled
                            |${generateIdentationSpace(depth)}}
                            """ .trimMargin();
     return switch(blockType){
      BlockType.ifBlock => ifblockstatement,
      BlockType.elseIfBlock => elseifblockstatement,
      BlockType.elseBlock => elsestatement,
     } ;   
  }
}

extension WhileStatementTranspilerExtension on WhileStatement{
  String transpile([int depth = 0]){
    String? conditionTranspiled = condition?.transpile();
    String statementsTranspiled = statements.map((s) => s.transpile(depth+1)).join('\n');
    String whilestatement = """
                            |while ($conditionTranspiled) {
                            |${generateIdentationSpace(depth+1)}$statementsTranspiled}
                            """  .trimMargin();
    return whilestatement;
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
    String className = name;

    if (encapsulationType == EncapsulationType.private) {
      className = '_$name';
    }

    String classSign = "class $className";

    if (parentName != null && parentName!.isNotEmpty) {
      classSign += " extends $parentName";
    }

    String classBody = "";

    if (properties.isNotEmpty) {
      String propertiesTranspiled =
          properties.map((e) => e.transpile(depth + 1)).join('\n');
      classBody += propertiesTranspiled + "\n";
    }

    if (constructors.isNotEmpty) {
      String constructorsTranspiled =
          constructors.map((e) => e.transpile(depth + 1)).join('\n');
      classBody += constructorsTranspiled + "\n";
    }

    if (methods.isNotEmpty) {
      String methodsTranspiled =
          methods.map((e) => e.transpile(depth + 1)).join('\n');
      classBody += methodsTranspiled;
    }

    if (classBody.isEmpty) {
      classBody = "{}";
    } else {
      classBody = "{\n$classBody${generateIdentationSpace(depth)}}\n";
    }

    final classDeclaration =
        "${generateIdentationSpace(depth)}$classSign $classBody";

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

    var thisConstructor = "";

    if (thisConstructorParameters != null) {
      thisConstructor =
          this.thisConstructorParameters!.map((e) => e.transpile()).join(', ');
      thisConstructor = ' : this($thisConstructor)';
    }

    String bodyTranspiled = ";";
    if (body.isNotEmpty) {
      bodyTranspiled = """
      | {
      |${body.map((e) => e.transpile(depth + 1)).join('\n')}
      |${generateIdentationSpace(depth)}}"""
          .trimMargin();
    }

    String constructorDeclaration = generateIdentationSpace(depth) +
        constructorNameTranspiled +
        "($parametersTranspiler)" +
        thisConstructor +
        bodyTranspiled;
    ;

    return constructorDeclaration;
  }
}

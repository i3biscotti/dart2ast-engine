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
      IntLit e => e.value,
      DecLit e => e.value,
      BoolLit e => e.value,
      StringLit e => e.value,
      ListLiteralExpression e => e.transpile(),
      BinaryLogicExpression e => e.transpile(),
      BinaryMathExpression e => e.transpile(),
      UnaryLogicExpression e => e.transpile(),
      UnaryMathExpression e => e.transpile(),
      PreIncrementExpression e => e.transpile(),
      PostIncrementExpression e => e.transpile(),
      PreDecrementExpression e => e.transpile(),
      PostDecrementExpression e => e.transpile(),
      InputExpression e => e.transpile(),
      OutputExpression e => e.transpile(),
      ParenthesysExpression e => e.transpile(),
      VarReferenceExpression e => e.transpile(),
      FunctionCallExpression e => e.transpile(),
      ObjectMethodCallExpression e => e.transpile(),
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
      IfDefinitionStatement st => st.transpile(depth),
      WhileDefinitionStatement st => st.transpile(depth),
      ForDefinitionStatement st => st.transpile(depth),
      ExpressionForStatement st => st.value.transpile(),
      ClassDefinitionStatement st => st.transpile(depth),
      FunctionDefinitionStatement st => st.transpile(depth),
      ReturnStatement st => st.transpile(depth),
      ObjectPropertyAssignmentStatement st => st.transpile(depth),
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
    String expression = '$valueTranspiler;';
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

extension ListLiteralExpressionTranspilerExtension on ListLiteralExpression {
  String transpile() {
    String expessionTranspiled =
        value.map((e) => e.value.transpile()).toList().join(',');
    String listliteralexp = '[$expessionTranspiled]';
    return listliteralexp;
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

extension PreIncrementExpressionTranspilerExtension on PreIncrementExpression {
  String transpile() {
    String expression = '++$name';
    return expression;
  }
}

extension PostIncrementExpressionTranspilerExtension
    on PostIncrementExpression {
  String transpile() {
    String expression = '$name++';
    return expression;
  }
}

extension PreDecrementExpressionTranspilerExtension on PreDecrementExpression {
  String transpile() {
    String expression = '--$name';
    return expression;
  }
}

extension PostDecrementExpressionTranspilerExtension
    on PostDecrementExpression {
  String transpile() {
    String expression = '$name--';
    return expression;
  }
}

extension InputExpressionTranspilerExtension on InputExpression {
  String transpile() {
    String par_open = '(';
    String par_close = ')';
    String expression = 'stdin.readLineSync$par_open$par_close';
    return expression;
  }
}

extension OutputExpressionTranspilerEsxtension on OutputExpression {
  String transpile() {
    String par_open = '(';
    String valueTranspiler = value.transpile();
    String par_close = ')';
    String expression = 'print$par_open$valueTranspiler$par_close';
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

extension IfStatementTranspilerExtension on IfDefinitionStatement {
  String transpile([int depth = 0]) {
    String ifBlockTranspiler = ifBlock.transpile(depth);
    String elseIfBlocksTranspiler =
        elseIfBlocks.map((b) => b.transpile(depth)).toList().join(', ');
    String? elseBlockTranspiler = elseBlock?.transpile(depth);
    String statement =
        '$ifBlockTranspiler$elseIfBlocksTranspiler$elseBlockTranspiler';
    return statement;
  }
}

extension IfBlockTranspilerExtension on IfBlock {
  String transpile([int depth = 0]) {
    String? conditionTranspiled = condition?.transpile();
    String statementsTranspiled =
        statements.map((s) => s.transpile(depth + 1)).join('\n');

    String ifblockstatement = """
                               |if ($conditionTranspiled) {
                               |$statementsTranspiled
                               |${generateIdentationSpace(depth)}}
                               """
        .trimMargin();
    String elseifblockstatement = """
                                   |${generateIdentationSpace(depth)}else if ($conditionTranspiled) {
                                   |$statementsTranspiled
                                   |${generateIdentationSpace(depth)}}
                                   """
        .trimMargin();
    String elsestatement = """
                            |${generateIdentationSpace(depth)}else {
                            |$statementsTranspiled
                            |${generateIdentationSpace(depth)}}
                            """
        .trimMargin();
    return switch (blockType) {
      BlockType.ifBlock => ifblockstatement,
      BlockType.elseIfBlock => elseifblockstatement,
      BlockType.elseBlock => elsestatement,
    };
  }
}

extension WhileStatementTranspilerExtension on WhileDefinitionStatement {
  String transpile([int depth = 0]) {
    String? conditionTranspiled = condition?.transpile();
    String statementsTranspiled =
        statements.map((s) => s.transpile(depth + 1)).join('\n');
    String whilestatement = """
                            |while ($conditionTranspiled) {
                            |${generateIdentationSpace(depth + 1)}$statementsTranspiled}
                            """
        .trimMargin();
    return whilestatement;
  }
}

// task 5

extension ForInitOrIncrementStatementTranspilerExtension
    on ForInitOrIncrementStatement {
  String transpile() {
    return switch (this) {
      VarDeclarationForStatement st => st.transpile(),
      AssignmentForStatement st => st.transpile(),
      ExpressionForStatement st => st.transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension VarDeclarationForStatementTranspilerExtension
    on VarDeclarationForStatement {
  String transpile() {
    var statement = '';

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
    statement += ' = ${value.transpile()}';
    return statement;
  }
}

extension AssigmentForStatementTranspilerExtension on AssignmentForStatement {
  String transpile() {
    String valueTranspiled = value.transpile();
    String statement = '$name = $valueTranspiled';
    return statement;
  }
}

extension ExpressionForStatementTranspilerExtension on ExpressionForStatement {
  String transpile() {
    String valueTranspiled = value.transpile();
    String expression = '$valueTranspiled';
    return expression;
  }
}

extension ItemDefinitionTranspileExtension on ItemDefinition {
  String transpile() {
    String varTypeTranspiled = switch (varType) {
      VariableType.variable => 'var',
      VariableType.immutable => 'final',
      VariableType.constant => 'const',
      VariableType.type => valueType!.typeName,
    };

    String itemdef = '$varTypeTranspiled $name';

    return itemdef;
  }
}

extension ForDefinitionStatementTranspilerExtension on ForDefinitionStatement {
  String transpile([int depth = 0]) {
    String forConditionTranspiled = forCondition.transpile();
    String statementsTranspiled =
        statements.map((s) => s.transpile(depth + 1)).join('\n');
    String forstatement = """
                          |for ($forConditionTranspiled) {
                          |${generateIdentationSpace(depth + 1)}$statementsTranspiled
                          |}
                           """
        .trimMargin();
    return forstatement;
  }
}

extension ForConditionTranspilerExtension on ForCondition {
  String transpile() {
    return switch (this) {
      StandardForCondition e => e.transpile(),
      ForEachCondition e => e.transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension StandardForConditionTranspilerExtension on StandardForCondition {
  String transpile() {
    String initStatement = this.initStatement.transpile();
    String controlExpression = this.controlExpression.transpile();
    String incrementStatement = this.incrementStatement.transpile();
    String stdforcond =
        '$initStatement; $controlExpression; $incrementStatement';
    return stdforcond;
  }
}

extension ForEachConditionTranspilerExtension on ForEachCondition {
  String transpile() {
    String item = itemDefinition.transpile();
    String expression = this.expression.transpile();
    String fecond = '$item in $expression';
    return fecond;
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

extension ObjectMethodCallExpressionTranspilerExtension
    on ObjectMethodCallExpression {
  String transpile() {
    String objectNameTranspiler = objectName;
    String methodNameTranspiler = methodName;
    String parametersTranspiler =
        parameters.map((p) => p.transpile()).toList().join(', ');
    String expression =
        '$objectNameTranspiler.$methodNameTranspiler($parametersTranspiler)';
    return expression;
  }
}

extension ObjectPropertyReferenceTranspilerExtension
    on ObjectPropertyAssignmentStatement {
  String transpile([int depth = 0]) {
    String objectNameTranspiler = objectName;
    String propertyNameTranspiler = propertyName;
    String value = this.value.transpile();

    String statement = generateIdentationSpace(depth) +
        '$objectNameTranspiler.$propertyNameTranspiler = $value;';

    return statement;
  }
}

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/ast.dart';
import '../antlr.dart';

extension TokenExtension on Token {
  startPoint() => Point(line!, charPositionInLine);

  endPoint() => Point(line!, charPositionInLine + text!.length);
}

extension ParserRuleContextExtension on ParserRuleContext {
  Position? toPosition(bool considerPosition) {
    return considerPosition
        ? Position(start!.startPoint(), stop!.endPoint())
        : null;
  }
}

extension DartScriptConverterExtension on DartFileContext {
  ProgramFile toAst([bool considerPosition = false]) {
    final astLines = <Statement>[];

    for (final statement in statements()) {
      astLines.add(statement.toAst(considerPosition));
    }

    return ProgramFile(astLines, toPosition(considerPosition));
  }
}

extension StatementConverterExtension on StatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      VarDeclarationStatementContext st => st.toAst(considerPosition),
      FinalDeclarationStatementContext st => st.toAst(considerPosition),
      ConstDeclarationStatementContext st => st.toAst(considerPosition),
      AssigmentStatementContext st => st.toAst(considerPosition),
      ExpressionDefinitionStatementContext st => st.toAst(considerPosition),
      FunctionDefinitionStatementContext st => st.toAst(considerPosition),
      ClassDefinitionStatementContext st => st.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

VariableValueType? _Antlr4ToAstValueType(TypeContext? type) => switch (type) {
      IntTypeContext _ => VariableValueType.INT,
      DoubleTypeContext _ => VariableValueType.DOUBLE,
      BoolTypeContext _ => VariableValueType.BOOLEAN,
      StringTypeContext _ => VariableValueType.STRING,
      CustomTypeContext type => VariableValueType(type.name!.text!),
      null => null,
      _ => throw UnimplementedError()
    };

extension VarDeclarationStatementConverterExtension
    on VarDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.variable,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension FinalDeclarationStatementConverterExtension
    on FinalDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.immutable,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ConstDeclarationStatementConverterExtension
    on ConstDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.constant,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension AssignmentStatementConverterExtension on AssigmentStatementContext {
  AssignmentStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);

    return AssignmentStatement(
      name,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ExpressionDefinitionStatementConverterExtension on ExpressionDefinitionStatementContext{
  ExpressionDefinitionStatement toAst(bool considerPosition) {
    final value = this.expression()!.toAst(considerPosition);

    return ExpressionDefinitionStatement(
      value,
      toPosition(considerPosition),
    );
  }
}

extension ExpressionSatementConverterExtension on ExpressionContext {
  Expression toAst(bool considerPosition) {
    return switch (this) {
      IntLiteralExpressionContext _ =>
        IntLit(text, toPosition(considerPosition)),
      DoubleLiteralExpressionContext _ =>
        DecLit(text, toPosition(considerPosition)),
      BoolLiteralExpressionContext _ =>
        BoolLit(text, toPosition(considerPosition)),
      StringLiteralExpressionContext _ =>
        StringLit(text, toPosition(considerPosition)),
      BinaryMathExpressionContext e => e.toAst(considerPosition),
      BinaryLogicExpressionContext e => e.toAst(considerPosition),
      UnaryMathExpressionContext e => e.toAst(considerPosition),
      UnaryLogicNegationExpressionContext e => e.toAst(considerPosition),
      ParenthesysExpressionContext e => e.toAst(considerPosition),
      VarReferenceExpressionContext e => e.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension BinaryMathExpressionConverterExtension
    on BinaryMathExpressionContext {
  BinaryMathExpression toAst(bool considerPosition) {
    final left = this.left!.toAst(considerPosition);
    final right = this.right!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '+' => MathOperand.plus,
      '-' => MathOperand.minus,
      '*' => MathOperand.times,
      '/' => MathOperand.division,
      _ => throw UnimplementedError()
    };

    return BinaryMathExpression(
      left,
      right,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension BinaryLogicExpressionConverterExtension
    on BinaryLogicExpressionContext {
  BinaryLogicExpression toAst(bool considerPosition) {
    final left = this.left!.toAst(considerPosition);
    final right = this.right!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '&&' => LogicOperand.and,
      '||' => LogicOperand.or,
      '==' => LogicOperand.equal,
      '!=' => LogicOperand.notEqual,
      '!' => LogicOperand.not,
      '<' => LogicOperand.lessThan,
      '>' => LogicOperand.greaterThan,
      '<=' => LogicOperand.lessThanOrEqual,
      '>=' => LogicOperand.greaterThanOrEqual,
      _ => throw UnimplementedError()
    };

    return BinaryLogicExpression(
      left,
      right,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension UnaryMathExpressionConverterExtension on UnaryMathExpressionContext {
  UnaryMathExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '-' => MathOperand.minus,
      '+' => MathOperand.plus,
      _ => throw UnimplementedError()
    };

    return UnaryMathExpression(
      value,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension UnaryLogicExpressionConverterExtension
    on UnaryLogicNegationExpressionContext {
  UnaryLogicExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '!' => LogicOperand.not,
      _ => throw UnimplementedError()
    };

    return UnaryLogicExpression(
      value,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension ParenthesysExpressionConverterExtension
    on ParenthesysExpressionContext {
  ParenthesysExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    return ParenthesysExpression(
      value,
      toPosition(considerPosition),
    );
  }
}

extension VarReferenceExpressionConverterExtension
    on VarReferenceExpressionContext {
  VarReferenceExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return VarReferenceExpression(
      name,
      toPosition(considerPosition),
    );
  }
}

extension FunctionDefinitionStatementConverterExtension
    on FunctionDefinitionStatementContext {
  FunctionDefinitionStatement toAst(bool considerPosition) {
    final fn = this.functionDefinition();

    final type = switch (fn?.returnType) {
      IntTypeContext _ => VariableValueType.INT,
      DoubleTypeContext _ => VariableValueType.DOUBLE,
      BoolTypeContext _ => VariableValueType.BOOLEAN,
      StringTypeContext _ => VariableValueType.STRING,
      VoidTypeContext _ => VariableValueType.VOID,
      CustomTypeContext t => VariableValueType(t.name!.text!),
      _ => throw UnimplementedError()
    };

    final name = fn?.name?.text!;
    final parameters =
        (fn?.parameters() ?? []).map((e) => e.toAst(considerPosition)).toList();

    final statements = (fn?.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    return FunctionDefinitionStatement(
      name!,
      parameters,
      type,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension ParameterConverterExtension on ParameterContext {
  Parameter toAst(bool considerPosition) {
    VariableValueType? valueType = null;
    late final ParameterType paramType;

    if (this.type() != null) {
      paramType = ParameterType.TYPE;

      valueType = switch (this.type()) {
        IntTypeContext _ => VariableValueType.INT,
        DoubleTypeContext _ => VariableValueType.DOUBLE,
        BoolTypeContext _ => VariableValueType.BOOLEAN,
        StringTypeContext _ => VariableValueType.STRING,
        CustomTypeContext t => VariableValueType(t.name!.text!),
        _ => throw UnimplementedError()
      };
    } else if (this.THIS() != null) {
      paramType = ParameterType.THIS;
    } else {
      throw UnimplementedError();
    }

    final name = this.ID()!.text!;

    return Parameter(
      name,
      paramType,
      valueType,
      toPosition(considerPosition),
    );
  }
}

extension ClassDefinitionStatementConverterExtension
    on ClassDefinitionStatementContext {
  ClassDefinitionStatement toAst(bool considerPosition) {
    final cls = this.classDefinition();

    final className = cls?.name?.text;
    final statements = (cls?.classStatements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    final properties =
        statements.whereType<VariableDeclarationStatement>().toList();
    final methods =
        statements.whereType<FunctionDefinitionStatement>().toList();
    final constructors =
        statements.whereType<ConstructorDefinitionStatement>().toList();

    return ClassDefinitionStatement(
      className!,
      properties,
      constructors,
      methods,
      toPosition(considerPosition),
    );
  }
}

extension ClassStatementConverterExtension on ClassStatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      ClassVarDeclarationStatementContext st => st.toAst(considerPosition),
      ClassImmutableVarDeclarationStatementContext st =>
        st.toAst(considerPosition),
      ClassConstructorDeclarationStatementContext st =>
        st.toAst(considerPosition),
      ClassMethodDeclarationStatementContext st => st.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension ClassVarDeclarationStatementConverterExtension
    on ClassVarDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.variable,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ClassImmutableVarDeclarationStatementConverterExtension
    on ClassImmutableVarDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.immutable,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ClassConstructorDeclarationStatementConverterExtension
    on ClassConstructorDeclarationStatementContext {
  ConstructorDefinitionStatement toAst(bool considerPosition) {
    final className = this.className!.text!;
    final contructorName = this.costructorName?.text;

    final parameters =
        this.parameters().map((e) => e.toAst(considerPosition)).toList();

    final statements = (this.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    return ConstructorDefinitionStatement(
      className,
      contructorName,
      parameters,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension ClassMethodDeclarationStatementConverterExtension
    on ClassMethodDeclarationStatementContext {
  FunctionDefinitionStatement toAst(bool considerPosition) {
    final fn = this.functionDefinition();

    final type = switch (fn?.returnType) {
      IntTypeContext _ => VariableValueType.INT,
      DoubleTypeContext _ => VariableValueType.DOUBLE,
      BoolTypeContext _ => VariableValueType.BOOLEAN,
      StringTypeContext _ => VariableValueType.STRING,
      VoidTypeContext _ => VariableValueType.VOID,
      CustomTypeContext t => VariableValueType(t.name!.text!),
      _ => throw UnimplementedError()
    };

    final name = fn?.name?.text!;
    final parameters =
        (fn?.parameters() ?? []).map((e) => e.toAst(considerPosition)).toList();

    final statements = (fn?.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    return FunctionDefinitionStatement(
      name!,
      parameters,
      type,
      statements,
      toPosition(considerPosition),
    );
  }
}

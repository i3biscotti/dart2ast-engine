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

    for (final line in lines()) {
      final statement = line.statement();
      astLines.add(statement!.toAst(considerPosition));
    }

    return ProgramFile(astLines, toPosition(considerPosition)!);
  }
}

extension StatementConverterExtension on StatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      VarDeclarationStatementContext st => st.toAst(considerPosition),
      FinalDeclarationStatementContext st => st.toAst(considerPosition),
      ConstDeclarationStatmentContext st => st.toAst(considerPosition),
      AssigmentStatementContext st => st.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

VariableValueType? _Antlr4ToAstValueType(TypeContext? type) => switch (type) {
      IntTypeContext _ => VariableValueType.Int,
      DoubleTypeContext _ => VariableValueType.Double,
      BoolTypeContext _ => VariableValueType.Boolean,
      StringTypeContext _ => VariableValueType.String,
      CustomTypeContext _ => VariableValueType.Reference,
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
      toPosition(considerPosition)!,
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
      toPosition(considerPosition)!,
    );
  }
}

extension ConstDeclarationStatementConverterExtension
    on ConstDeclarationStatmentContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.constant,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
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
      toPosition(considerPosition)!,
    );
  }
}

extension ExpressionSatementConverterExtension on ExpressionContext {
  Expression toAst(bool considerPosition) {
    return switch (this) {
      IntLiteralExpressionContext _ =>
        IntLit(text, toPosition(considerPosition)!),
      DoubleLiteralExpressionContext _ =>
        DecLit(text, toPosition(considerPosition)!),
      BoolLiteralExpressionContext _ =>
        BoolLit(text, toPosition(considerPosition)!),
      StringLiteralExpressionContext _ =>
        StringLit(text, toPosition(considerPosition)!),
      BinaryMathExpressionContext _ => toAst(considerPosition),
      BinaryLogicExpressionContext _ => toAst(considerPosition),
      UnaryMathExpressionContext _ => toAst(considerPosition),
      UnaryLogicNegationExpressionContext _ => toAst(considerPosition),
      ParenthesysExpressionContext _ => toAst(considerPosition),
      VarReferenceExpressionContext _ => toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension BinaryMathExpressionConverterExtension
    on BinaryMathExpressionContext {
  BinaryMathExpression toAst(bool considerPosition) {
    final left = this.left!.toAst(considerPosition);
    final right = this.right!.toAst(considerPosition);

    var operand = switch (this.openand?.text) {
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
      toPosition(considerPosition)!,
    );
  }
}

extension BinaryLogicExpressionConverterExtension
    on BinaryLogicExpressionContext {
  BinaryLogicExpression toAst(bool considerPosition) {
    final left = this.left!.toAst(considerPosition);
    final right = this.right!.toAst(considerPosition);

    var operand = switch (this.openand?.text) {
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
      toPosition(considerPosition)!,
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
      toPosition(considerPosition)!,
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
      toPosition(considerPosition)!,
    );
  }
}

extension ParenthesysExpressionConverterExtension
    on ParenthesysExpressionContext {
  ParenthesysExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    return ParenthesysExpression(
      value,
      toPosition(considerPosition)!,
    );
  }
}

extension VarReferenceExpressionConverterExtension
    on VarReferenceExpressionContext {
  VarReferenceExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return VarReferenceExpression(
      name,
      toPosition(considerPosition)!,
    );
  }
}

extension FunctionDefinitionStatementConverterExtension
    on FunctionDefinitionStatementContext {
  FunctionDefinitionStatement toAst(bool considerPosition) {
    final fn = this.functionDefinition();

    final type = switch (fn?.returnType) {
      IntTypeContext _ => VariableValueType.Int,
      DoubleTypeContext _ => VariableValueType.Double,
      BoolTypeContext _ => VariableValueType.Boolean,
      StringTypeContext _ => VariableValueType.String,
      CustomTypeContext _ => VariableValueType.Reference,
      VoidTypeContext _ => VariableValueType.Void,
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
      toPosition(considerPosition)!,
    );
  }
}

extension FunctionParameterConverterExtension on ParameterContext {
  Parameter toAst(bool considerPosition) {
    final type = switch (this.type()) {
      IntTypeContext _ => VariableValueType.Int,
      DoubleTypeContext _ => VariableValueType.Double,
      BoolTypeContext _ => VariableValueType.Boolean,
      StringTypeContext _ => VariableValueType.String,
      CustomTypeContext _ => VariableValueType.Reference,
      _ => throw UnimplementedError()
    };

    final name = this.ID()!.text!;

    return Parameter(name, type, toPosition(considerPosition)!);
  }
}

extension ClassDefinitionStatementConverterExtension
    on ClassDefinitionStatementContext {
  ClassDefinitionStatement toAst(bool considerPosition) {
    final cls = this.classDefinition();

    final name = cls?.name?.text;
    final statements = cls?.block()?.statements() ?? [];

    return ClassDefinitionStatement(
      name!,
      statements.map((e) => e.toAst(considerPosition)).toList(),
      toPosition(considerPosition)!,
    );
  }
}

extension ConstructorDefinitionStatementConverterExtension
    on ConstructorDefinitionStatementContext {
  ConstructorDefinitionStatement toAst(bool considerPosition) {
    final constructor = this.constructorDefinition();

    final name = constructor?.name?.text;
    final parameters = constructor?.constructorParameters() ?? [];
    final statements = constructor?.block()?.statements() ?? [];

    return ConstructorDefinitionStatement(
      name!,
      parameters.map((e) => e.toAst(considerPosition)).toList(),
      statements.map((e) => e.toAst(considerPosition)).toList(),
      toPosition(considerPosition)!,
    );
  }
}

extension ConstructorParameterConverterExtension
    on ConstructorParameterContext {
  ConstructorParameter toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return ConstructorParameter(name, toPosition(considerPosition)!);
  }
}

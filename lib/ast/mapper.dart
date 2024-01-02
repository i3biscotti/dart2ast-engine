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

extension DartScriptConverterExtension  on DartFileContext {
  DartFile toAst([bool considerPosition = false]) {
    final astLines = <Statement>[];

    for (final line in lines()) {
      final statement = line.statement();
      astLines.add(statement!.toAst(considerPosition));
    }

    return DartFile(astLines, toPosition(considerPosition)!);
  }
}

extension StatementConverterExtension  on StatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      VariableDeclarationStatementContext varDeclarationStm =>
          varDeclarationStm.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatementConverterExtension 
on VariableDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    return switch(this){
      VarDeclarationContext st => st.toAst(considerPosition),
      FinalDeclarationContext st => st.toAst(considerPosition),
      ConstDeclarationContext st => st.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

VariableValueType _Antlr4ToAstValueType(TypeContext type) => switch(type) {
  IntTypeContext _ => VariableValueType.Int,
  DoubleTypeContext _ => VariableValueType.Double,
  BoolTypeContext _ => VariableValueType.Boolean,
  StringTypeContext _ => VariableValueType.String,
  CustomTypeContext _ => VariableValueType.Reference,
  _ => throw UnimplementedError()
};

extension VarDeclarationStatementConverterExtension  on VarDeclarationContext{
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst();
    final valueType = _Antlr4ToAstValueType(this.type()!);

    return VariableDeclarationStatement(
      VariableType.variable,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );
  }
}

extension FinalDeclarationStatementConverterExtension  on FinalDeclarationContext{
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst();
    final valueType = _Antlr4ToAstValueType(this.type()!);

    return VariableDeclarationStatement(
      VariableType.immutable,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );
  }
}

extension ConstDeclarationStatementConverterExtension  on ConstDeclarationContext{
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst();
    final valueType = _Antlr4ToAstValueType(this.type()!);

    return VariableDeclarationStatement(
      VariableType.constant,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );
  }
}



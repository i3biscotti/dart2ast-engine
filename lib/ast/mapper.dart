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

extension DartScript2AstConverter on DartFileContext {
  DartFile toAst([bool considerPosition = false]) {
    final astLines = <Statement>[];

    for (final line in lines()) {
      final statement = line.statement();
      astLines.add(statement!.toAst(considerPosition));
    }

    return DartFile(astLines, toPosition(considerPosition)!);
  }
}

extension Statement2AstConverter on StatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      VariableDeclarationStatementContext varDeclarationStm =>
          varDeclarationStm.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatement2AstConverter
on VariableDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    return switch(this){
      VarDeclarationStatementContext st => st.toAst(considerPosition),
      FinalDeclarationStatementContext st => st.toAst(considerPosition),
      ConstDeclarationStatementContext st => st.toAst(considerPosition),
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

extension VarDeclarationStatement2AstConverter on VarDeclarationStatementContext{
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

extension FinalDeclarationStatement2AstConverter on FinalDeclarationStatementContext{
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

extension ConstDeclarationStatement2AstConverter on ConstDeclarationStatementContext{
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



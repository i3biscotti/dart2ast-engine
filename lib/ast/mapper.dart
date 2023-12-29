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
      astLines.add(statement?.toAst(considerPosition));
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
  
    return VariableDeclarationStatement(
      varType,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );
  }
}

extension VarDeclarationStatement2AstConverter on VarDeclarationStatementContext{
  VariableDeclarationStatement toAst(bool considerPosition){
    final name = this.ID()!.text!; 
    final value = this.expression()!.toAst();
    final valueType = switch(this.type()) {
       IntTypeContext type => VariableValueType.Int,
       DoubleTypeContext type => VariableValueType.Double,
       BoolTypeContext type => VariableValueType.Boolean,
       StringTypeContext type => VariableValueType.String,
       CustomTypeContext type => VariableValueType.Reference,
       _ => throw UnimplementedError()
      };
      
    return VariableDeclarationStatement(
      VariableType.variable,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );

  }
}

extension FinalDeclarationStatement2AstConverter on VarDeclarationStatementContext{
  VariableDeclarationStatement toAst(bool considerPosition){
    final name = this.ID()!.text!; 
    final value = this.expression()!.toAst();
    final valueType = switch(this.type()) {
       IntTypeContext type => VariableValueType.Int,
       DoubleTypeContext type => VariableValueType.Double,
       BoolTypeContext type => VariableValueType.Boolean,
       StringTypeContext type => VariableValueType.String,
       CustomTypeContext type => VariableValueType.Reference,
       _ => throw UnimplementedError()
      };
      
    return VariableDeclarationStatement(
      VariableType.immutable,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );

  }
}

extension ConstDeclarationStatement2AstConverter on VarDeclarationStatementContext{
  VariableDeclarationStatement toAst(bool considerPosition){
    final name = this.ID()!.text!; 
    final value = this.expression()!.toAst();
    final valueType = switch(this.type()) {
       IntTypeContext type => VariableValueType.Int,
       DoubleTypeContext type => VariableValueType.Double,
       BoolTypeContext type => VariableValueType.Boolean,
       StringTypeContext type => VariableValueType.String,
       CustomTypeContext type => VariableValueType.Reference,
       _ => throw UnimplementedError()
      };
      
    return VariableDeclarationStatement(
      VariableType.constant,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );

  }
}



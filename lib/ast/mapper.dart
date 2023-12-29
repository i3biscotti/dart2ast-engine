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
      VariableDeclarationStatementContext varDelcarationStm =>
        varDelcarationStm.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatement2AstConverter
    on VariableDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    /*...*/

    return VariableDeclarationStatement(
      type,
      name,
      valueType,
      value,
      toPosition(considerPosition)!,
    );
  }
}

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/dart2ast.dart';

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

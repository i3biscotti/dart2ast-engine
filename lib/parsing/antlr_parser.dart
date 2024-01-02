
import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';

import 'models.dart';

final class AntlrParserFacade {
  static AntlrParsingResult parseFromText(String text) =>
      parse(text.toStream());

  static Future<AntlrParsingResult> parseFromFile(File file) async =>
      parse(await file.toStream());

  static AntlrParsingResult parse(InputStream input) {
    final lexicalAndSyntasticErrors = <LangError>[];
    final listener = GrammarErrorListener(
      onError: (msg, point) => lexicalAndSyntasticErrors.add(
        LangError(msg, point),
      ),
    );

    final lexer = DartLexer(input);
    lexer.removeErrorListeners();
    lexer.addErrorListener(listener);

    final parser = DartParser(CommonTokenStream(lexer));
    parser.removeErrorListeners();
    parser.addErrorListener(listener);

    final antlrRoot = parser.dartFile();

    return AntlrParsingResult(antlrRoot, lexicalAndSyntasticErrors);
  }
}
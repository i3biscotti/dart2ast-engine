import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart2ast_engine/parsing.dart';

final class ParserFacade {
  static ParsingResult parseFromText(String text) => parse(text.toStream());

  static Future<ParsingResult> parseFromFile(File file) async =>
      parse(await file.toStream());

  static ParsingResult parse(InputStream input) {
    final parsingResult = AntlrParserFacade.parse(input);
    final lexicalAndSyntaticErrors = parsingResult.errors;
    final antlrRoot = parsingResult.root;
    final astRoot = antlrRoot?.toAst(true);
    final semanticErrors = astRoot?.validate() ?? [];
    final parsingErrors = [...lexicalAndSyntaticErrors, ...semanticErrors];

    return ParsingResult(astRoot, parsingErrors);
  }
}

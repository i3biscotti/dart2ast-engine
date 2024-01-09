import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/ast/models.dart';
import 'package:equatable/equatable.dart';
import 'package:antlr4/src/util/bit_set.dart';

class AntlrParsingResult with EquatableMixin {
  final DartFileContext? root;
  final List<LangError> errors;

  AntlrParsingResult(this.root, this.errors);

  bool isCorrect() => errors.isEmpty && root != null;

  @override
  List<Object?> get props => [root, errors];
}

class ParsingResult with EquatableMixin {
  final ProgramFile? root;
  final List<LangError> errors;

  ParsingResult(this.root, this.errors);

  bool isCorrect() => errors.isEmpty && root != null;

  @override
  List<Object?> get props => [root, errors];
}

class LangError with EquatableMixin {
  final String message;
  final Point position;

  LangError(this.message, this.position);

  Map<String, dynamic> toJson() => {
        "message": message,
        "position": position.toJson(),
      };

  @override
  List<Object?> get props => [message, position];
}

class GrammarErrorListener implements ErrorListener {
  final Function(String, Point)? onError;

  GrammarErrorListener({this.onError});

  @override
  void reportAmbiguity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    bool exact,
    BitSet? ambigAlts,
    ATNConfigSet configs,
  ) {
    // Ignored for now
  }

  @override
  void reportAttemptingFullContext(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    BitSet? conflictingAlts,
    ATNConfigSet configs,
  ) {
    // Ignored for now
  }

  @override
  void reportContextSensitivity(
    Parser recognizer,
    DFA dfa,
    int startIndex,
    int stopIndex,
    int prediction,
    ATNConfigSet configs,
  ) {
    // Ignored for now
  }

  @override
  void syntaxError(
      Recognizer<ATNSimulator> recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException<IntStream>? e) {
    onError?.call(msg, Point(line!, charPositionInLine));
  }
}

extension StringToStreamExtension on String {
  InputStream toStream() => InputStream.fromString(this);
}

extension FileToStreamExtension on File {
  Future<InputStream> toStream() => InputStream.fromPath(path);
}

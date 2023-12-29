import 'package:dart2ast_engine/dart2ast.dart';
import 'package:antlr4/antlr4.dart';

void main() {
  final code = """final a = 1;
  final b = "ddd";""";

  final input = InputStream.fromString(code);
  final lexer = DartLexer(input);

  final tokens = CommonTokenStream(lexer);
  final parser = DartParser(tokens);

  final root = parser.dartFile();
  print(root.text);
  for (final child in root.lines()) {
    print(child.text);
  }
}

import 'package:dart2ast_engine/parsing/parser.dart';

void main() {
  final code = """
  if( true){
    final a = 1;
  }
  """
      .trim();
  ;

  final result = ParserFacade.parseFromText(code);
  final errorsSerialized = result.errors
      .map((e) =>
          "[Ln ${e.position.line}, Col ${e.position.column}] ${e.message}")
      .toList();

  print("""
  Errors:
  ${errorsSerialized.join('\n')}
  """
      .trim());
}

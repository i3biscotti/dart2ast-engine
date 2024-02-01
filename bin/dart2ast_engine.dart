import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart2ast_engine/parsing/parser.dart';
import 'package:indent/indent.dart';

void main() {
  final code = """
  class pino{
    final a = 1;

    pino(this.a){
      var a = 1;
    }
    
    pino.algo(this.a, bool s){
      var a = 1;
    }

    int test(int c, bool d){
      var b = 2;
    }
  }
  """
      .unindent();
  ;

  final result = ParserFacade.parseFromText(code);
  if (result.errors.isNotEmpty) {
    final errorsSerialized = result.errors
        .map((e) =>
            "[Ln ${e.position.line}, Col ${e.position.column}] ${e.message}")
        .toList();

    print("""
  Errors:
  ${errorsSerialized.join('\n')}
  """
        .unindent());
  } else {
    print(result.root?.transpile().unindent());
  }
}

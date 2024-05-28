import 'dart:io';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final payload = await context.request.json();
    final ast = payload['ast'] as Map<String, dynamic>?;
    if (ast == null) {
      return Response.json(
        body: {'error': 'AST is required'},
        statusCode: HttpStatus.badRequest,
      );
    }

    // Qui va la logica per generare il codice dal AST
    final code = generateCodeFromAst(ast); // Assumi che questa funzione esista

    return Response.json(body: {'code': code});
  } catch (e) {
    return Response.json(
      body: {'error': 'Invalid request'},
      statusCode: HttpStatus.badRequest,
    );
  }
}

// Simula la generazione del codice dal AST
String generateCodeFromAst(Map<String, dynamic> ast) {
  // Implementazione fittizia
  return 'int main() { return 0; }';
}

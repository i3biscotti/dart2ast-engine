import 'dart:convert';
import 'dart:io';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final payload = await context.request.json();
    final code = payload['code'] as String?;
    if (code == null) {
      return Response.json(
        body: {'error': 'Code is required'},
        statusCode: HttpStatus.badRequest,
      );
    }

    // Qui va la logica per generare l'AST
    final ast = generateAstFromCode(code); // Assumi che questa funzione esista

    return Response.json(body: {'ast': ast});
  } catch (e) {
    return Response.json(
      body: {'error': 'Invalid request'},
      statusCode: HttpStatus.badRequest,
    );
  }
}

// Simula la generazione dell'AST
Map<String, dynamic> generateAstFromCode(String code) {
  // Implementazione fittizia
  return {
    'type': 'Function',
    'name': 'main',
    'body': {
      'type': 'ReturnStatement',
      'value': 0,
    },
  };
}

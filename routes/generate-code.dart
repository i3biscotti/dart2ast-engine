import 'dart:convert';
import 'dart:io';
import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final payload = await context.request.json();
    final astJson = payload['ast'];

    if (astJson == null) {
      return Response.json(
        body: {'error': 'AST is required'},
        statusCode: HttpStatus.badRequest,
      );
    }

    final astProtobuf = protocol.ProgramFile()
      ..mergeFromProto3Json(Map<String,dynamic>.from(astJson));

    final ast = astProtobuf.toAst();
    final code = ast.transpile();

    return Response.json(body: {'success': true, 'code': code});
  } catch (e, stacktrace) {
    print(e);
    print(stacktrace);
    return Response.json(
      body: {'error': 'Invalid request'},
      statusCode: HttpStatus.badRequest,
    );
  }
}

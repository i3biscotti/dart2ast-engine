import 'dart:convert';

import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final astText = await context.request.body();
  final astDeserialized = jsonDecode(astText);
  final ast = ProgramFile.fromJson(astDeserialized);

  final code = ast.Transpile();

  return Response(body: code);
}

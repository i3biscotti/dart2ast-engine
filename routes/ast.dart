import 'dart:convert';

import 'package:dart2ast_engine/parsing.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final code = await context.request.body();

  final result = ParserFacade.parseFromText(code);

  if (result.isCorrect()) {
    return Response(body: jsonEncode(result.root!.toJson()));
  } else {
    return Response(
      body: jsonEncode(
        {
          "errors": result.errors.map((e) => e.toJson()).toList(),
        },
      ),
    );
  }
}

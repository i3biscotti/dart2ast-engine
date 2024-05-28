import 'dart:convert';
import 'dart:io';
import 'package:dart2ast_engine/ast/protocol.dart';
import 'package:dart2ast_engine/parsing/parser.dart';
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

    final result = ParserFacade.parseFromText(code);

    if (result.errors.isNotEmpty) {
      return Response.json(
        body: {
          'success': false,
          'errors': List.from(
            result.errors.map(
              (e) => {
                'message': e.message,
                'position': e.position?.toJson(),
              },
            ),
          ),
        },
        statusCode: HttpStatus.ok,
      );
    }

    return Response.json(
      body: {
        'success': true,
        'ast': result.root!.toProtobuf().writeToJsonMap(),
      },
      statusCode: HttpStatus.ok,
    );
  } on Exception catch (e, st) {
    print("$e\n$st");

    return Response.json(
      body: {'error': 'Invalid request'},
      statusCode: HttpStatus.badRequest,
    );
  }
}

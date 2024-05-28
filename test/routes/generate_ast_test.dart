import 'dart:convert';
import 'dart:io';

import 'package:dart2ast_engine/ast/protocol/converter/ast2protobuf/base.dart';
import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import '../../routes/generate_ast.dart' as route;
import '../helpers.dart';

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  group('POST /generate-ast', () {
    test(
      'responds with a 200 and AST',
      () async {
        final context = _MockRequestContext();
        final code = await getStringResource('http/code');
        final expectedParsed = await parseResource2Ast('http/code');
        final expectedAstSerialized = expectedParsed.toProtobuf();

        when(() => context.request).thenReturn(
          Request(
            "POST",
            Uri.parse('http://localhost/generate-ast'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'code': code}),
          ),
        );

        // Act
        final response = await route.onRequest(context);

        // Assert
        final expectedResponse = jsonEncode({
          'success': true,
          'ast': expectedAstSerialized.writeToJsonMap(),
        });

        expect(response.statusCode, equals(HttpStatus.ok));
        expect(response.body(), completion(equals(expectedResponse)));
      },
    );

    test(
      'responds with a 200 and program errors',
      () async {
        final context = _MockRequestContext();
        final code = await getStringResource('http/code-with-errors');

        when(() => context.request).thenReturn(
          Request(
            "POST",
            Uri.parse('http://localhost/generate-ast'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'code': code}),
          ),
        );

        // Act
        final response = await route.onRequest(context);

        final expectedResponse = jsonEncode(
          {
            'success': false,
            'ast': {
              'errors': [
                {
                  'message': 'Expected to find \';\'',
                  'position': {
                    'line': 1,
                    'column': 1,
                  },
                },
              ],
            }
          },
        );

        expect(response.statusCode, equals(HttpStatus.ok));
        expect(response.body(), completion(equals(expectedResponse)));
      },
    );
  });
}

import 'dart:convert';

import 'package:dart2ast_engine/ast/protocol.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'dart:io';
import '../../routes/generate_code.dart' as route;

import '../helpers.dart';

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  group('POST /generate-code', () {
    test(
      'responds with a 200 and code',
      () async {
        final context = _MockRequestContext();
        final code = await getStringResource('http/code');
        final expectedParsed = await parseResource2Ast('http/code');
        final expectedAstSerialized = expectedParsed.toProtobuf();

        when(() => context.request).thenReturn(
          Request(
            "POST",
            Uri.parse('http://localhost/generate-code'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'ast': expectedAstSerialized.writeToJsonMap()}),
          ),
        );

        // Act
        final response = await route.onRequest(context);

        // Assert
        final expectedResponse = jsonEncode({
          'success': true,
          'code': code,
        });

        expect(response.statusCode, equals(HttpStatus.ok));
        expect(response.body(), completion(equals(expectedResponse)));
      },
    );
  });
}

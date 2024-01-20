import 'dart:io';

import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/ast/mapper.dart';
import 'package:dart2ast_engine/ast/models.dart';
import 'package:dart2ast_engine/parsing.dart';
import 'package:test/test.dart';

Future<DartFileContext> _parseResource(String resourceName) async {
  final result = await AntlrParserFacade.parseFromFile(
    File('test/resources/$resourceName.dart'),
  );

  if (!result.isCorrect()) {
    throw Exception(
      result.errors.map((e) {
        return "[Ln ${e.position.line}, Col ${e.position.line}]${e.message}";
      }).join('\n'),
    );
  } else if (result.root == null) {
    throw Exception("DartFileContext is not null");
  }

  return result.root!;
}

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final root = await _parseResource('task1/var_definition_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.variable,
                    'name',
                    null,
                    StringLit('"Simone"', null),
                    null,
                  ),
                ],
                null,
              ),
            ),
          );
        },
      );

      test(
        'final_definition_statement',
        () async {
          final root = await _parseResource('task1/final_definition_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.immutable,
                    'height',
                    VariableValueType.DOUBLE,
                    DecLit('1.70', null),
                    null,
                  ),
                ],
                null,
              ),
            ),
          );
        },
      );


      test(
        'type_definition_statement',
        () async {
          final root = await _parseResource('task1/type_definition_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.variable,
                    'age',
                    VariableValueType.INT,
                    IntLit('16', null),
                    null
                  )
                ],
                null,
              ),
            ),
          );
        },
      );


      test(
        'const_definition_statement',
        () async {
          final root = await _parseResource('task1/const_definition_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.constant,
                    'isOld',
                    VariableValueType.BOOLEAN,
                    BoolLit('false', null),
                    null
                   )
                ],
                null,
              ),
            ),
          );
        },
       );

      
      test(
        'assignment_statement',
        () async {
          final root = await _parseResource('task1/assignment_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  AssignmentStatement(
                    'pi',
                    DecLit('3.14', null),
                    null,
                  )
                ],
                null,
              ),
            ),
          );
        },
      );

    },
  );
}

import "package:dart2ast_engine/ast/protocol/converter/ast2protobuf.dart";
import "package:indent/indent.dart";
import "package:test/test.dart";

import "helpers.dart";

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          final root = await parseResource2Ast(
            'task1/var_definition_statement',
          );

          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals("""
              |node: {
              |  programFile: {
              |    lines: {
              |      varDeclarationStatement: {
              |        varType: VARIABLE
              |        name: name
              |        value: {
              |          stringLit: {
              |            value: "Simone"
              |          }
              |        }
              |      }
              |    }
              |  }
              |}
              """
                .trimMargin()),
          );
        },
      );

      test(
        'final_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/final_definition_statement');

          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
              |node: {
              |  programFile: {
              |    lines: {
              |      varDeclarationStatement: {
              |        varType: IMMUTABLE
              |        name: height
              |        valueType: {
              |          name: double
              |        }
              |        value: {
              |          decLit: {
              |            value: 1.70
              |          }
              |        }
              |      }
              |    }
              |  }
              |}
              """
                  .trimMargin(),
            ),
          );
        },
      );

      test(
        'type_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/type_definition_statement');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
              |node: {
              |  programFile: {
              |    lines: {
              |      varDeclarationStatement: {
              |        varType: TYPE
              |        name: age
              |        valueType: {
              |          name: int
              |        }
              |        value: {
              |          intLit: {
              |            value: 16
              |          }
              |        }
              |      }
              |    }
              |  }
              |}
              """
                  .trimMargin(),
            ),
          );
        },
      );

      test(
        'const_definition_statement',
        () async {
          final root =
              await parseResource2Ast('task1/const_definition_statement');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
              |node: {
              |  programFile: {
              |    lines: {
              |      varDeclarationStatement: {
              |        varType: CONSTANT
              |        name: isOld
              |        valueType: {
              |          name: bool
              |        }
              |        value: {
              |          boolLit: {
              |            value: false
              |          }
              |        }
              |      }
              |    }
              |  }
              |}
              """
                  .trimMargin(),
            ),
          );
        },
      );

      test(
        'assignment_statement',
            () async {
          final root = await parseResource2Ast('task1/assignment_statement');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
              |node: {
              |  programFile: {
              |    lines: {
              |      assignmentStatement: {
              |        name: pi
              |        value: {
              |          decLit: {
              |            value: 3.14
              |          }
              |        }
              |      }
              |    }
              |  }
              |}
              """
                  .trimMargin(),
            ),
          );
        },
      );
    },
  );
}

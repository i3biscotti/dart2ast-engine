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

  group(
    'Task 2',
    () {
      test(
        'expression_definition',
        () async {
          final root = await parseResource2Ast('task2/expression_definition');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      expressionDefinitionStatement: {
            |        value: {
            |          binaryMathExpression: {
            |            left: {
            |              parenthesisExpression: {
            |                value: {
            |                  binaryMathExpression: {
            |                    left: {
            |                      intLit: {
            |                        value: 3
            |                      }
            |                    }
            |                    right: {
            |                      intLit: {
            |                        value: 4
            |                      }
            |                    }
            |                    operand: PLUS
            |                  }
            |                }
            |              }
            |            }
            |            right: {
            |              parenthesisExpression: {
            |                value: {
            |                  binaryMathExpression: {
            |                    left: {
            |                      intLit: {
            |                        value: 4
            |                      }
            |                    }
            |                    right: {
            |                      intLit: {
            |                        value: 3
            |                      }
            |                    }
            |                    operand: MINUS
            |                  }
            |                }
            |              }
            |            }
            |            operand: TIMES
            |          }
            |        }
            |      }
            |    }
            |  }
            |}
            """
                .trimMargin(),
          );
        },
      );
    },
  );

  group(
    'Task 3',
    () {
      test(
        'if_statement',
        () async {
          final root = await parseResource2Ast('task3/if_statement');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      ifDefinitionStatement: {
            |        ifBlock: {
            |          condition: {
            |            binaryComparisonExpression: {
            |              left: {
            |                varReferenceExpression: {
            |                  name: voto
            |                }
            |              }
            |              right: {
            |                intLit: {
            |                  value: 18
            |                }
            |              }
            |              operand: GREATER_THAN
            |            }
            |          }
            |          statements: {
            |            assignmentStatement: {
            |              name: exam
            |              value: {
            |                stringLit: {
            |                  value: "passed"
            |                }
            |              }
            |            }
            |          }
            |          blockType: IF_BLOCK
            |        }
            |        elseIfBlocks: {
            |          condition: {
            |            binaryComparisonExpression: {
            |              left: {
            |                varReferenceExpression: {
            |                  name: voto
            |                }
            |              }
            |              right: {
            |                intLit: {
            |                  value: 18
            |                }
            |              }
            |              operand: EQUAL
            |            }
            |          }
            |          statements: {
            |            assignmentStatement: {
            |              name: exam
            |              value: {
            |                stringLit: {
            |                  value: "passed"
            |                }
            |              }
            |            }
            |          }
            |          blockType: ELSE_IF_BLOCK
            |        }
            |        elseBlock: {
            |          statements: {
            |            assignmentStatement: {
            |              name: exam
            |              value: {
            |                stringLit: {
            |                  value: "failed"
            |                }
            |              }
            |            }
            |          }
            |          blockType: ELSE_BLOCK
            |        }
            |      }
            |    }
            |  }
            |}
            """
                .trimMargin(),
          );
        },
      );
    },
  );
}

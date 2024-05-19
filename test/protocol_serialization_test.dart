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

  group(
    "Task 4",
    () {
      test(
        'while_statement',
        () async {
          final root = await parseResource2Ast('task4/while_statement');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
                |node: {
                |  programFile: {
                |    lines: {
                |      varDeclarationStatement: {
                |        varType: VARIABLE
                |        name: i
                |        valueType: {
                |          name: int
                |        }
                |        value: {
                |          intLit: {
                |            value: 1
                |          }
                |        }
                |      }
                |    }
                |    lines: {
                |      whileDefinitionStatement: {
                |        condition: {
                |          varReferenceExpression: {
                |            name: condition
                |          }
                |        }
                |        statements: {
                |          ifDefinitionStatement: {
                |            ifBlock: {
                |              condition: {
                |                binaryComparisonExpression: {
                |                  left: {
                |                    varReferenceExpression: {
                |                      name: i
                |                    }
                |                  }
                |                  right: {
                |                    intLit: {
                |                      value: 17
                |                    }
                |                  }
                |                  operand: LESS_THAN
                |                }
                |              }
                |              statements: {
                |                assignmentStatement: {
                |                  name: i
                |                  value: {
                |                    binaryMathExpression: {
                |                      left: {
                |                        varReferenceExpression: {
                |                          name: i
                |                        }
                |                      }
                |                      right: {
                |                        intLit: {
                |                          value: 1
                |                        }
                |                      }
                |                      operand: PLUS
                |                    }
                |                  }
                |                }
                |              }
                |              blockType: IF_BLOCK
                |            }
                |            elseBlock: {
                |              statements: {
                |                assignmentStatement: {
                |                  name: condition
                |                  value: {
                |                    boolLit: {
                |                      value: true
                |                    }
                |                  }
                |                }
                |              }
                |              blockType: ELSE_BLOCK
                |            }
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
    "Task 5",
    () {
      test('for_statement', () async {
        final root = await parseResource2Ast('task5/for_statement');
        final pbRoot = convertAstObjectToProtobuf(root);

        expect(
          pbRoot.toString(),
          equals(
            """
              |node: {
              |  programFile: {
              |    lines: {
              |      varDeclarationStatement: {
              |        varType: VARIABLE
              |        name: a
              |        value: {
              |          intLit: {
              |            value: 0
              |          }
              |        }
              |      }
              |    }
              |    lines: {
              |      forDefinitionStatement: {
              |        forCondition: {
              |          standardForCondition: {
              |            initStatement: {
              |              varDeclarationForStatement: {
              |                varType: TYPE
              |                name: i
              |                valueType: {
              |                  name: int
              |                }
              |                value: {
              |                  intLit: {
              |                    value: 0
              |                  }
              |                }
              |              }
              |            }
              |            controlExpression: {
              |              binaryComparisonExpression: {
              |                left: {
              |                  varReferenceExpression: {
              |                    name: i
              |                  }
              |                }
              |                right: {
              |                  intLit: {
              |                    value: 3
              |                  }
              |                }
              |                operand: LESS_THAN
              |              }
              |            }
              |            incrementStatement: {
              |              expressionForStatement: {
              |                value: {
              |                  postIncrementExpression: {
              |                    name: i
              |                  }
              |                }
              |              }
              |            }
              |          }
              |        }
              |        statements: {
              |          assignmentStatement: {
              |            name: a
              |            value: {
              |              binaryMathExpression: {
              |                left: {
              |                  varReferenceExpression: {
              |                    name: a
              |                  }
              |                }
              |                right: {
              |                  intLit: {
              |                    value: 1
              |                  }
              |                }
              |                operand: PLUS
              |              }
              |            }
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
      });

      test(
        'for_each_statement',
        () async {
          final root = await parseResource2Ast('task5/for_each_statement');
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
                |        name: list
                |        value: {
                |          listLiteralExpression: {
                |            value: {
                |              intLit: {
                |                value: 1
                |              }
                |            }
                |            value: {
                |              intLit: {
                |                value: 2
                |              }
                |            }
                |          }
                |        }
                |      }
                |    }
                |    lines: {
                |      varDeclarationStatement: {
                |        varType: VARIABLE
                |        name: b
                |        value: {
                |          intLit: {
                |            value: 0
                |          }
                |        }
                |      }
                |    }
                |    lines: {
                |      forDefinitionStatement: {
                |        forCondition: {
                |          forEachCondition: {
                |            itemDefinition: {
                |              varType: TYPE
                |              name: i
                |              valueType: {
                |                name: int
                |              }
                |            }
                |            expression: {
                |              varReferenceExpression: {
                |                name: list
                |              }
                |            }
                |          }
                |        }
                |        statements: {
                |          assignmentStatement: {
                |            name: b
                |            value: {
                |              binaryMathExpression: {
                |                left: {
                |                  varReferenceExpression: {
                |                    name: b
                |                  }
                |                }
                |                right: {
                |                  intLit: {
                |                    value: 1
                |                  }
                |                }
                |                operand: PLUS
                |              }
                |            }
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
    "Task 6",
    () {
      test(
        'input_expression',
        () async {
          final root = await parseResource2Ast('task6/input_expression');
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
              |        name: input
              |        value: {
              |          inputExpression: {
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
        'output_expression',
        () async {
          final root = await parseResource2Ast('task6/output_expression');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
              |node: {
              |  programFile: {
              |    lines: {
              |      expressionDefinitionStatement: {
              |        value: {
              |          outputExpression: {
              |            value: {
              |              varReferenceExpression: {
              |                name: input
              |              }
              |            }
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
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final root =
            await parseResource2Ast('task7/void_function_without_params');
        final pbRoot = convertAstObjectToProtobuf(root);

        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      functionDefinitionStatement: {
            |        name: emptyFunction
            |        returnType: {
            |          name: void
            |        }
            |      }
            |    }
            |  }
            |}
            """
                .trimMargin(),
          ),
        );
      });

      test('int_sum_function', () async {
        final root = await parseResource2Ast('task7/int_sum_function');
        final pbRoot = convertAstObjectToProtobuf(root);

        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      functionDefinitionStatement: {
            |        name: sum
            |        parameters: {
            |          name: a
            |          type: TYPED
            |          valueType: {
            |            name: int
            |          }
            |        }
            |        parameters: {
            |          name: b
            |          type: TYPED
            |          valueType: {
            |            name: int
            |          }
            |        }
            |        returnType: {
            |          name: int
            |        }
            |        statements: {
            |          returnStatement: {
            |            value: {
            |              binaryMathExpression: {
            |                left: {
            |                  varReferenceExpression: {
            |                    name: a
            |                  }
            |                }
            |                right: {
            |                  varReferenceExpression: {
            |                    name: b
            |                  }
            |                }
            |                operand: PLUS
            |              }
            |            }
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
      });

      test(
        'call_function',
        () async {
          final root = await parseResource2Ast('task7/call_function');
          final pbRoot = convertAstObjectToProtobuf(root);

          expect(
            pbRoot.toString(),
            equals(
              """
            |node: {
            |  programFile: {
            |    lines: {
            |      functionDefinitionStatement: {
            |        name: operations
            |        parameters: {
            |          name: a
            |          type: TYPED
            |          valueType: {
            |            name: int
            |          }
            |        }
            |        parameters: {
            |          name: b
            |          type: TYPED
            |          valueType: {
            |            name: int
            |          }
            |        }
            |        parameters: {
            |          name: c
            |          type: TYPED
            |          valueType: {
            |            name: bool
            |          }
            |        }
            |        returnType: {
            |          name: bool
            |        }
            |        statements: {
            |          varDeclarationStatement: {
            |            varType: VARIABLE
            |            name: aIsGreaterThanB
            |            value: {
            |              binaryComparisonExpression: {
            |                left: {
            |                  varReferenceExpression: {
            |                    name: a
            |                  }
            |                }
            |                right: {
            |                  varReferenceExpression: {
            |                    name: b
            |                  }
            |                }
            |                operand: GREATER_THAN
            |              }
            |            }
            |          }
            |        }
            |        statements: {
            |          varDeclarationStatement: {
            |            varType: IMMUTABLE
            |            name: isGreaterAndCondition
            |            value: {
            |              binaryLogicExpression: {
            |                left: {
            |                  varReferenceExpression: {
            |                    name: aIsGreaterThanB
            |                  }
            |                }
            |                right: {
            |                  varReferenceExpression: {
            |                    name: c
            |                  }
            |                }
            |                operand: AND
            |              }
            |            }
            |          }
            |        }
            |        statements: {
            |          returnStatement: {
            |            value: {
            |              varReferenceExpression: {
            |                name: isGreaterAndCondition
            |              }
            |            }
            |          }
            |        }
            |      }
            |    }
            |    lines: {
            |      functionDefinitionStatement: {
            |        name: main
            |        returnType: {
            |          name: void
            |        }
            |        statements: {
            |          varDeclarationStatement: {
            |            varType: IMMUTABLE
            |            name: result
            |            value: {
            |              functionCallExpression: {
            |                name: operations
            |                parameters: {
            |                  intLit: {
            |                    value: 11
            |                  }
            |                }
            |                parameters: {
            |                  intLit: {
            |                    value: 12
            |                  }
            |                }
            |                parameters: {
            |                  boolLit: {
            |                    value: false
            |                  }
            |                }
            |              }
            |            }
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
    "Task 8",
    () {
      test('empty_class', () async {
        final rootNode = await parseResource2Ast('task8/empty_class');
        final pbRoot = convertAstObjectToProtobuf(rootNode);

        expect(
          pbRoot.toString(),
          """
          |node: {
          |  programFile: {
          |    lines: {
          |      classDefinitionStatement: {
          |        encapsulation: PUBLIC
          |        name: SimpleClass
          |      }
          |    }
          |  }
          |}
          """
              .trimMargin(),
        );
      });

      test(
        'class_with_methods',
        () async {
          final rootNode = await parseResource2Ast('task8/class_with_methods');
          final pbRoot = convertAstObjectToProtobuf(rootNode);

          expect(
            pbRoot.toString(),
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      classDefinitionStatement: {
            |        encapsulation: PUBLIC
            |        name: SimpleClass
            |        properties: {
            |          varType: IMMUTABLE
            |          name: prop1
            |          valueType: {
            |            name: int
            |          }
            |        }
            |        properties: {
            |          varType: TYPE
            |          name: pro2
            |          valueType: {
            |            name: bool
            |          }
            |        }
            |        constructors: {
            |          className: SimpleClass
            |          parameters: {
            |            name: prop1
            |            type: THIS
            |          }
            |          parameters: {
            |            name: pro2
            |            type: THIS
            |          }
            |        }
            |        methods: {
            |          name: sum
            |          parameters: {
            |            name: value
            |            type: TYPED
            |            valueType: {
            |              name: int
            |            }
            |          }
            |          returnType: {
            |            name: int
            |          }
            |          statements: {
            |            assignmentStatement: {
            |              name: pro2
            |              value: {
            |                binaryComparisonExpression: {
            |                  left: {
            |                    varReferenceExpression: {
            |                      name: value
            |                    }
            |                  }
            |                  right: {
            |                    varReferenceExpression: {
            |                      name: prop1
            |                    }
            |                  }
            |                  operand: LESS_THAN_OR_EQUAL
            |                }
            |              }
            |            }
            |          }
            |          statements: {
            |            returnStatement: {
            |              value: {
            |                binaryMathExpression: {
            |                  left: {
            |                    varReferenceExpression: {
            |                      name: value
            |                    }
            |                  }
            |                  right: {
            |                    varReferenceExpression: {
            |                      name: prop1
            |                    }
            |                  }
            |                  operand: PLUS
            |                }
            |              }
            |            }
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

      test('class_with_multiple_constructors', () async {
        final rootNode =
            await parseResource2Ast('task8/class_with_multiple_constructors');
        final pbRoot = convertAstObjectToProtobuf(rootNode);

        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      classDefinitionStatement: {
            |        encapsulation: PUBLIC
            |        name: MultiplePass
            |        properties: {
            |          varType: IMMUTABLE
            |          name: a
            |          valueType: {
            |            name: int
            |          }
            |        }
            |        properties: {
            |          varType: TYPE
            |          name: b
            |          valueType: {
            |            name: double
            |          }
            |        }
            |        constructors: {
            |          className: MultiplePass
            |          parameters: {
            |            name: a
            |            type: THIS
            |          }
            |          parameters: {
            |            name: b
            |            type: THIS
            |          }
            |        }
            |        constructors: {
            |          className: MultiplePass
            |          constructorName: test
            |          parameters: {
            |            name: a
            |            type: TYPED
            |            valueType: {
            |              name: int
            |            }
            |          }
            |          thisConstructor: {
            |            parameters: {
            |              varReferenceExpression: {
            |                name: a
            |              }
            |            }
            |            parameters: {
            |              decLit: {
            |                value: 12.1
            |              }
            |            }
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
      });

      test('class_hierarchy', () async {
        final rootNode = await parseResource2Ast('task8/class_hierarchy');
        final pbRoot = convertAstObjectToProtobuf(rootNode);

        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      classDefinitionStatement: {
            |        encapsulation: PUBLIC
            |        name: SecretWars
            |        parentName: Marvel
            |      }
            |    }
            |  }
            |}
            """
                .trimMargin(),
          ),
        );
      });

      test('private_class', () async {
        final rootNode = await parseResource2Ast('task8/private_class');
        final pbRoot = convertAstObjectToProtobuf(rootNode);
        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      classDefinitionStatement: {
            |        encapsulation: PRIVATE
            |        name: SecretWar
            |      }
            |    }
            |  }
            |}
            """
                .trimMargin(),
          ),
        );
      });
    },
  );

  group(
    "Task 9",
    () {
      test('object_instance', () async {
        final root = await parseResource2Ast('task9/object_instance');
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
            |        name: element
            |        value: {
            |          functionCallExpression: {
            |            name: ClassToInstance
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
      });

      test('method_call', () async {
        final root = await parseResource2Ast('task9/method_call');
        final pbRoot = convertAstObjectToProtobuf(root);

        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      expressionDefinitionStatement: {
            |        value: {
            |          objectMethodCallExpression: {
            |            objectName: element
            |            methodName: execute
            |          }
            |        }
            |      }
            |    }
            |  }
            |}
            """.trimMargin(),
          ),
        );
      });

      test('property_assignment', () async {
        final root = await parseResource2Ast('task9/property_assignment');
        final pbRoot = convertAstObjectToProtobuf(root);

        expect(
          pbRoot.toString(),
          equals(
            """
            |node: {
            |  programFile: {
            |    lines: {
            |      objectPropertyAssignmentStatement: {
            |        objectName: element
            |        propertyName: name
            |        value: {
            |          stringLit: {
            |            value: "Pacco"
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
      });
    },
  );
}

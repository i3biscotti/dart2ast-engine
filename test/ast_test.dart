import 'package:dart2ast_engine/dart2ast.dart';
import 'package:test/test.dart';

import 'helpers.dart';

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

          expect(
            root,
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
          final root =
              await parseResource2Ast('task1/final_definition_statement');

          expect(
            root,
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
          final root =
              await parseResource2Ast('task1/type_definition_statement');

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.type,
                    'age',
                    VariableValueType.INT,
                    IntLit('16', null),
                    null,
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
          final root =
              await parseResource2Ast('task1/const_definition_statement');

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.constant,
                    'isOld',
                    VariableValueType.BOOLEAN,
                    BoolLit('false', null),
                    null,
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
          final root = await parseResource2Ast('task1/assignment_statement');

          expect(
            root,
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

  group(
    'Task 2',
    () {
      test(
        'expression_definition',
        () async {
          final root = await parseResource2Ast('task2/expression_definition');

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  ExpressionDefinitionStatement(
                    BinaryMathExpression(
                      ParenthesisExpression(
                          BinaryMathExpression(
                            IntLit('3', null),
                            IntLit('4', null),
                            MathOperand.plus,
                            null,
                          ),
                          null),
                      ParenthesisExpression(
                          BinaryMathExpression(
                            IntLit('4', null),
                            IntLit('3', null),
                            MathOperand.minus,
                            null,
                          ),
                          null),
                      MathOperand.times,
                      null,
                    ),
                    null,
                  ),
                ],
                null,
              ),
            ),
          );
        },
      );
    },
  );

  group(
    "Task 3",
    () {
      test(
        'if_statement',
        () async {
          final root = await parseResource2Ast('task3/if_statement');

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  IfDefinitionStatement(
                      IfBlock(
                        BinaryComparisonExpression(
                          VarReferenceExpression('voto', null),
                          IntLit('18', null),
                          ComparisonOperand.greaterThan,
                          null,
                        ),
                        <Statement>[
                          AssignmentStatement(
                              'exam', StringLit('"passed"', null), null),
                        ],
                        BlockType.ifBlock,
                        null,
                      ),
                      <IfBlock>[
                        IfBlock(
                          BinaryComparisonExpression(
                            VarReferenceExpression('voto', null),
                            IntLit('18', null),
                            ComparisonOperand.equal,
                            null,
                          ),
                          <Statement>[
                            AssignmentStatement(
                              'exam',
                              StringLit('"passed"', null),
                              null,
                            ),
                          ],
                          BlockType.elseIfBlock,
                          null,
                        ),
                      ],
                      IfBlock(
                          null,
                          <Statement>[
                            AssignmentStatement(
                                'exam', StringLit('"failed"', null), null),
                          ],
                          BlockType.elseBlock,
                          null),
                      null),
                ],
                null,
              ),
            ),
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

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.variable,
                    'i',
                    VariableValueType.INT,
                    IntLit('1', null),
                    null,
                  ),
                  WhileDefinitionStatement(
                    VarReferenceExpression('condition', null),
                    <Statement>[
                      IfDefinitionStatement(
                        IfBlock(
                            BinaryComparisonExpression(
                              VarReferenceExpression('i', null),
                              IntLit('17', null),
                              ComparisonOperand.lessThan,
                              null,
                            ),
                            <Statement>[
                              AssignmentStatement(
                                  'i',
                                  BinaryMathExpression(
                                    VarReferenceExpression('i', null),
                                    IntLit('1', null),
                                    MathOperand.plus,
                                    null,
                                  ),
                                  null),
                            ],
                            BlockType.ifBlock,
                            null),
                        <IfBlock>[],
                        IfBlock(
                          null,
                          <Statement>[
                            AssignmentStatement(
                              'condition',
                              BoolLit('true', null),
                              null,
                            ),
                          ],
                          BlockType.elseBlock,
                          null,
                        ),
                        null,
                      ),
                    ],
                    null,
                  ),
                ],
                null,
              ),
            ),
          );
        },
      );
    },
  );

  group(
    "Task 5",
    () {
      test(
        'for_statement',
        () async {
          final root = await parseResource('task5/for_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.variable,
                    'a',
                    null,
                    IntLit('0', null),
                    null,
                  ),
                  ForDefinitionStatement(
                    StandardForCondition(
                      VarDeclarationForStatement(
                        VariableType.type,
                        'i',
                        VariableValueType.INT,
                        IntLit('0', null),
                        null,
                      ),
                      BinaryComparisonExpression(
                        VarReferenceExpression('i', null),
                        IntLit('3', null),
                        ComparisonOperand.lessThan,
                        null,
                      ),
                      ExpressionForStatement(
                        PostIncrementExpression('i', null),
                        null,
                      ),
                      null,
                    ),
                    <Statement>[
                      AssignmentStatement(
                        'a',
                        BinaryMathExpression(
                          VarReferenceExpression('a', null),
                          IntLit('1', null),
                          MathOperand.plus,
                          null,
                        ),
                        null,
                      )
                    ],
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
        'for_each_statement',
        () async {
          final root = await parseResource('task5/for_each_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                      VariableType.immutable,
                      'list',
                      null,
                      ListLiteralExpression(
                        <Expression>[
                          IntLit('1', null),
                          IntLit('2', null),
                        ],
                        null,
                      ),
                      null),
                  VariableDeclarationStatement(
                    VariableType.variable,
                    'b',
                    null,
                    IntLit('0', null),
                    null,
                  ),
                  ForDefinitionStatement(
                    ForEachCondition(
                        ItemDefinition(
                          VariableType.type,
                          'i',
                          VariableValueType.INT,
                          null,
                        ),
                        VarReferenceExpression('list', null),
                        null),
                    <Statement>[
                      AssignmentStatement(
                        'b',
                        BinaryMathExpression(
                          VarReferenceExpression('b', null),
                          IntLit('1', null),
                          MathOperand.plus,
                          null,
                        ),
                        null,
                      ),
                    ],
                    null,
                  ),
                ],
                null,
              ),
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

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.immutable,
                    'input',
                    null,
                    InputExpression(null),
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
        'output_expression',
        () async {
          final root = await parseResource2Ast('task6/output_expression');

          expect(
            root,
            equals(
              ProgramFile(
                <Statement>[
                  ExpressionDefinitionStatement(
                    OutputExpression(
                      VarReferenceExpression('input', null),
                      null,
                    ),
                    null,
                  ),
                ],
                null,
              ),
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

        expect(
          root,
          equals(
            ProgramFile(
              <Statement>[
                FunctionDefinitionStatement(
                  'emptyFunction',
                  <Parameter>[],
                  VariableValueType.VOID,
                  <Statement>[],
                  null,
                ),
              ],
              null,
            ),
          ),
        );
      });

      test('int_sum_function', () async {
        final root = await parseResource2Ast('task7/int_sum_function');

        expect(
          root,
          equals(
            ProgramFile(
              <Statement>[
                FunctionDefinitionStatement(
                  'sum',
                  <Parameter>[
                    Parameter(
                      'a',
                      ParameterType.TYPE,
                      VariableValueType.INT,
                      null,
                    ),
                    Parameter(
                      'b',
                      ParameterType.TYPE,
                      VariableValueType.INT,
                      null,
                    ),
                  ],
                  VariableValueType.INT,
                  <Statement>[
                    ReturnStatement(
                      BinaryMathExpression(
                        VarReferenceExpression('a', null),
                        VarReferenceExpression('b', null),
                        MathOperand.plus,
                        null,
                      ),
                      null,
                    ),
                  ],
                  null,
                ),
              ],
              null,
            ),
          ),
        );
      });

      test(
        'call_function',
        () async {
          final root = await parseResource2Ast('task7/call_function');
          final progam = ProgramFile(
            <Statement>[
              FunctionDefinitionStatement(
                "operations",
                <Parameter>[
                  Parameter(
                    'a',
                    ParameterType.TYPE,
                    VariableValueType.INT,
                    null,
                  ),
                  Parameter(
                    'b',
                    ParameterType.TYPE,
                    VariableValueType.INT,
                    null,
                  ),
                  Parameter(
                    'c',
                    ParameterType.TYPE,
                    VariableValueType.BOOLEAN,
                    null,
                  ),
                ],
                VariableValueType.BOOLEAN,
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.variable,
                    "aIsGreaterThanB",
                    null,
                    BinaryComparisonExpression(
                      VarReferenceExpression('a', null),
                      VarReferenceExpression('b', null),
                      ComparisonOperand.greaterThan,
                      null,
                    ),
                    null,
                  ),
                  VariableDeclarationStatement(
                    VariableType.immutable,
                    "isGreaterAndCondition",
                    null,
                    BinaryLogicExpression(
                      VarReferenceExpression('aIsGreaterThanB', null),
                      VarReferenceExpression('c', null),
                      LogicOperand.and,
                      null,
                    ),
                    null,
                  ),
                  ReturnStatement(
                    VarReferenceExpression(
                      "isGreaterAndCondition",
                      null,
                    ),
                    null,
                  )
                ],
                null,
              ),
              FunctionDefinitionStatement(
                "main",
                <Parameter>[],
                VariableValueType.VOID,
                <Statement>[
                  VariableDeclarationStatement(
                    VariableType.immutable,
                    "result",
                    null,
                    FunctionCallExpression(
                      "operations",
                      <Expression>[
                        IntLit('11', null),
                        IntLit('12', null),
                        BoolLit('false', null),
                      ],
                      null,
                    ),
                    null,
                  ),
                ],
                null,
              )
            ],
            null,
          );
          expect(
            root,
            equals(progam),
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

        expect(
          rootNode,
          ProgramFile(
            <Statement>[
              ClassDefinitionStatement(
                EncapsulationType.public,
                'SimpleClass',
                null,
                <VariableDeclarationStatement>[],
                <ConstructorDefinitionStatement>[],
                <FunctionDefinitionStatement>[],
                null,
              )
            ],
            null,
          ),
        );
      });

      test(
        'class_with_methods',
        () async {
          final rootNode = await parseResource2Ast('task8/class_with_methods');

          expect(
            rootNode,
            ProgramFile(
              <Statement>[
                ClassDefinitionStatement(
                  EncapsulationType.public,
                  'SimpleClass',
                  null,
                  <VariableDeclarationStatement>[
                    VariableDeclarationStatement(
                      VariableType.immutable,
                      'prop1',
                      VariableValueType.INT,
                      null,
                      null,
                    ),
                    VariableDeclarationStatement(
                      VariableType.type,
                      'pro2',
                      VariableValueType.BOOLEAN,
                      null,
                      null,
                    ),
                  ],
                  <ConstructorDefinitionStatement>[
                    ConstructorDefinitionStatement(
                      "SimpleClass",
                      null,
                      <Parameter>[
                        Parameter("prop1", ParameterType.THIS, null, null),
                        Parameter("pro2", ParameterType.THIS, null, null)
                      ],
                      null,
                      <Statement>[],
                      null,
                    ),
                  ],
                  <FunctionDefinitionStatement>[
                    FunctionDefinitionStatement(
                      'sum',
                      <Parameter>[
                        Parameter(
                          "value",
                          ParameterType.TYPE,
                          VariableValueType.INT,
                          null,
                        ),
                      ],
                      VariableValueType.INT,
                      <Statement>[
                        AssignmentStatement(
                          'pro2',
                          BinaryComparisonExpression(
                            VarReferenceExpression('value', null),
                            VarReferenceExpression('prop1', null),
                            ComparisonOperand.lessThanOrEqual,
                            null,
                          ),
                          null,
                        ),
                        ReturnStatement(
                          BinaryMathExpression(
                            VarReferenceExpression('value', null),
                            VarReferenceExpression('prop1', null),
                            MathOperand.plus,
                            null,
                          ),
                          null,
                        ),
                      ],
                      null,
                    ),
                  ],
                  null,
                )
              ],
              null,
            ),
          );
        },
      );

      test('class_with_multiple_constructors', () async {
        final rootNode =
            await parseResource2Ast('task8/class_with_multiple_constructors');

        expect(
          rootNode,
          ProgramFile(
            <Statement>[
              ClassDefinitionStatement(
                EncapsulationType.public,
                'MultiplePass',
                null,
                <VariableDeclarationStatement>[
                  VariableDeclarationStatement(
                    VariableType.immutable,
                    'a',
                    VariableValueType.INT,
                    null,
                    null,
                  ),
                  VariableDeclarationStatement(
                    VariableType.type,
                    'b',
                    VariableValueType.DOUBLE,
                    null,
                    null,
                  ),
                ],
                <ConstructorDefinitionStatement>[
                  ConstructorDefinitionStatement(
                    "MultiplePass",
                    null,
                    <Parameter>[
                      Parameter("a", ParameterType.THIS, null, null),
                      Parameter("b", ParameterType.THIS, null, null)
                    ],
                    null,
                    <Statement>[],
                    null,
                  ),
                  ConstructorDefinitionStatement(
                    "MultiplePass",
                    "test",
                    <Parameter>[
                      Parameter(
                        "a",
                        ParameterType.TYPE,
                        VariableValueType.INT,
                        null,
                      ),
                    ],
                    ThisConstructorDefinition(
                      <Expression>[
                        VarReferenceExpression("a", null),
                        DecLit("12.1", null)
                      ],
                      null,
                    ),
                    <Statement>[],
                    null,
                  ),
                ],
                <FunctionDefinitionStatement>[],
                null,
              )
            ],
            null,
          ),
        );
      });

      test('class_with_properties', () async {
        final rootNode = await parseResource2Ast('task8/class_with_properties');

        expect(
          rootNode,
          ProgramFile(
            <Statement>[
              ClassDefinitionStatement(
                EncapsulationType.public,
                'SimpleClass',
                null,
                <VariableDeclarationStatement>[
                  VariableDeclarationStatement(
                    VariableType.immutable,
                    'prop1',
                    VariableValueType.INT,
                    null,
                    null,
                  ),
                  VariableDeclarationStatement(
                    VariableType.type,
                    'pro2',
                    VariableValueType.BOOLEAN,
                    null,
                    null,
                  ),
                ],
                <ConstructorDefinitionStatement>[
                  ConstructorDefinitionStatement(
                    "SimpleClass",
                    null,
                    <Parameter>[
                      Parameter("prop1", ParameterType.THIS, null, null),
                      Parameter("pro2", ParameterType.THIS, null, null)
                    ],
                    null,
                    <Statement>[],
                    null,
                  ),
                ],
                <FunctionDefinitionStatement>[],
                null,
              )
            ],
            null,
          ),
        );
      });

      test('class_hierarchy', () async {
        final rootNode = await parseResource2Ast('task8/class_hierarchy');

        expect(
          rootNode,
          ProgramFile(
            <Statement>[
              ClassDefinitionStatement(
                EncapsulationType.public,
                'SecretWars',
                'Marvel',
                <VariableDeclarationStatement>[],
                <ConstructorDefinitionStatement>[],
                <FunctionDefinitionStatement>[],
                null,
              )
            ],
            null,
          ),
        );
      });

      test('private_class', () async {
        final rootNode = await parseResource2Ast('task8/private_class');

        expect(
          rootNode,
          ProgramFile(
            <Statement>[
              ClassDefinitionStatement(
                EncapsulationType.private,
                'SecretWar',
                null,
                <VariableDeclarationStatement>[],
                <ConstructorDefinitionStatement>[],
                <FunctionDefinitionStatement>[],
                null,
              )
            ],
            null,
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

        expect(
          root,
          equals(
            ProgramFile(
              <Statement>[
                VariableDeclarationStatement(
                  VariableType.immutable,
                  "element",
                  null,
                  FunctionCallExpression(
                    "ClassToInstance",
                    <Expression>[],
                    null,
                  ),
                  null,
                )
              ],
              null,
            ),
          ),
        );
      });

      test('method_call', () async {
        final root = await parseResource2Ast('task9/method_call');

        expect(
          root,
          equals(
            ProgramFile(
              <Statement>[
                ExpressionDefinitionStatement(
                  ObjectMethodCallExpression(
                    "element",
                    "execute",
                    <Expression>[],
                    null,
                  ),
                  null,
                )
              ],
              null,
            ),
          ),
        );
      });

      test('property_assignment', () async {
        final root = await parseResource2Ast('task9/property_assignment');

        expect(
          root,
          equals(
            ProgramFile(
              <Statement>[
                ObjectPropertyAssignmentStatement(
                  "element",
                  "name",
                  StringLit('"Pacco"', null),
                  null,
                ),
              ],
              null,
            ),
          ),
        );
      });
    },
  );
}

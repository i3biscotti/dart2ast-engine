import 'dart:io';

import 'package:dart2ast_engine/antlr.dart';
import 'package:dart2ast_engine/ast/mapper.dart';
import 'package:dart2ast_engine/ast/models.dart';
import 'package:dart2ast_engine/parsing.dart';
import 'package:test/test.dart';
import 'package:uuid/data.dart';

Future<DartFileContext> _parseResource(String resourceName) async {
  final result = await AntlrParserFacade.parseFromFile(
    File('test/resources/$resourceName.txt'),
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
          final root = await _parseResource('task1/const_definition_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  VariableDeclarationStatement(VariableType.constant, 'isOld',
                      VariableValueType.BOOLEAN, BoolLit('false', null), null)
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

  group(
    'Task 2',
    () {
      test(
        'expression_definition',
        () async {
          final root = await _parseResource('task2/expression_definition');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  ExpressionDefinitionStatement(
                      BinaryMathExpression(
                          ParenthesysExpression(
                              BinaryMathExpression(IntLit('3', null),
                                  IntLit('4', null), MathOperand.plus, null),
                              null),
                          ParenthesysExpression(
                              BinaryMathExpression(IntLit('4', null),
                                  IntLit('3', null), MathOperand.minus, null),
                              null),
                          MathOperand.times,
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
    "Task 3",
    () {
      test(
        'if_statement',
        () async {
          final root = await _parseResource('task3/if_statement');

          expect(
            root.toAst(false),
            equals(
              ProgramFile(
                <Statement>[
                  IfDefinitionStatement(
                      IfBlock(
                          BinaryLogicExpression(
                              VarReferenceExpression('voto', null),
                              IntLit('18', null),
                              LogicOperand.greaterThan,
                              null),
                          <Statement>[
                            AssignmentStatement(
                                'exam', StringLit('"passed"', null), null),
                          ],
                          BlockType.ifBlock,
                          null),
                      <IfBlock>[
                        IfBlock(
                            BinaryLogicExpression(
                                VarReferenceExpression('voto', null),
                                IntLit('18', null),
                                LogicOperand.equal,
                                null),
                            <Statement>[
                              AssignmentStatement(
                                  'exam', StringLit('"passed"', null), null),
                            ],
                            BlockType.elseIfBlock,
                            null),
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
          final root = await _parseResource('task4/while_statement');

          expect(
            root.toAst(false),
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
                                BinaryLogicExpression(
                                  VarReferenceExpression('i', null),
                                  IntLit('17', null),
                                  LogicOperand.lessThan,
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
                                      'condition', BoolLit('true', null), null),
                                ],
                                BlockType.elseBlock,
                                null),
                            null),
                      ],
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
    "Task 5",
    () {
      test('for_statement', () async {
        final root = await _parseResource('task5/for_statement');

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
                    BinaryLogicExpression(
                      VarReferenceExpression('i', null),
                      IntLit('3', null),
                      LogicOperand.lessThan,
                    null),
                    ExpressionForStatement(
                      PostIncrementExpression('i', null),
                    null),
                  null),
                  <Statement>[
                    AssignmentStatement(
                      'a',
                      BinaryMathExpression(
                        VarReferenceExpression('a', null),
                        IntLit('1', null),
                        MathOperand.plus,
                      null),
                    null)
                  ],
                null),
              ],
              null,
             ),
           ),
         );
        },
      );

      test('for_each_statement', () async {
        final root = await _parseResource('task5/for_each_statement');

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
                    [IntLit('1', null),
                    IntLit('2', null)],
                    null),
                null),
                VariableDeclarationStatement(
                  VariableType.variable,
                  'b',
                  null,
                  IntLit('0', null),
                null),
                ForDefinitionStatement(
                  ForEachCondition(
                    ItemDefinition(
                      VariableType.type,
                      'i',
                      VariableValueType.INT,
                    null),
                    VarReferenceExpression('list', null),
                    null),
                  <Statement>[
                    AssignmentStatement(
                      'b',
                      BinaryMathExpression(
                        VarReferenceExpression('b', null),
                        IntLit('1', null),
                        MathOperand.plus,
                      null),
                    null),
                  ],
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
    "Task 7",
    () {
      test('void_function_without_params', () async {
        final root = await _parseResource('task7/void_function_without_params');

        expect(
          root.toAst(false),
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
        final root = await _parseResource('task7/int_sum_function');

        expect(
          root.toAst(false),
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
          final root = await _parseResource('task7/call_function');
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
                    BinaryLogicExpression(
                      VarReferenceExpression('a', null),
                      VarReferenceExpression('b', null),
                      LogicOperand.greaterThan,
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
            root.toAst(false),
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
        final rootNode = await _parseResource('task8/empty_class');

        expect(
          rootNode.toAst(false),
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
          final rootNode = await _parseResource('task8/class_with_methods');

          expect(
            rootNode.toAst(false),
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
                          BinaryLogicExpression(
                            VarReferenceExpression('value', null),
                            VarReferenceExpression('prop1', null),
                            LogicOperand.lessThanOrEqual,
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
            await _parseResource('task8/class_with_multiple_constructors');

        expect(
          rootNode.toAst(false),
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
                    <Expression>[
                      VarReferenceExpression("a", null),
                      DecLit("12.1", null)
                    ],
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
        final rootNode = await _parseResource('task8/class_with_properties');

        expect(
          rootNode.toAst(false),
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
        final rootNode = await _parseResource('task8/class_hierarchy');

        expect(
          rootNode.toAst(false),
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
        final rootNode = await _parseResource('task8/private_class');

        expect(
          rootNode.toAst(false),
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
        final root = await _parseResource('task9/object_instance');

        expect(
          root.toAst(false),
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
        final root = await _parseResource('task9/method_call');

        expect(
          root.toAst(false),
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
        final root = await _parseResource('task9/property_assignment');

        expect(
          root.toAst(false),
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

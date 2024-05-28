import 'package:dart2ast_engine/ast/protocol/converter/protobuf2ast/base.dart';
import 'package:dart2ast_engine/dart2ast.dart';
import 'package:dart2ast_engine/ast/protocol.dart' as pb;
import 'package:test/test.dart';

void main() {
  group(
    'Task 1',
    () {
      test(
        'var_definition_statement',
        () async {
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.VARIABLE,
                    name: 'name',
                    value: pb.Expression(
                      stringLit: pb.StringLit(
                        value: '"Simone"',
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.IMMUTABLE,
                    name: 'height',
                    valueType: pb.VariableValueType(name: "double"),
                    value: pb.Expression(
                      decLit: pb.DecLit(
                        value: '1.70',
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.TYPE,
                    name: 'age',
                    valueType: pb.VariableValueType(name: "int"),
                    value: pb.Expression(
                      intLit: pb.IntLit(
                        value: '16',
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.CONSTANT,
                    name: 'isOld',
                    valueType: pb.VariableValueType(name: "bool"),
                    value: pb.Expression(
                      boolLit: pb.BoolLit(
                        value: "false",
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  assignmentStatement: pb.AssignmentStatement(
                    name: 'pi',
                    value: pb.Expression(
                      decLit: pb.DecLit(
                        value: '3.14',
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  expressionDefinitionStatement:
                      pb.ExpressionDefinitionStatement(
                    value: pb.Expression(
                      binaryMathExpression: pb.BinaryMathExpression(
                        left: pb.Expression(
                          parenthesisExpression: pb.ParenthesisExpression(
                            value: pb.Expression(
                              binaryMathExpression: pb.BinaryMathExpression(
                                left: pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '3',
                                  ),
                                ),
                                right: pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '4',
                                  ),
                                ),
                                operand: pb.MathOperand.PLUS,
                              ),
                            ),
                          ),
                        ),
                        right: pb.Expression(
                          parenthesisExpression: pb.ParenthesisExpression(
                            value: pb.Expression(
                              binaryMathExpression: pb.BinaryMathExpression(
                                left: pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '4',
                                  ),
                                ),
                                right: pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '3',
                                  ),
                                ),
                                operand: pb.MathOperand.MINUS,
                              ),
                            ),
                          ),
                        ),
                        operand: pb.MathOperand.TIMES,
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  ifDefinitionStatement: pb.IfDefinitionStatement(
                    ifBlock: pb.IfBlock(
                      condition: pb.Expression(
                        binaryComparisonExpression:
                            pb.BinaryComparisonExpression(
                          left: pb.Expression(
                            varReferenceExpression: pb.VarReferenceExpression(
                              name: 'voto',
                            ),
                          ),
                          right: pb.Expression(
                            intLit: pb.IntLit(
                              value: '18',
                            ),
                          ),
                          operand: pb.ComparisonOperand.GREATER_THAN,
                        ),
                      ),
                      statements: [
                        pb.Statement(
                          assignmentStatement: pb.AssignmentStatement(
                            name: 'exam',
                            value: pb.Expression(
                              stringLit: pb.StringLit(
                                value: '"passed"',
                              ),
                            ),
                          ),
                        ),
                      ],
                      blockType: pb.BlockType.IF_BLOCK,
                    ),
                    elseIfBlocks: [
                      pb.IfBlock(
                        condition: pb.Expression(
                          binaryComparisonExpression:
                              pb.BinaryComparisonExpression(
                            left: pb.Expression(
                              varReferenceExpression: pb.VarReferenceExpression(
                                name: 'voto',
                              ),
                            ),
                            right: pb.Expression(
                              intLit: pb.IntLit(
                                value: '18',
                              ),
                            ),
                            operand: pb.ComparisonOperand.EQUAL,
                          ),
                        ),
                        statements: [
                          pb.Statement(
                            assignmentStatement: pb.AssignmentStatement(
                              name: 'exam',
                              value: pb.Expression(
                                stringLit: pb.StringLit(
                                  value: '"passed"',
                                ),
                              ),
                            ),
                          ),
                        ],
                        blockType: pb.BlockType.ELSE_IF_BLOCK,
                      ),
                    ],
                    elseBlock: pb.IfBlock(
                      statements: [
                        pb.Statement(
                          assignmentStatement: pb.AssignmentStatement(
                            name: 'exam',
                            value: pb.Expression(
                              stringLit: pb.StringLit(
                                value: '"failed"',
                              ),
                            ),
                          ),
                        ),
                      ],
                      blockType: pb.BlockType.ELSE_BLOCK,
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.VARIABLE,
                    name: 'i',
                    valueType: pb.VariableValueType(name: "int"),
                    value: pb.Expression(
                      intLit: pb.IntLit(
                        value: '1',
                      ),
                    ),
                  ),
                ),
                pb.Statement(
                  whileDefinitionStatement: pb.WhileDefinitionStatement(
                    condition: pb.Expression(
                      varReferenceExpression: pb.VarReferenceExpression(
                        name: 'condition',
                      ),
                    ),
                    statements: [
                      pb.Statement(
                        ifDefinitionStatement: pb.IfDefinitionStatement(
                          ifBlock: pb.IfBlock(
                            condition: pb.Expression(
                              binaryComparisonExpression:
                                  pb.BinaryComparisonExpression(
                                left: pb.Expression(
                                  varReferenceExpression:
                                      pb.VarReferenceExpression(
                                    name: 'i',
                                  ),
                                ),
                                right: pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '17',
                                  ),
                                ),
                                operand: pb.ComparisonOperand.LESS_THAN,
                              ),
                            ),
                            statements: [
                              pb.Statement(
                                assignmentStatement: pb.AssignmentStatement(
                                  name: 'i',
                                  value: pb.Expression(
                                    binaryMathExpression:
                                        pb.BinaryMathExpression(
                                      left: pb.Expression(
                                        varReferenceExpression:
                                            pb.VarReferenceExpression(
                                          name: 'i',
                                        ),
                                      ),
                                      right: pb.Expression(
                                        intLit: pb.IntLit(
                                          value: '1',
                                        ),
                                      ),
                                      operand: pb.MathOperand.PLUS,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            blockType: pb.BlockType.IF_BLOCK,
                          ),
                          elseBlock: pb.IfBlock(
                            statements: [
                              pb.Statement(
                                assignmentStatement: pb.AssignmentStatement(
                                  name: 'condition',
                                  value: pb.Expression(
                                    boolLit: pb.BoolLit(
                                      value: 'true',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            blockType: pb.BlockType.ELSE_BLOCK,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.VARIABLE,
                    name: 'a',
                    value: pb.Expression(
                      intLit: pb.IntLit(
                        value: '0',
                      ),
                    ),
                  ),
                ),
                pb.Statement(
                  forDefinitionStatement: pb.ForDefinitionStatement(
                    forCondition: pb.ForCondition(
                      standardForCondition: pb.StandardForCondition(
                        initStatement: pb.ForInitOrIncrementStatement(
                          varDeclarationForStatement:
                              pb.VarDeclarationForStatement(
                            varType: pb.VariableType.TYPE,
                            name: 'i',
                            valueType: pb.VariableValueType(name: "int"),
                            value: pb.Expression(
                              intLit: pb.IntLit(
                                value: '0',
                              ),
                            ),
                          ),
                        ),
                        controlExpression: pb.Expression(
                          binaryComparisonExpression:
                              pb.BinaryComparisonExpression(
                            left: pb.Expression(
                              varReferenceExpression: pb.VarReferenceExpression(
                                name: 'i',
                              ),
                            ),
                            right: pb.Expression(
                              intLit: pb.IntLit(
                                value: '3',
                              ),
                            ),
                            operand: pb.ComparisonOperand.LESS_THAN,
                          ),
                        ),
                        incrementStatement: pb.ForInitOrIncrementStatement(
                          expressionForStatement: pb.ExpressionForStatement(
                            value: pb.Expression(
                              postIncrementExpression:
                                  pb.PostIncrementExpression(
                                name: 'i',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    statements: [
                      pb.Statement(
                        assignmentStatement: pb.AssignmentStatement(
                          name: 'a',
                          value: pb.Expression(
                            binaryMathExpression: pb.BinaryMathExpression(
                              left: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'a',
                                ),
                              ),
                              right: pb.Expression(
                                intLit: pb.IntLit(
                                  value: '1',
                                ),
                              ),
                              operand: pb.MathOperand.PLUS,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.IMMUTABLE,
                    name: 'list',
                    value: pb.Expression(
                      listLiteralExpression: pb.ListLiteralExpression(
                        value: [
                          pb.Expression(
                            intLit: pb.IntLit(
                              value: '1',
                            ),
                          ),
                          pb.Expression(
                            intLit: pb.IntLit(
                              value: '2',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.VARIABLE,
                    name: 'b',
                    value: pb.Expression(
                      intLit: pb.IntLit(
                        value: '0',
                      ),
                    ),
                  ),
                ),
                pb.Statement(
                  forDefinitionStatement: pb.ForDefinitionStatement(
                    forCondition: pb.ForCondition(
                      forEachCondition: pb.ForEachCondition(
                        itemDefinition: pb.ItemDefinition(
                          varType: pb.VariableType.TYPE,
                          name: 'i',
                          valueType: pb.VariableValueType(name: "int"),
                        ),
                        expression: pb.Expression(
                          varReferenceExpression: pb.VarReferenceExpression(
                            name: 'list',
                          ),
                        ),
                      ),
                    ),
                    statements: [
                      pb.Statement(
                        assignmentStatement: pb.AssignmentStatement(
                          name: 'b',
                          value: pb.Expression(
                            binaryMathExpression: pb.BinaryMathExpression(
                              left: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'b',
                                ),
                              ),
                              right: pb.Expression(
                                intLit: pb.IntLit(
                                  value: '1',
                                ),
                              ),
                              operand: pb.MathOperand.PLUS,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  varDeclarationStatement: pb.VariableDeclarationStatement(
                    varType: pb.VariableType.IMMUTABLE,
                    name: 'input',
                    value: pb.Expression(
                      inputExpression: pb.InputExpression(),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  expressionDefinitionStatement:
                      pb.ExpressionDefinitionStatement(
                    value: pb.Expression(
                      outputExpression: pb.OutputExpression(
                        value: pb.Expression(
                          varReferenceExpression: pb.VarReferenceExpression(
                            name: 'input',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
      test(
        'void_function_without_params',
        () async {
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  functionDefinitionStatement: pb.FunctionDefinitionStatement(
                    name: 'emptyFunction',
                    returnType: pb.VariableValueType(name: "void"),
                    statements: [],
                  ),
                ),
              ],
            ).toAst(),
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
        },
      );

      test(
        'int_sum_function',
        () async {
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  functionDefinitionStatement: pb.FunctionDefinitionStatement(
                    name: 'sum',
                    returnType: pb.VariableValueType(name: "int"),
                    parameters: [
                      pb.Parameter(
                        name: 'a',
                        type: pb.ParameterType.TYPED,
                        valueType: pb.VariableValueType(name: "int"),
                      ),
                      pb.Parameter(
                        name: 'b',
                        type: pb.ParameterType.TYPED,
                        valueType: pb.VariableValueType(name: "int"),
                      ),
                    ],
                    statements: [
                      pb.Statement(
                        returnStatement: pb.ReturnStatement(
                          value: pb.Expression(
                            binaryMathExpression: pb.BinaryMathExpression(
                              left: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'a',
                                ),
                              ),
                              right: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'b',
                                ),
                              ),
                              operand: pb.MathOperand.PLUS,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).toAst(),
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
        },
      );

      test(
        'call_function',
        () async {
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  functionDefinitionStatement: pb.FunctionDefinitionStatement(
                    name: 'operations',
                    returnType: pb.VariableValueType(name: "bool"),
                    parameters: [
                      pb.Parameter(
                        name: 'a',
                        type: pb.ParameterType.TYPED,
                        valueType: pb.VariableValueType(name: "int"),
                      ),
                      pb.Parameter(
                        name: 'b',
                        type: pb.ParameterType.TYPED,
                        valueType: pb.VariableValueType(name: "int"),
                      ),
                      pb.Parameter(
                        name: 'c',
                        type: pb.ParameterType.TYPED,
                        valueType: pb.VariableValueType(name: "bool"),
                      ),
                    ],
                    statements: [
                      pb.Statement(
                        varDeclarationStatement:
                            pb.VariableDeclarationStatement(
                          varType: pb.VariableType.VARIABLE,
                          name: 'aIsGreaterThanB',
                          value: pb.Expression(
                            binaryComparisonExpression:
                                pb.BinaryComparisonExpression(
                              left: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'a',
                                ),
                              ),
                              right: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'b',
                                ),
                              ),
                              operand: pb.ComparisonOperand.GREATER_THAN,
                            ),
                          ),
                        ),
                      ),
                      pb.Statement(
                        varDeclarationStatement:
                            pb.VariableDeclarationStatement(
                          varType: pb.VariableType.IMMUTABLE,
                          name: 'isGreaterAndCondition',
                          value: pb.Expression(
                            binaryLogicExpression: pb.BinaryLogicExpression(
                              left: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'aIsGreaterThanB',
                                ),
                              ),
                              right: pb.Expression(
                                varReferenceExpression:
                                    pb.VarReferenceExpression(
                                  name: 'c',
                                ),
                              ),
                              operand: pb.LogicOperand.AND,
                            ),
                          ),
                        ),
                      ),
                      pb.Statement(
                        returnStatement: pb.ReturnStatement(
                          value: pb.Expression(
                            varReferenceExpression: pb.VarReferenceExpression(
                              name: 'isGreaterAndCondition',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                pb.Statement(
                  functionDefinitionStatement: pb.FunctionDefinitionStatement(
                    name: 'main',
                    returnType: pb.VariableValueType(name: "void"),
                    statements: [
                      pb.Statement(
                        varDeclarationStatement:
                            pb.VariableDeclarationStatement(
                          varType: pb.VariableType.IMMUTABLE,
                          name: 'result',
                          value: pb.Expression(
                            functionCallExpression: pb.FunctionCallExpression(
                              name: 'operations',
                              parameters: [
                                pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '11',
                                  ),
                                ),
                                pb.Expression(
                                  intLit: pb.IntLit(
                                    value: '12',
                                  ),
                                ),
                                pb.Expression(
                                  boolLit: pb.BoolLit(
                                    value: 'false',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).toAst(),
            equals(
              ProgramFile(
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
              ),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                classDefinitionStatement: pb.ClassDefinitionStatement(
                  name: 'SimpleClass',
                  encapsulation: pb.EncapsulationType.PUBLIC,
                  properties: [],
                  constructors: [],
                  methods: [],
                ),
              ),
            ],
          ).toAst(),
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
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  classDefinitionStatement: pb.ClassDefinitionStatement(
                    name: 'SimpleClass',
                    encapsulation: pb.EncapsulationType.PUBLIC,
                    properties: [
                      pb.VariableDeclarationStatement(
                        varType: pb.VariableType.IMMUTABLE,
                        name: 'prop1',
                        valueType: pb.VariableValueType(name: "int"),
                      ),
                      pb.VariableDeclarationStatement(
                        varType: pb.VariableType.TYPE,
                        name: 'pro2',
                        valueType: pb.VariableValueType(name: "bool"),
                      ),
                    ],
                    constructors: [
                      pb.ConstructorDefinitionStatement(
                        className: 'SimpleClass',
                        parameters: [
                          pb.Parameter(
                            name: 'prop1',
                            type: pb.ParameterType.THIS,
                          ),
                          pb.Parameter(
                            name: 'pro2',
                            type: pb.ParameterType.THIS,
                          ),
                        ],
                      ),
                    ],
                    methods: [
                      pb.FunctionDefinitionStatement(
                        name: 'sum',
                        returnType: pb.VariableValueType(name: "int"),
                        parameters: [
                          pb.Parameter(
                            name: 'value',
                            type: pb.ParameterType.TYPED,
                            valueType: pb.VariableValueType(name: "int"),
                          ),
                        ],
                        statements: [
                          pb.Statement(
                            assignmentStatement: pb.AssignmentStatement(
                              name: 'pro2',
                              value: pb.Expression(
                                binaryComparisonExpression:
                                    pb.BinaryComparisonExpression(
                                  left: pb.Expression(
                                    varReferenceExpression:
                                        pb.VarReferenceExpression(
                                      name: 'value',
                                    ),
                                  ),
                                  right: pb.Expression(
                                    varReferenceExpression:
                                        pb.VarReferenceExpression(
                                      name: 'prop1',
                                    ),
                                  ),
                                  operand:
                                      pb.ComparisonOperand.LESS_THAN_OR_EQUAL,
                                ),
                              ),
                            ),
                          ),
                          pb.Statement(
                            returnStatement: pb.ReturnStatement(
                              value: pb.Expression(
                                binaryMathExpression: pb.BinaryMathExpression(
                                  left: pb.Expression(
                                    varReferenceExpression:
                                        pb.VarReferenceExpression(
                                      name: 'value',
                                    ),
                                  ),
                                  right: pb.Expression(
                                    varReferenceExpression:
                                        pb.VarReferenceExpression(
                                      name: 'prop1',
                                    ),
                                  ),
                                  operand: pb.MathOperand.PLUS,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ).toAst(),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                classDefinitionStatement: pb.ClassDefinitionStatement(
                  name: 'MultiplePass',
                  encapsulation: pb.EncapsulationType.PUBLIC,
                  properties: [
                    pb.VariableDeclarationStatement(
                      varType: pb.VariableType.IMMUTABLE,
                      name: 'a',
                      valueType: pb.VariableValueType(name: "int"),
                    ),
                    pb.VariableDeclarationStatement(
                      varType: pb.VariableType.TYPE,
                      name: 'b',
                      valueType: pb.VariableValueType(name: "double"),
                    ),
                  ],
                  constructors: [
                    pb.ConstructorDefinitionStatement(
                      className: 'MultiplePass',
                      parameters: [
                        pb.Parameter(
                          name: 'a',
                          type: pb.ParameterType.THIS,
                        ),
                        pb.Parameter(
                          name: 'b',
                          type: pb.ParameterType.THIS,
                        ),
                      ],
                    ),
                    pb.ConstructorDefinitionStatement(
                      className: 'MultiplePass',
                      constructorName: 'test',
                      parameters: [
                        pb.Parameter(
                          name: 'a',
                          type: pb.ParameterType.TYPED,
                          valueType: pb.VariableValueType(name: "int"),
                        ),
                      ],
                      thisConstructor: pb.ThisConstructorDefinition(
                        parameters: [
                          pb.Expression(
                            varReferenceExpression: pb.VarReferenceExpression(
                              name: 'a',
                            ),
                          ),
                          pb.Expression(
                            decLit: pb.DecLit(
                              value: '12.1',
                            ),
                          ),
                        ],
                      ),
                      body: [],
                    ),
                  ],
                  methods: [],
                ),
              ),
            ],
          ).toAst(),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                classDefinitionStatement: pb.ClassDefinitionStatement(
                  name: 'SimpleClass',
                  encapsulation: pb.EncapsulationType.PUBLIC,
                  properties: [
                    pb.VariableDeclarationStatement(
                      varType: pb.VariableType.IMMUTABLE,
                      name: 'prop1',
                      valueType: pb.VariableValueType(name: "int"),
                    ),
                    pb.VariableDeclarationStatement(
                      varType: pb.VariableType.TYPE,
                      name: 'pro2',
                      valueType: pb.VariableValueType(name: "bool"),
                    ),
                  ],
                  constructors: [
                    pb.ConstructorDefinitionStatement(
                      className: 'SimpleClass',
                      parameters: [
                        pb.Parameter(
                          name: 'prop1',
                          type: pb.ParameterType.THIS,
                        ),
                        pb.Parameter(
                          name: 'pro2',
                          type: pb.ParameterType.THIS,
                        ),
                      ],
                    ),
                  ],
                  methods: [],
                ),
              ),
            ],
          ).toAst(),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                classDefinitionStatement: pb.ClassDefinitionStatement(
                  name: 'SecretWars',
                  encapsulation: pb.EncapsulationType.PUBLIC,
                  parentName: 'Marvel',
                  properties: [],
                  constructors: [],
                  methods: [],
                ),
              ),

            ],
          ).toAst(),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                classDefinitionStatement: pb.ClassDefinitionStatement(
                  name: 'SecretWar',
                  encapsulation: pb.EncapsulationType.PRIVATE,
                  properties: [],
                  constructors: [],
                  methods: [],
                ),
              ),
            ],
          ).toAst(),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                varDeclarationStatement: pb.VariableDeclarationStatement(
                  varType: pb.VariableType.IMMUTABLE,
                  name: 'element',
                  value: pb.Expression(
                    functionCallExpression: pb.FunctionCallExpression(
                      name: 'ClassToInstance',
                      parameters: [],
                    ),
                  ),
                ),
              ),
            ],
          ).toAst(),
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
        expect(
          pb.ProgramFile(
            lines: [
              pb.Statement(
                expressionDefinitionStatement: pb.ExpressionDefinitionStatement(
                  value: pb.Expression(
                    objectMethodCallExpression: pb.ObjectMethodCallExpression(
                      objectName: 'element',
                      methodName: 'execute',
                      parameters: [],
                    ),
                  ),
                ),
              ),
            ],
          ).toAst(),
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

      test(
        'property_assignment',
        () async {
          expect(
            pb.ProgramFile(
              lines: [
                pb.Statement(
                  objectPropertyAssignmentStatement:
                      pb.ObjectPropertyAssignmentStatement(
                    objectName: 'element',
                    propertyName: 'name',
                    value: pb.Expression(
                      stringLit: pb.StringLit(
                        value: '"Pacco"',
                      ),
                    ),
                  ),
                ),
              ],
            ).toAst(),
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
        },
      );
    },
  );
}

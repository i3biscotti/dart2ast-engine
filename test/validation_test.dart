import 'package:dart2ast_engine/dart2ast.dart';
import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  test('variables_errors', () async {
    final root = await parseResource2Ast('validation/variable_errors');

    final errors = root.validate().map((e) => e.runtimeType).toList();

    expect(
      errors,
      equals(<Type>[
        VarNotDeclaredError,
        VarImmutableError,
        VarAlreadyDeclaredError,
        VarTypeMismatchError,
        VarValueNotAssigned,
      ]),
    );
  });

  test('control_statements_errors', () async {
    final root = await parseResource2Ast('validation/control_statement_errors');

    final errors = root.validate().map((e) => e.runtimeType).toList();

    expect(
      errors,
      equals(<Type>[
        ExpressionMismatchError,
        ExpressionMismatchError,
      ]),
    );
  });

  test('missing_main_function', () async {
    final root = await parseResource2Ast('validation/missing_main_function');

    final errors = root.validate().map((e) => e.runtimeType).toList();

    expect(
      errors,
      equals(<Type>[
        MissingMainFunctionError,
      ]),
    );
  });

  test('function_errors', () async {
    final root = await parseResource2Ast('validation/function_errors', true);
    final errors = root.validate().map((e) => e.runtimeType).toList();

    expect(
      errors,
      equals(<Type>[
        FunctionMissingReturnError,
        FunctionReturnNotAllowedError,
        FunctionSignMismatchError,
        FunctionNotDefinedError,
      ]),
    );
  });

  test('class_errors', () async {
    final root = await parseResource2Ast('validation/class_errors');

    final errors = root.validate().map((e) => e.runtimeType).toList();

    expect(
      errors,
      equals(<Type>[
        ClassPropertyNotDefinedError,
        ClassMethodNotDefinedError,
        FunctionNotDefinedError,
      ]),
    );
  });
}

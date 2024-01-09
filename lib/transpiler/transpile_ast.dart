import '../ast.dart';

extension ExpressionTranspilerExtension on Expression {
  String Transpile() {
    return switch (this) {
      IntLit intlit => intlit.value,
      DecLit declit => declit.value,
      BoolLit boollit => boollit.value,
      StringLit stringlit => stringlit.value,
      _ => throw UnimplementedError()
    };
  }
}

extension StatementTranspilerExtension on Statement {
  String Transpile() {
    return switch (this) {
      VariableDeclarationStatement st => st.Transpile(),
      AssignmentStatement st => st.Transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension VariableDeclarationStatementTranspilerExtension
    on VariableDeclarationStatement {
  String Transpile() {
    String variableTypeTranspiler = switch (varType) {
      VariableType.variable => 'var',
      VariableType.immutable => 'final',
      VariableType.constant => 'const',
    };
    String variableValueTypeTranspiler = switch (valueType) {
      VariableValueType.Int => 'int',
      VariableValueType.Double => 'double',
      VariableValueType.String => 'String',
      VariableValueType.Boolean => 'bool',
      VariableValueType.Reference => '',
      null => '',
      _ => throw UnimplementedError()
    };
    String valueTranspiler = value.Transpile();
    String statement =
        '$variableTypeTranspiler $variableValueTypeTranspiler $name = $valueTranspiler;';
    return statement;
  }
}

extension AssignmentStatementTranspilerExtension on AssignmentStatement {
  String Transpile() {
    String valueTranspiler = value.Transpile();
    String statement = '$name = $valueTranspiler;';
    return statement;
  }
}

extension NodeTranspilerExtension on Node {
  String Transpile() {
    return switch (this) {
      ProgramFile df => df.Transpile(),
      Statement st => st.Transpile(),
      Expression ex => ex.Transpile(),
      _ => throw UnimplementedError()
    };
  }
}

extension DartFileTranspilerExtension on ProgramFile {
  String Transpile() {
    final linesTranspiled = lines.map((l) => l.Transpile()).join('\n');
    return linesTranspiled;
  }
}

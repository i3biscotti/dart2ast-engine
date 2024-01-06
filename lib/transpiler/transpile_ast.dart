import '../ast.dart';

extension ExpressionTranspilerExtension on Expression{
  String Transpile(){
    return switch(this){
      IntLit intlit => intlit.value,
      DecLit declit => declit.value,
      BoolLit boollit => boollit.value,
      StringLit stringlit => stringlit.value,
      _ => throw UnimplementedError()
    };
  } 
}

extension StatementTranspilerExtension on Statement{
 String Transpile(){
  return switch(this){
    VariableDeclarationStatement st => st.Transpile(),
    AssignmentStatement st => st.Transpile(),
    _ => throw UnimplementedError()
  };
 }
}

extension VariableDeclarationStatementTranspilerExtension on VariableDeclarationStatement{
 String Transpile(){
  String variableTypeTranspiler = switch(type){
    VariableType.variable => 'var',
    VariableType.immutable => 'final',
    VariableType.constant => 'const',
    _ => throw UnimplementedError()
  };
  String variableValueTypeTranspiler = switch(valueType){
    VariableValueType.Int => 'int',
    VariableValueType.Double => 'double',
    VariableValueType.String => 'String',
    VariableValueType.Boolean => 'bool',
    _ => throw UnimplementedError()
  };
  String valueTranspiler = value.Transpile();
  String statement = '$variableTypeTranspiler $variableValueTypeTranspiler $name = $valueTranspiler;';
  return statement;
 }
}

extension AssignmentStatementTranspilerExtension on AssignmentStatement{
 String Transpile(){
 String valueTranspiler = value.Transpile();
  String statement = '$name = $valueTranspiler;';
  return statement;
 }
}

extension NodeTranspilerExtension on Node {
  String Transpile(){
   return switch(this){
    DartFile df => df.Transpile(),
    Statement st => st.Transpile(),
    Expression ex => ex.Transpile(),
    _ => throw UnimplementedError()
   };
 }
}

extension DartFileTranspilerExtension on DartFile {
   String Transpile(){
    final linesTranspiled = lines.map((l) => l.Transpile()).join('\n');
   return linesTranspiled;
 }
}


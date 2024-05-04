import 'package:dart2ast_engine/dart2ast.dart';

VariableValueType extractType(ScopeContext context, Expression e) =>
    switch (e) {
      IntLit _ => VariableValueType.INT,
      DecLit _ => VariableValueType.DOUBLE,
      BoolLit _ => VariableValueType.BOOLEAN,
      StringLit _ => VariableValueType.STRING,
      BinaryComparisonExpression _ => VariableValueType.BOOLEAN,
      BinaryExpression e => extractType(context, e.left),
      UnaryLogicExpression _ => VariableValueType.BOOLEAN,
      UnaryMathExpression e => extractType(context, e.value),
      ParenthesysExpression e => extractType(context, e.value),
      VarReferenceExpression e => context.read<VariableSign>(e.name)!.type,
      FunctionCallExpression e => _extractTypeFromFunctionOrClassConstructor(
          e,
          context,
        ),
      ObjectMethodCallExpression call => _extractTypeFromClassMethod(
          call,
          context,
        ),
      ObjectPropertyReferenceExpression ref => _extractTypeFromObjectProperty(
          ref,
          context,
        ),
      _ => throw UnsupportedError('Unknown expression type')
    };

VariableValueType _extractTypeFromFunctionOrClassConstructor(
  FunctionCallExpression e,
  ScopeContext context,
) {
  final classFound = context.read<ClassSign>(e.name);
  final functionFound = context.read<FunctionSign>(e.name);

  if (classFound != null) {
    return VariableValueType(e.name);
  } else if (functionFound != null) {
    return functionFound.returnType;
  } else {
    throw UnsupportedError('Unknown expression type');
  }
}

ClassSign _getClassFromObject(ScopeContext context, String objectName) {
  final objectVariable = context.read<VariableSign>(objectName);

  if (objectVariable == null) {
    throw Exception('${objectName} is not declared yet');
  }

  return _getClassFromContext(context, objectVariable.type.typeName);
}

ClassSign _getClassFromContext(ScopeContext context, String className) {
  final classSign = context.read<ClassSign>(className);

  if (classSign == null) {
    throw Exception('$className class is not defined');
  }

  return classSign;
}

VariableValueType _extractTypeFromClassMethod(
  ObjectMethodCallExpression e,
  ScopeContext context,
) {
  final classSign = _getClassFromObject(context, e.objectName);

  final methodSign = classSign.methods.firstWhere(
    (m) => m.name == e.methodName,
    orElse: () => throw Exception('${e.methodName} method is not defined'),
  );

  return methodSign.returnType;
}

VariableValueType _extractTypeFromObjectProperty(
  ObjectPropertyReferenceExpression e,
  ScopeContext context,
) {
  final classSign = _getClassFromObject(context, e.objectName);

  final propertySign = classSign.properties.firstWhere(
    (m) => m.name == e.propertyName,
    orElse: () => throw Exception('${e.propertyName} property is not defined'),
  );

  return propertySign.type;
}

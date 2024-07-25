import 'package:dart2ast_engine/dart2ast.dart';
import 'package:uuid/uuid.dart';

typedef ProcessOperationCallback = void Function(Node node, ScopeContext scope);

String generateScopeId() => Uuid().v8();

extension NodeProcessExtension on Node {
  void process(
    ProcessOperationCallback operation, [
    ScopeContext scope = const ScopeContext(),
  ]) {
    final _ = switch (this) {
      ProgramFile n => n.process(operation, ScopeContext.rootScope),
      Statement n => n.process(operation, scope),
      Expression n => n.process(operation, scope),
      IfBlock n => n.process(operation, scope),
      _ => throw UnsupportedError('Unknown node type')
    };
  }
}

extension ProgramFileProcessExtension on ProgramFile {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    final globalScope = _prepareNewScope(scope, lines);

    for (var line in lines) {
      line.process(operation, globalScope);
    }
  }
}

extension StatementProcessExtension on Statement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    final _ = switch (this) {
      VariableDeclarationStatement s => s.process(operation, scope),
      AssignmentStatement s => s.value.process(operation, scope),
      ExpressionDefinitionStatement s => s.value.process(operation, scope),
      IfDefinitionStatement s => s.process(operation, scope),
      WhileDefinitionStatement s => s.process(operation, scope),
      ForDefinitionStatement s => s.process(operation, scope),
      FunctionDefinitionStatement s => s.process(operation, scope),
      ClassDefinitionStatement s => s.process(operation, scope),
      ReturnStatement s => s.value.process(operation, scope),
      ObjectPropertyAssignmentStatement s => s.value.process(operation, scope),
      _ => throw UnsupportedError('Unknown statement type ${this.runtimeType}')
    };
  }
}

ScopeContext _prepareNewScope(
  ScopeContext scope,
  List<Statement> StatementsBlock,
) {
  final functions =
      StatementsBlock.whereType<FunctionDefinitionStatement>().map(
    (e) {
      return FunctionSign(
        e.name,
        e.returnType!,
        e.parameters.map((p) => ParamSign(p.name, p.valueType!)).toList(),
        e.position,
      );
    },
  );

  final declaredFunctions = Map.fromEntries(
    functions.map((e) => MapEntry(e.name, e)),
  );

  final classesFound = StatementsBlock.whereType<ClassDefinitionStatement>();

  final classSigns = classesFound.map((e) => _generateClassSign(scope, e));

  final declaredClasses = Map.fromEntries(
    classSigns.map((e) => MapEntry(e.name, e)),
  );

  final classConstructorFunctions = classesFound
      .expand((e) => e.constructors)
      .map((c) => _generateConstructorFunctionSign(c, declaredClasses[c.className]!));

  declaredFunctions.addEntries(
    classConstructorFunctions.map((e) => MapEntry(e.name, e)),
  );

  final newScope = scope.wrap(
    declaredClasses: declaredClasses,
    declaredFunctions: declaredFunctions,
    declaredVariables: {},
  );

  return newScope;
}

FunctionSign _generateFunctionSign(FunctionDefinitionStatement statement) {
  return FunctionSign(
    statement.name,
    statement.returnType!,
    statement.parameters.map((e) => ParamSign(e.name, e.valueType!)).toList(),
    statement.position,
  );
}

FunctionSign _generateConstructorFunctionSign(
  ConstructorDefinitionStatement constr,
    ClassSign classSign,
) {
  var functionName = constr.className;
  functionName +=
      constr.constructorName != null ? '.' + constr.constructorName! : '';


  final constrParams = constr.parameters.map((e) {
    final valueType = e.valueType ??
        classSign.properties
            .firstWhere(
              (p) => p.name == e.name,
            )
            .type;

    return ParamSign(e.name, valueType);
  }).toList();

  return FunctionSign(
    functionName,
    VariableValueType(constr.className),
    constrParams,
    constr.position,
  );
}

ClassSign _generateClassSign(
  ScopeContext context,
  ClassDefinitionStatement statement,
) {
  final classProperties = statement.properties.map((e) {
    return VariableSign(
      e.name,
      e.valueType ?? extractType(context, e.value!),
      true,
      e.position,
    );
  }).toList();

  final classMethods = statement.methods.map(_generateFunctionSign).toList();

  final classSign = ClassSign(
    statement.name,
    classProperties,
    classMethods,
    {},
    statement.position,
  );

  return classSign;
}

extension VariableDeclarationStatementExtension
    on VariableDeclarationStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    value?.process(operation, scope);

    late VariableSign sign;

    try {
      sign = VariableSign(
        name,
        valueType ?? extractType(scope, value!),
        varType == VariableType.variable || varType == VariableType.type,
        position,
      );
    } catch (e) {
      sign = VariableSign(
        name,
        VariableValueType.DYNAMIC,
        varType == VariableType.variable || varType == VariableType.type,
        position,
      );
    }

    scope.declaredVariables[name] = sign;
  }
}

extension ClassDefinitionStatementProcessExtension on ClassDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    for (var property in properties) {
      property.process(operation, scope);
    }

    final childContext = _prepareNewScope(scope, []);

    childContext.declaredVariables.addEntries(
      properties.map((e) {
        return MapEntry(
          e.name,
          VariableSign(
            e.name,
            e.valueType ?? extractType(scope, e.value!),
            e.varType == VariableType.type,
            e.position,
          ),
        );
      }),
    );

    childContext.declaredFunctions.addEntries(
      methods.map(_generateFunctionSign).map((e) => MapEntry(e.name, e)),
    );

    final classSign = childContext.read<ClassSign>(name)!;

    childContext.declaredFunctions.addEntries(
      constructors
          .map((c) => _generateConstructorFunctionSign(c, classSign))
          .map((e) => MapEntry(e.name, e)),
    );

    for (var method in methods) {
      method.process(operation, scope);
    }

    for (var constructor in constructors) {
      constructor.process(operation, scope);
    }
  }
}

extension ConstructorDefinitionStatementProcessExtension
    on ConstructorDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final newScope = _prepareNewScope(scope, []);

    for (var statement in body) {
      statement.process(operation, newScope);
    }
  }
}

extension ExpressionTransformExtension on Expression {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    operation(this, scope);

    final _ = switch (this) {
      BinaryExpression e => e
        ..right.process(operation, scope)
        ..left.process(operation, scope),
      UnaryLogicExpression e => e.value.process(operation, scope),
      UnaryMathExpression e => e.value.process(operation, scope),
      ParenthesisExpression e => e.value.process(operation, scope),
      OutputExpression e => e.value.process(operation, scope),
      ObjectMethodCallExpression e => e.process(operation, scope),
      VarReferenceExpression _ => null,
      IntLit _ => null,
      DecLit _ => null,
      BoolLit _ => null,
      StringLit _ => null,
      PostDecrementExpression _ => null,
      PostIncrementExpression _ => null,
      PreDecrementExpression _ => null,
      PreIncrementExpression _ => null,
      FunctionCallExpression _ => null,
      InputExpression _ => null,
      ObjectPropertyReferenceExpression _ => null,
      _ => throw UnsupportedError(
          'Unknown expression type ${this.runtimeType}',
        ),
    };
  }
}

extension ForDefinitionStatementProcessExtension on ForDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final newScope = _prepareNewScope(scope, []);

    switch (forCondition) {
      case ForEachCondition c:
        operation(c.itemDefinition, newScope);
        operation(c.expression, newScope);

        final isMutable = c.itemDefinition.varType == VariableType.variable ||
            c.itemDefinition.varType == VariableType.type;

        newScope.declaredVariables[c.itemDefinition.name] = VariableSign(
          c.itemDefinition.name,
          VariableValueType.DYNAMIC,
          isMutable,
          c.position,
        );

        break;
      case StandardForCondition c:
        operation(c.initStatement, newScope);

        if (c.initStatement is VarDeclarationForStatement) {
          final variable = c.initStatement as VarDeclarationForStatement;
          final isMutable = variable.varType == VariableType.variable ||
              variable.varType == VariableType.type;

          newScope.declaredVariables[variable.name] = VariableSign(
            variable.name,
            variable.valueType ?? extractType(newScope, variable.value!),
            isMutable,
            variable.position,
          );
        }

        operation(c.controlExpression, newScope);
        operation(c.incrementStatement, newScope);

        break;
    }

    for (var statement in statements) {
      statement.process(operation, newScope);
    }
  }
}

extension WhileDefinitionStatementProcessExtension on WhileDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final childContext = scope.wrap();

    for (var statement in statements) {
      statement.process(operation, childContext);
    }
  }
}

extension IfDefinitionStatementProcessExtension on IfDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    _processBlock(ifBlock, operation, scope);

    elseIfBlocks.forEach((block) => _processBlock(block, operation, scope));

    if (elseBlock != null) {
      _processBlock(elseBlock!, operation, scope);
    }
  }

  _processBlock(
    IfBlock block,
    ProcessOperationCallback operation,
    ScopeContext scope,
  ) {
    final childContext = _prepareNewScope(scope, []);

    for (var statement in block.statements) {
      statement.process(operation, childContext);
    }
  }
}

extension FunctionDefinitionStatementProcessExtension
    on FunctionDefinitionStatement {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    final childContext = _prepareNewScope(scope, body);

    childContext.declaredVariables.addEntries(
      parameters.map((e) {
        return MapEntry(
          e.name,
          VariableSign(e.name, e.valueType!, true, e.position),
        );
      }),
    );

    for (var statement in body) {
      statement.process(operation, childContext);
    }
  }
}

extension ObjectMethodCallExpressionProcessExtension
    on ObjectMethodCallExpression {
  void process(ProcessOperationCallback operation, ScopeContext scope) {
    for (var param in parameters) {
      param.process(operation, scope);
    }
  }
}

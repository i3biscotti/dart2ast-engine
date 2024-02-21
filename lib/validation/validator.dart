import 'package:dart2ast_engine/dart2ast.dart';

extension ScriptFileValidator on ProgramFile {
  List<LangError> validate() {
    final errors = <LangError>[];

    errors.addAll(_checkGlobalErrors());
    errors.addAll(_getVariableErrors());
    errors.addAll(_getClassErrors());
    errors.addAll(_getFunctionErrors());
    errors.addAll(_getIfErrors());
    errors.addAll(_getForErrors());
    errors.addAll(_getWhileErrors());

    return errors;
  }

  List<ValidationError> _checkGlobalErrors(){
    final errors = <ValidationError>[];

    final hasMainFunction = this.lines
        .whereType<FunctionDefinitionStatement>()
        .any((f) => f.name == "main" && f.returnType == VariableValueType.VOID);

    if(!hasMainFunction){
      errors.add(MissingMainFunctionError(Point(0,0)));
    }

    return errors;
  }

  List<ValidationError> _getVariableErrors() {
    final errors = <ValidationError>[];

    specificProcess<VariableDeclarationStatement>((node, scope) {
      if (scope.read<VariableSign>(node.name) != null) {
        errors.add(VarAlreadyDeclaredError(node.name, node.position!.start));
      }

      if (node.value != null) {
        final expressionType = extractType(scope, node.value!);

        if (node.valueType != null && expressionType != node.valueType) {
          errors.add(
            VarTypeMismatchError(
              node.name,
              node.valueType!.typeName,
              expressionType.typeName,
              node.value!.position!.start,
            ),
          );
        }
      } else {
        errors.add(VarValueNotAssigned(node.name, node.position!.start));
      }
    });

    specificProcess<VarReferenceExpression>((node, scope) {
      if (scope.read<VariableSign>(node.name) == null) {
        errors.add(
          VarNotDeclaredError(node.name, node.position!.start),
        );
      }
    });

    specificProcess<AssignmentStatement>((node, scope) {
      final varSign = scope.read<VariableSign>(node.name);
      final expressionType = extractType(scope, node.value);

      if (varSign == null) {
        errors.add(VarNotDeclaredError(node.name, node.position!.start));

        return;
      }

      if (!varSign.isMutable) {
        errors.add(VarImmutableError(node.name, node.position!.start));
      } else if (varSign.type != expressionType) {
        errors.add(
          VarTypeMismatchError(
            node.name,
            varSign.type.typeName,
            expressionType.typeName,
            node.value.position!.start,
          ),
        );
      }
    });

    return errors;
  }

  List<ValidationError> _getClassErrors() {
    final errors = <ValidationError>[];

    specificProcess<ClassDefinitionStatement>((node, scope) {
      if (scope.read<ClassSign>(node.name) != null) {
        errors.add(ClassAlreadyDeclaredError(node.name, node.position!.start));
      }
    });

    specificProcess<ObjectPropertyAssignmentStatement>((node, scope) {
      final variable = scope.read<VariableSign>(node.objectName);

      if (variable != null) {
        final className = variable.type.typeName;
        final classSign = scope.read<ClassSign>(className);

        final hasProperty =
            classSign!.properties.any((prop) => prop.name == node.propertyName);

        if (!hasProperty) {
          errors.add(
            ClassPropertyNotDefinedError(
              className,
              node.propertyName,
              node.position!.start,
            ),
          );
        }
      } else {
        errors.add(
          VarNotDeclaredError(node.objectName, node.position!.start),
        );
      }
    });

    specificProcess<ObjectPropertyReferenceExpression>((node, scope) {
      final variable = scope.read<VariableSign>(node.objectName);

      if (variable != null) {
        final className = variable.type.typeName;
        final classSign = scope.read<ClassSign>(className);

        final hasProperty =
            classSign!.properties.any((prop) => prop.name == node.propertyName);

        if (!hasProperty) {
          errors.add(
            ClassPropertyNotDefinedError(
              className,
              node.propertyName,
              node.position!.start,
            ),
          );
        }
      } else {
        errors.add(
          VarNotDeclaredError(node.objectName, node.position!.start),
        );
      }
    });

    specificProcess<ObjectMethodCallExpression>((node, scope) {
      final variable = scope.read<VariableSign>(node.objectName);

      if (variable != null) {
        final className = variable.type.typeName;
        final classSign = scope.read<ClassSign>(className);

        final method = classSign!.methods
            .where((prop) => prop.name == node.methodName)
            .firstOrNull;

        if (method == null) {
          errors.add(
            ClassMethodNotDefinedError(
              className,
              node.methodName,
              node.position!.start,
            ),
          );
        } else {
          final methodParams =
              method.parameters.map((e) => e.type.typeName).toList();
          final callParams = node.parameters
              .map((e) => extractType(scope, e).typeName)
              .toList();

          if (methodParams != callParams) {
            errors.add(
              FunctionSignMismatchError(
                "$className.${node.methodName}",
                "(${methodParams.join(", ")})",
                "(${callParams.join(", ")})",
                node.position!.start,
              ),
            );
          }
        }
      } else {
        errors.add(
          VarNotDeclaredError(
            node.objectName,
            node.position!.start,
          ),
        );
      }
    });

    return errors;
  }

  List<ValidationError> _getFunctionErrors() {
    final errors = <ValidationError>[];

    specificProcess<FunctionDefinitionStatement>((node, scope) {
      final hasReturn = node.body.whereType<ReturnStatement>().isNotEmpty;

      if (scope.read<FunctionSign>(node.name) != null) {
        errors.add(
          FunctionAlreadyDefinedError(
            node.name,
            node.position!.start,
          ),
        );
      } else if (!hasReturn && node.returnType != VariableValueType.VOID) {
        errors.add(
          FunctionMissingReturnError(
            node.name,
            node.position!.start,
          ),
        );
      } else if (hasReturn && node.returnType == VariableValueType.VOID) {
        errors.add(
          FunctionReturnNotAllowedError(
            node.name,
            node.position!.start,
          ),
        );
      } else if (hasReturn && node.returnType != null) {
        final returnType = extractType(
          scope,
          node.body.whereType<ReturnStatement>().last.value,
        );

        if (returnType != node.returnType) {
          errors.add(
            FunctionReturnTypeMismatchError(
              node.name,
              node.returnType!.typeName,
              returnType.typeName,
              node.position!.start,
            ),
          );
        }
      }
    });

    specificProcess<FunctionCallExpression>((node, scope) {
      final function = scope.read<FunctionSign>(node.name);

      if (function != null) {
        final functionParams =
            function.parameters.map((e) => e.type.typeName).toList();
        final callParams =
            node.parameters.map((e) => extractType(scope, e).typeName).toList();

        if (functionParams != callParams) {
          errors.add(
            FunctionSignMismatchError(
              node.name,
              "(${functionParams.join(", ")})",
              "(${callParams.join(", ")})",
              node.position!.start,
            ),
          );
        }
      } else {
        errors.add(
          FunctionNotDefinedError(
            node.name,
            node.position!.start,
          ),
        );
      }
    });

    return errors;
  }

  List<ValidationError> _getIfErrors() {
    final errors = <ValidationError>[];

    specificProcess<IfDefinitionStatement>(
      (node, context) {
        [
          node.ifBlock,
          ...node.elseIfBlocks,
        ].forEach(
          (ifBlock) {
            final conditionType = extractType(context, ifBlock.condition!);

            if (conditionType != VariableValueType.BOOLEAN) {
              errors.add(
                ExpressionMismatchError(
                  VariableValueType.BOOLEAN.typeName,
                  conditionType.typeName,
                  ifBlock.position!.start,
                ),
              );
            }
          },
        );
      },
    );

    return errors;
  }

  List<ValidationError> _getWhileErrors() {
    final errors = <ValidationError>[];

    specificProcess<WhileDefinitionStatement>(
      (node, context) {
        final conditionType = extractType(context, node.condition!);

        if (conditionType != VariableValueType.BOOLEAN) {
          errors.add(
            ExpressionMismatchError(
              VariableValueType.BOOLEAN.typeName,
              conditionType.typeName,
              node.position!.start,
            ),
          );
        }
      },
    );

    return errors;
  }

  List<ValidationError> _getForErrors() {
    final errors = <ValidationError>[];

    specificProcess<ForDefinitionStatement>(
      (node, context) {
        if (node.forCondition is StandardForCondition) {
          final condition = node.forCondition as StandardForCondition;
          final controlConditionType =
              extractType(context, condition.controlExpression);

          if (controlConditionType != VariableValueType.BOOLEAN) {
            errors.add(
              ExpressionMismatchError(
                VariableValueType.BOOLEAN.typeName,
                controlConditionType.typeName,
                node.position!.start,
              ),
            );
          }
        }
      },
    );

    return errors;
  }
}
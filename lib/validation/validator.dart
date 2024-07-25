import 'package:dart2ast_engine/dart2ast.dart';
import 'processor/processor.dart';
import 'package:collection/collection.dart';

extension ScriptFileValidator on ProgramFile {
  List<LangError> validate() {
    final errors = <LangError>[];

    final programProcessor = NodeProcessor(this);
    final addErrorCallback = (LangError error) => errors.add(error);

    errors.addAll(_checkGlobalErrors());
    _getVariableErrors(programProcessor, addErrorCallback);
    _getClassErrors(programProcessor, addErrorCallback);
    _getFunctionErrors(programProcessor, addErrorCallback);
    _getIfErrors(programProcessor, addErrorCallback);
    _getForErrors(programProcessor, addErrorCallback);
    _getWhileErrors(programProcessor, addErrorCallback);

    programProcessor.process();

    return errors;
  }

  List<ValidationError> _checkGlobalErrors() {
    final errors = <ValidationError>[];

    final hasMainFunction = this
        .lines
        .whereType<FunctionDefinitionStatement>()
        .any((f) => f.name == "main" && f.returnType == VariableValueType.VOID);

    if (!hasMainFunction) {
      errors.add(MissingMainFunctionError(Point(0, 0)));
    }

    return errors;
  }

  void _getVariableErrors(
    NodeProcessor processor,
    void Function(LangError error) addErrorCallback,
  ) {
    processor.addProcess<VariableDeclarationStatement>((node, scope) {
      if (scope.read<VariableSign>(node.name) != null) {
        addErrorCallback(
            VarAlreadyDeclaredError(node.name, node.position?.start));
      }

      if (node.value != null) {
        late VariableValueType expressionType;

        try {
          expressionType = extractType(scope, node.value!);
        } catch (e) {
          expressionType = VariableValueType.DYNAMIC;
        }

        if(expressionType == VariableValueType.DYNAMIC) return;

        if (node.valueType != null && expressionType != node.valueType) {
          addErrorCallback(
            VarTypeMismatchError(
              node.name,
              node.valueType!.typeName,
              expressionType.typeName,
              node.value!.position?.start,
            ),
          );
        }
      } else {
        addErrorCallback(VarValueNotAssigned(node.name, node.position?.start));
      }
    });

    processor.addProcess<VarReferenceExpression>((node, scope) {
      if (scope.read<VariableSign>(node.name) == null) {
        addErrorCallback(
          VarNotDeclaredError(node.name, node.position?.start),
        );
      }
    });

    processor.addProcess<AssignmentStatement>((node, scope) {
      final varSign = scope.read<VariableSign>(node.name);
      final expressionType = extractType(scope, node.value);
      if(expressionType == VariableValueType.DYNAMIC) return;

      if (varSign == null) {
        addErrorCallback(VarNotDeclaredError(node.name, node.position?.start));

        return;
      }

      if (!varSign.isMutable) {
        addErrorCallback(VarImmutableError(node.name, node.position?.start));
      } else if (varSign.type != expressionType) {
        addErrorCallback(
          VarTypeMismatchError(
            node.name,
            varSign.type.typeName,
            expressionType.typeName,
            node.value.position?.start,
          ),
        );
      }
    });
  }

  void _getClassErrors(
    NodeProcessor processor,
    void Function(LangError error) addErrorCallback,
  ) {
    processor.addProcess<ClassDefinitionStatement>((node, scope) {
      final cSign = scope.read<ClassSign>(node.name);

      if (cSign != null && cSign.position?.start != node.position?.start) {
        addErrorCallback(
          ClassAlreadyDeclaredError(node.name, node.position?.start),
        );
      }
    });

    processor.addProcess<ObjectPropertyAssignmentStatement>((node, scope) {
      final variable = scope.read<VariableSign>(node.objectName);

      if (variable != null) {
        final className = variable.type.typeName;
        final classSign = scope.read<ClassSign>(className);

        final hasProperty =
            classSign!.properties.any((prop) => prop.name == node.propertyName);

        if (!hasProperty) {
          addErrorCallback(
            ClassPropertyNotDefinedError(
              className,
              node.propertyName,
              node.position?.start,
            ),
          );
        }
      } else {
        addErrorCallback(
          VarNotDeclaredError(node.objectName, node.position?.start),
        );
      }
    });

    processor.addProcess<ObjectPropertyReferenceExpression>((node, scope) {
      final variable = scope.read<VariableSign>(node.objectName);

      if (variable != null) {
        final className = variable.type.typeName;
        final classSign = scope.read<ClassSign>(className);

        final hasProperty =
            classSign!.properties.any((prop) => prop.name == node.propertyName);

        if (!hasProperty) {
          addErrorCallback(
            ClassPropertyNotDefinedError(
              className,
              node.propertyName,
              node.position?.start,
            ),
          );
        }
      } else {
        addErrorCallback(
          VarNotDeclaredError(node.objectName, node.position?.start),
        );
      }
    });

    processor.addProcess<ObjectMethodCallExpression>((node, scope) {
      final variable = scope.read<VariableSign>(node.objectName);

      if (variable != null) {
        final className = variable.type.typeName;
        final classSign = scope.read<ClassSign>(className);

        final method = classSign!.methods
            .where((prop) => prop.name == node.methodName)
            .firstOrNull;

        if (method == null) {
          addErrorCallback(
            ClassMethodNotDefinedError(
              className,
              node.methodName,
              node.position?.start,
            ),
          );
        } else {
          final methodParams =
              method.parameters.map((e) => e.type.typeName).toList();
          final callParams = node.parameters
              .map((e) => extractType(scope, e).typeName)
              .toList();

          if (! ListEquality().equals(methodParams ,callParams)) {
            addErrorCallback(
              FunctionSignMismatchError(
                "$className.${node.methodName}",
                "(${methodParams.join(", ")})",
                "(${callParams.join(", ")})",
                node.position?.start,
              ),
            );
          }
        }
      } else {
        addErrorCallback(
          VarNotDeclaredError(
            node.objectName,
            node.position?.start,
          ),
        );
      }
    });
  }

  void _getFunctionErrors(
    NodeProcessor processor,
    void Function(LangError error) addErrorCallback,
  ) {
    processor.addProcess<FunctionDefinitionStatement>((node, scope) {
      final hasReturn = node.body.whereType<ReturnStatement>().isNotEmpty;
      final fSign = scope.read<FunctionSign>(node.name);

      if (fSign != null && fSign.position?.start != node.position?.start) {
        addErrorCallback(
          FunctionAlreadyDefinedError(
            node.name,
            node.position?.start,
          ),
        );
      }

      if (!hasReturn && node.returnType != VariableValueType.VOID) {
        addErrorCallback(
          FunctionMissingReturnError(
            node.name,
            node.position?.start,
          ),
        );
      } else if (hasReturn && node.returnType == VariableValueType.VOID) {
        addErrorCallback(
          FunctionReturnNotAllowedError(
            node.name,
            node.position?.start,
          ),
        );
      } else if (hasReturn && node.returnType != null) {
        final returnType = _getFunctionReturnType(node, scope);

        if (returnType != node.returnType) {
          addErrorCallback(
            FunctionReturnTypeMismatchError(
              node.name,
              node.returnType!.typeName,
              returnType.typeName,
              node.position?.start,
            ),
          );
        }
      }
    });

    processor.addProcess<FunctionCallExpression>((node, scope) {
      final fSign = scope.read<FunctionSign>(node.name);

      final fNameSplitted = node.name.split(".");
      final cSign = scope.read<ClassSign>(fNameSplitted.first);

      if (fSign != null) {
        final functionParams =
            fSign.parameters.map((e) => e.type.typeName).toList();
        final callParams =
            node.parameters.map((e) => extractType(scope, e).typeName).toList();



        if (!ListEquality<String>().equals(functionParams, callParams)) {
          addErrorCallback(
            FunctionSignMismatchError(
              node.name,
              "(${functionParams.join(", ")})",
              "(${callParams.join(", ")})",
              node.position?.start,
            ),
          );
        }
      } else if (cSign == null || node.parameters.isNotEmpty) {
        addErrorCallback(
          FunctionNotDefinedError(
            node.name,
            node.position?.start,
          ),
        );
      }
    });
  }

  VariableValueType _getFunctionReturnType(
    FunctionDefinitionStatement f,
    ScopeContext context,
  ) {
    final innerCtx = context.wrap(declaredVariables: {});

    innerCtx.declaredVariables.addEntries(
      f.parameters.map((e) {
        return MapEntry(
          e.name,
          VariableSign(e.name, e.valueType!, true, e.position),
        );
      }),
    );

    innerCtx.declaredVariables.addEntries(
      f.body.whereType<VariableDeclarationStatement>().map((e) {
        return MapEntry(
          e.name,
          VariableSign(
            e.name,
            e.valueType ?? extractType(context, e.value!),
            true,
            e.position,
          ),
        );
      }),
    );

    final returnType = extractType(
      innerCtx,
      f.body.whereType<ReturnStatement>().last.value,
    );

    return returnType;
  }

  void _getIfErrors(
    NodeProcessor processor,
    void Function(LangError error) addErrorCallback,
  ) {
    processor.addProcess<IfDefinitionStatement>(
      (node, context) {
        [
          node.ifBlock,
          ...node.elseIfBlocks,
        ].forEach(
          (ifBlock) {
            final conditionType = extractType(context, ifBlock.condition!);
            if(conditionType == VariableValueType.DYNAMIC) return;

            if (conditionType != VariableValueType.BOOLEAN) {
              addErrorCallback(
                ExpressionMismatchError(
                  VariableValueType.BOOLEAN.typeName,
                  conditionType.typeName,
                  ifBlock.position?.start,
                ),
              );
            }
          },
        );
      },
    );
  }

  void _getWhileErrors(
    NodeProcessor processor,
    void Function(LangError error) addErrorCallback,
  ) {
    processor.addProcess<WhileDefinitionStatement>(
      (node, context) {
        final conditionType = extractType(context, node.condition!);
        if(conditionType == VariableValueType.DYNAMIC) return;

        if (conditionType != VariableValueType.BOOLEAN) {
          addErrorCallback(
            ExpressionMismatchError(
              VariableValueType.BOOLEAN.typeName,
              conditionType.typeName,
              node.position?.start,
            ),
          );
        }
      },
    );
  }

  void _getForErrors(
    NodeProcessor processor,
    void Function(LangError error) addErrorCallback,
  ) {
    processor.addProcess<ForDefinitionStatement>(
      (node, context) {
        final condition = node.forCondition;
        if (condition is StandardForCondition) {
          final controlConditionType =
              extractType(context, condition.controlExpression);
          if(controlConditionType == VariableValueType.DYNAMIC) return;

          if (controlConditionType != VariableValueType.BOOLEAN) {
            addErrorCallback(
              ExpressionMismatchError(
                VariableValueType.BOOLEAN.typeName,
                controlConditionType.typeName,
                node.position?.start,
              ),
            );
          }
        }else if (condition is ForEachCondition){
          final iterable = extractType(context, condition.expression);
          if(iterable == VariableValueType.DYNAMIC) return;

          if (iterable != VariableValueType.LIST) {
            addErrorCallback(
              ExpressionMismatchError(
                VariableValueType.LIST.typeName,
                iterable.typeName,
                node.position?.start,
              ),
            );
          }
        }
      },
    );
  }
}

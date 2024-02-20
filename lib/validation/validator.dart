import 'package:dart2ast_engine/dart2ast.dart';

extension ScriptFileValidator on ProgramFile {
  List<LangError> validate() {
    final errors = <LangError>[];

    errors.addAll(_getVariableErrors());

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
     
    });

    return errors;
  }
}

import 'package:dart2ast_engine/ast.dart';
import 'package:dart2ast_engine/parsing/models.dart';

extension ScriptFileValidator on ProgramFile {
  List<LangError> validate() {
    final errors = <LangError>[];
    final varsByName = <String, VariableDeclarationStatement>{};

    specificProcess<VariableDeclarationStatement>((node) {
      if (varsByName.containsKey(node.name)) {
        errors.add(
          LangError(
            'Variable ${node.name} already declared',
            node.position.start,
          ),
        );
      } else {
        varsByName[node.name] = node;
      }
    });

    /*
    specificProcess<VarReference>((node) {
      if (!varsByName.containsKey(node.varName)) {
        errors.add(
          LangError(
            'Variable ${node.varName} not declared',
            node.position!.start,
          ),
        );
      } else if (node.position! < varsByName[node.varName]!.position!) {
        errors.add(
          LangError(
            'Variable ${node.varName} not declared',
            node.position!.start,
          ),
        );
      }
    });
    */

    specificProcess<AssignmentStatement>((node) {
      if (!varsByName.containsKey(node.name)) {
        errors.add(
          LangError(
            'Variable ${node.name} not declared',
            node.position.start,
          ),
        );
      } else if (node.position < varsByName[node.name]!.position) {
        errors.add(
          LangError(
            'Variable ${node.name} not declared',
            node.position.start,
          ),
        );
      }
    });

    return errors;
  }
}

import 'package:dart2ast_engine/ast/models.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'package:dart2ast_engine/ast/protocol/converter/ast2protobuf.dart';

extension AssignmentStatement2Protobuf on ast.AssignmentStatement {
  protocol.AssignmentStatement toProtobuf() {

    return protocol.AssignmentStatement()
      ..name = name
      ..value = convertExpressionToProtobuf(value)
      ..position = this.position!.toProtobuf();
  }
}
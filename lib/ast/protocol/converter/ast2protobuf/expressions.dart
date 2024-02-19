import 'package:dart2ast_engine/ast/models.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'package:dart2ast_engine/ast/protocol/converter/ast2protobuf.dart';



extension BoolLiteralExpression2Protobuf on ast.BoolLit {
  protocol.BoolLit toProtobuf() {
    return protocol.BoolLit()
      ..value = value
      ..position = position!.toProtobuf();
  }
}
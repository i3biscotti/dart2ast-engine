import 'package:dart2ast_engine/ast/models.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;
import 'package:dart2ast_engine/ast/protocol/converter/ast2protobuf.dart';

extension Position2Protobuf on ast.Position {
  protocol.Position toProtobuf() {
    return protocol.Position()
      ..start = start.toProtobuf()
      ..end = start.toProtobuf();
  }
}

extension Point2Protobuf on ast.Point {
  protocol.Point toProtobuf() {
    return protocol.Point()
      ..line = line
      ..column = column;
  }
}

extension ProgramFile2Protobuf on ast.ProgramFile {
  protocol.ProgramFile toProtobuf() {
    final lines = [...this.lines.map(convertStatementToProtobuf)];

    return protocol.ProgramFile()
      ..lines.addAll(lines)
      ..position = this.position!.toProtobuf();
  }
}

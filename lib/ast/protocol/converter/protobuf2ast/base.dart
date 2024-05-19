import 'package:dart2ast_engine/ast.dart' as ast;
import 'package:dart2ast_engine/ast/protocol.dart' as protocol;

extension ProtoProgramFileDeserializer on protocol.ProgramFile {
  ast.ProgramFile toAst() {
    final lines = this.lines.map(protocol.convertStatementFromProtobuf).toList();
    final position = this.position.toAst();

    final programFile = ast.ProgramFile(lines, position);

    return programFile;
  }
}

extension ProtoPositionDeserializer on protocol.Position {
  ast.Position toAst() => ast.Position(start.toAst(), end.toAst());
}

extension on protocol.Point {
  ast.Point toAst() => ast.Point(line, column);
}

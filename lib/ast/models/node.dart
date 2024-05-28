import 'package:dart2ast_engine/dart2ast.dart';
import 'package:equatable/equatable.dart';

abstract class AstObject extends Equatable {}

class Point extends AstObject {
  final int line;
  final int column;

  Point(this.line, this.column);

  @override
  List<Object?> get props => [line, column];

  Map<String, int> toJson() => {
        'line': line,
        'column': column,
      };
}

class Position extends AstObject {
  final Point start;
  final Point end;

  Position(this.start, this.end);



  @override
  List<Object?> get props => [start, end];

  operator <(Position other) {
    return start.line < other.start.line ||
        (start.line == other.start.line && start.column < other.start.column);
  }

  operator >(Position other) {
    return start.line > other.start.line ||
        (start.line == other.start.line && start.column > other.start.column);
  }

  operator <=(Position other) {
    return start.line <= other.start.line ||
        (start.line == other.start.line && start.column <= other.start.column);
  }

  operator >=(Position other) {
    return start.line >= other.start.line ||
        (start.line == other.start.line && start.column >= other.start.column);
  }
}

abstract class Node extends AstObject {
  final Position? position;

  Node(this.position);
}

class ProgramFile extends Node {
  final List<Statement> lines;

  ProgramFile(this.lines, super.position);



  @override
  List<Object?> get props => [lines, position];


}

import 'package:equatable/equatable.dart';

class Point extends Equatable {
  final int line;
  final int column;

  Point(this.line, this.column);
  
  @override
  List<Object?> get props => [line, column];
}

class Position extends Equatable{
  final Point start;
  final Point end;

  Position(this.start, this.end);
  
  @override
  List<Object?> get props => [start, end];
}

abstract class Node {
  final Position position;

  Node(this.position);
}

class DartFile extends Node {
  final List<Statement> lines;

  DartFile(this.lines, super.position);
}

abstract class Statement extends Node {
  Statement(super.position);
}

class VariableDeclarationStatement extends Statement {
  final VariableType type;
  final String name;
  final VariableValueType valueType;
  final Expression value;

  VariableDeclarationStatement(
    this.type,
    this.name,
    this.valueType,
    this.value,
    super.position,
  );
}

enum VariableType {
  variable,
  immutable, 
  constant
}

enum VariableValueType {}

class Expression {}

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

abstract class Node extends Equatable{
  final Position position;

  Node(this.position);
}

class DartFile extends Node {
  final List<Statement> lines;

  DartFile(this.lines, super.position);
  
  @override
  List<Object?> get props => [lines];
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

  @override
  List<Object?> get props => [type, name, valueType, value];
}

enum VariableType {
  variable,
  immutable, 
  constant
}

enum VariableValueType {
  Int,
  Double,
  String,
  Boolean,
  Reference
}

class Assigment extends Statement{
  final String name;
  final Expression value;
  Assigment(this.name, this.value, super.position);
} 

abstract class Expression extends Node{
  Expression(super.position);
}

class IntLit extends Expression{
  final String value;
  IntLit(this.value, super.position);
}

class DecLit extends Expression{
  final String value;
  DecLit(this.value, super.position);
}

class StringLit extends Expression{
  final String value;
  StringLit(this.value, super.position);
}

class BoolLit extends Expression{
  final String value;
  BoolLit(this.value, super.position);
}


import 'package:equatable/equatable.dart';

class Point extends Equatable {
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

class Position extends Equatable {
  final Point start;
  final Point end;

  Position(this.start, this.end);

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      Point(json['start']['line'], json['start']['column']),
      Point(json['end']['line'], json['end']['column']),
    );
  }

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

  Map<String, dynamic> toJson() => {
        'start': start.toJson(),
        'end': end.toJson(),
      };
}

abstract class Node extends Equatable {
  final Position position;

  Node(this.position);

  Map<String, dynamic> toJson();
}

class ProgramFile extends Node {
  final List<Statement> lines;

  ProgramFile(this.lines, super.position);

  factory ProgramFile.fromJson(Map<String, dynamic> json) {
    return ProgramFile(
      (json['lines'] as List).map((e) => Statement.fromJson(e)).toList(),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [lines];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'lines': lines.map((e) => e.toJson()).toList(),
        'position': position.toJson(),
      };
}

abstract class Statement extends Node {
  Statement(super.position);

  factory Statement.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'VariableDeclarationStatement' =>
        VariableDeclarationStatement.fromJson(json),
      'AssignmentStatement' => AssignmentStatement.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }
}

class VariableDeclarationStatement extends Statement {
  final VariableType varType;
  final String name;
  final VariableValueType? valueType;
  final Expression value;

  VariableDeclarationStatement(
    this.varType,
    this.name,
    this.valueType,
    this.value,
    super.position,
  );

  factory VariableDeclarationStatement.fromJson(Map<String, dynamic> json) {
    return VariableDeclarationStatement(
      switch (json['varType']) {
        'variable' => VariableType.variable,
        'immutable' => VariableType.immutable,
        'constant' => VariableType.constant,
        _ => throw UnimplementedError(),
      },
      json['name'],
      switch (json['valueType']) {
        'Int' => VariableValueType.Int,
        'Double' => VariableValueType.Double,
        'String' => VariableValueType.String,
        'Boolean' => VariableValueType.Boolean,
        'Reference' => VariableValueType.Reference,
        null => null,
        _ => throw UnimplementedError(json['valueType']),
      },
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, valueType, value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'varType': varType.name,
        'name': name,
        'valueType': valueType?.name,
        'value': value.toJson(),
        'position': position.toJson(),
      };
}

enum VariableType { variable, immutable, constant }

enum VariableValueType { Int, Double, String, Boolean, Reference }

class AssignmentStatement extends Statement {
  final String name;
  final Expression value;

  AssignmentStatement(this.name, this.value, super.position);

  factory AssignmentStatement.fromJson(Map<String, dynamic> json) {
    return AssignmentStatement(
      json['name'],
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [name, value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'name': name,
        'value': value.toJson(),
        'position': position.toJson(),
      };
}

abstract class Expression extends Node {
  Expression(super.position);

  factory Expression.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'IntLit' => IntLit.fromJson(json),
      'DecLit' => DecLit.fromJson(json),
      'StringLit' => StringLit.fromJson(json),
      'BoolLit' => BoolLit.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }
}

class IntLit extends Expression {
  final String value;
  IntLit(this.value, super.position);

  factory IntLit.fromJson(Map<String, dynamic> json) {
    return IntLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

class DecLit extends Expression {
  final String value;
  DecLit(this.value, super.position);

  factory DecLit.fromJson(Map<String, dynamic> json) {
    return DecLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

class StringLit extends Expression {
  final String value;
  StringLit(this.value, super.position);

  factory StringLit.fromJson(Map<String, dynamic> json) {
    return StringLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  List<Object?> get props => [value];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

class BoolLit extends Expression {
  final String value;
  BoolLit(this.value, super.position);

  @override
  List<Object?> get props => [value];

  factory BoolLit.fromJson(Map<String, dynamic> json) {
    return BoolLit(json['value'], Position.fromJson(json['position']));
  }

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value,
        'position': position.toJson(),
      };
}

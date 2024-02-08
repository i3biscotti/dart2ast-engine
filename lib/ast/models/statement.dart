import 'package:dart2ast_engine/dart2ast.dart';
import 'package:equatable/equatable.dart';

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
  final Expression? value;

  VariableDeclarationStatement(
    this.varType,
    this.name,
    this.valueType,
    this.value,
    super.position,
  );

  factory VariableDeclarationStatement.fromJson(Map<String, dynamic> json) {
    return VariableDeclarationStatement(
      VariableType.fromName(json['varType']),
      json['name'],
      VariableValueType.fromName(json['valueType']),
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, valueType, value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'varType': varType.name,
        'name': name,
        'valueType': valueType?.typeName,
        'value': value?.toJson(),
        'position': position?.toJson(),
      };
}

enum VariableType {
  type,
  variable,
  immutable,
  constant;

  static VariableType fromName(String name) {
    return switch (name) {
      'type' => VariableType.type,
      'variable' => VariableType.variable,
      'immutable' => VariableType.immutable,
      'constant' => VariableType.constant,
      _ => throw UnimplementedError(),
    };
  }
}

class VariableValueType extends Equatable {
  final String typeName;

  VariableValueType(this.typeName);

  factory VariableValueType.fromName(String name) {
    return switch (name) {
      'int' => VariableValueType.INT,
      'double' => VariableValueType.DOUBLE,
      'String' => VariableValueType.STRING,
      'bool' => VariableValueType.BOOLEAN,
      'List' => VariableValueType.LIST,
      'void' => VariableValueType.VOID,
      String type => VariableValueType(type),
    };
  }

  static VariableValueType get INT => VariableValueType('int');
  static VariableValueType get DOUBLE => VariableValueType('double');
  static VariableValueType get STRING => VariableValueType('String');
  static VariableValueType get BOOLEAN => VariableValueType('bool');
  static VariableValueType get LIST => VariableValueType('List');
  static VariableValueType get VOID => VariableValueType('void');

  @override
  List<Object?> get props => [typeName];
}

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
  List<Object?> get props => [name, value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'name': name,
        'value': value.toJson(),
        'position': position?.toJson(),
      };
}

class ExpressionDefinitionStatement extends Statement {
  final Expression value;

  ExpressionDefinitionStatement(this.value, super.position);

  factory ExpressionDefinitionStatement.fromJson(Map<String, dynamic> json) {
    return ExpressionDefinitionStatement(
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value.toJson(),
        'position': position?.toJson(),
      };
}

class ReturnStatement extends Statement {
  final Expression value;

  ReturnStatement(this.value, super.position);

  factory ReturnStatement.fromJson(Map<String, dynamic> json) {
    return ReturnStatement(
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'value': value.toJson(),
        'position': position?.toJson(),
      };
}

class IfStatement extends Statement {
  final IfBlock ifBlock;
  final List<IfBlock> elseIfBlocks;
  final IfBlock? elseBlock;

  IfStatement(
    this.ifBlock,
    this.elseIfBlocks,
    this.elseBlock,
    super.position,
  );

  IfStatement.fromJson(Map<String, dynamic> json)
      : ifBlock = IfBlock.fromJson(json['ifBlock']),
        elseIfBlocks = List.from(json['elseifBlocks'])
            .map((e) => IfBlock.fromJson(e))
            .toList(),
        elseBlock = (json['elseBlock']) != null
            ? IfBlock.fromJson(json['elseBlock'])
            : null,
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [ifBlock, elseIfBlocks, elseBlock, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "ifBlock": ifBlock.toJson(),
      "elseifBlocks": elseIfBlocks.map((e) => e.toJson()).toList(),
      "elseBlock": elseBlock?.toJson(),
      "position": position?.toJson(),
    };
  }
}

enum BlockType { ifBlock, elseIfBlock, elseBlock }

class IfBlock extends Node {
  final Expression? condition;
  final List<Statement> statements;
  final BlockType blockType;

  IfBlock(this.condition, this.statements, this.blockType, super.position);

  IfBlock.fromJson(Map<String, dynamic> json)
      : this(
            json["condition"] != null
                ? Expression.fromJson(json["condition"])
                : null,
            List.from(json["statements"])
                .map((e) => Statement.fromJson(e))
                .toList(),
            switch (json['blockType']) {
              "ifBlock" => BlockType.ifBlock,
              "elseIfBLock" => BlockType.elseIfBlock,
              "elseBlock" => BlockType.elseBlock,
              _ => throw UnimplementedError(json["blockType"]),
            },
            Position.fromJson(json["position"]));

  @override
  List<Object?> get props => [condition, statements, blockType, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "condition": condition?.toJson(),
      "statements": statements.map((e) => e.toJson()),
      "blockType": blockType.name,
      "position": position?.toJson(),
    };
  }
}

//task 4
class WhileStatement extends Statement {
  final Expression? condition;
  final List<Statement> statements;

  WhileStatement(this.condition, this.statements, super.position);

  WhileStatement.fromJson(Map<String, dynamic> json)
      : this(
            json["condition"] != null
                ? Expression.fromJson(json["condition"])
                : null,
            List.from(json["statements"])
                .map((e) => Statement.fromJson(e))
                .toList(),
            Position.fromJson(json["position"]));

  @override
  List<Object?> get props => [condition, statements, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "condition": condition?.toJson(),
      "statements": statements.map((e) => e.toJson()),
      "position": position?.toJson(),
    };
  }
}

//task 5

abstract class ForInitOrIncrementStatement extends Statement {
  ForInitOrIncrementStatement(super.position);

  factory ForInitOrIncrementStatement.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'VarDeclarationForStatement' => VarDeclarationForStatement.fromJson(json),
      'AssignmentForStatement' => AssignmentForStatement.fromJson(json),
      'ExpressionForStatement' => ExpressionForStatement.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }
}

class VarDeclarationForStatement extends ForInitOrIncrementStatement {
  final VariableType? varType;
  final String name;
  final Expression value;

  VarDeclarationForStatement(
    this.varType,
    this.name,
    this.value,
    super.position,
  );

  factory VarDeclarationForStatement.fromJson(Map<String, dynamic> json) {
    return VarDeclarationForStatement(
      VariableType.fromName(json['varType']),
      json['name'],
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, value, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "varType": varType?.name,
      "name": name,
      "value": value.toJson(),
      "position": position?.toJson(),
    };
  }
}

class AssignmentForStatement extends ForInitOrIncrementStatement {
  final String name;
  final Expression value;

  AssignmentForStatement(this.name, this.value, super.position);

  factory AssignmentForStatement.fromJson(Map<String, dynamic> json) {
    return AssignmentForStatement(
      json['name'],
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [name, value, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "value": value.toJson(),
      "position": position?.toJson(),
    };
  }
}

class ExpressionForStatement extends ForInitOrIncrementStatement {
  final Expression value;
  ExpressionForStatement(this.value, super.position);

  factory ExpressionForStatement.fromJson(Map<String, dynamic> json) {
    return ExpressionForStatement(
      Expression.fromJson(json['value']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [value, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "value": value.toJson(),
      "position": position?.toJson(),
    };
  }
}

class ItemDefinition extends Node {
  final VariableType varType;
  final String name;
  final VariableValueType? valueType;

  ItemDefinition(
    this.varType,
    this.name,
    this.valueType,
    super.position,
  );

  factory ItemDefinition.fromJson(Map<String, dynamic> json) {
    return ItemDefinition(
      VariableType.fromName(json['varType']),
      json['name'],
      VariableValueType.fromName(json['valueType']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [varType, name, valueType, position];

  @override
  Map<String, dynamic> toJson() => {
        'type': runtimeType.toString(),
        'varType': varType.name,
        'name': name,
        'valueType': valueType?.typeName,
        'position': position?.toJson(),
      };
}

class ForStatement extends Statement {
  final ForCondition forCondition;
  final List<Statement> statements;

  ForStatement(this.forCondition, this.statements, super.position);

  ForStatement.fromJson(Map<String, dynamic> json)
      : this(
          ForCondition.fromJson(json['forCodition']),
          List.from(json['statements'] ?? [])
              .map((e) => Statement.fromJson(e))
              .toList(),
          Position.fromJson(json["position"]),
        );

  @override
  List<Object?> get props => [forCondition, statements, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "forCondition": forCondition.toJson(),
      "block": statements.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

abstract class ForCondition extends Node {
  ForCondition(super.position);

  factory ForCondition.fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'StandardForCondition' => StandardForCondition.fromJson(json),
      'ForEachCondition' => ForEachCondition.fromJson(json),
      _ => throw UnimplementedError(),
    };
  }
}

class StandardForCondition extends ForCondition {
  final ForInitOrIncrementStatement initStatement;
  final Expression controlExpression;
  final ForInitOrIncrementStatement incrementStatement;

  StandardForCondition(
    this.initStatement,
    this.controlExpression,
    this.incrementStatement,
    super.position,
  );

  StandardForCondition.fromJson(Map<String, dynamic> json)
      : this(
            ForInitOrIncrementStatement.fromJson(json['ife']),
            Expression.fromJson(json['e1']),
            ForInitOrIncrementStatement.fromJson(json['e2']),
            Position.fromJson(json["position"]));

  @override
  List<Object?> get props => [
        initStatement,
        controlExpression,
        incrementStatement,
        position,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "initStatement": initStatement.toJson(),
      "controlExpression": controlExpression.toJson(),
      "incrementStatement": incrementStatement.toJson(),
      "position": position?.toJson(),
    };
  }
}

class ForEachCondition extends ForCondition {
  final ItemDefinition itemDefinition;
  final Expression expression;

  ForEachCondition(this.itemDefinition, this.expression, super.position);

  ForEachCondition.fromJson(Map<String, dynamic> json)
      : this(
            ItemDefinition.fromJson(json['itemDefinition']),
            Expression.fromJson(json['expression']),
            Position.fromJson(json["position"]));

  @override
  List<Object?> get props => [itemDefinition, expression, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "itemDefinition": itemDefinition.toJson(),
      "expression": expression.toJson(),
      "position": position?.toJson(),
    };
  }
}

class FunctionDefinitionStatement extends Statement {
  final String name;
  final List<Parameter> parameters;
  final VariableValueType? returnType;
  final List<Statement> body;

  FunctionDefinitionStatement(
    this.name,
    this.parameters,
    this.returnType,
    this.body,
    super.position,
  );

  FunctionDefinitionStatement.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        parameters = List.from(json['parameters'])
            .map((e) => Parameter.fromJson(e))
            .toList(),
        returnType = VariableValueType.fromName(json['returnType']),
        body =
            List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [name, parameters, returnType, body, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "returnType": returnType?.typeName,
      "body": body.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

enum ParameterType { THIS, SUPER, TYPE }

class Parameter extends Node {
  final String name;
  final ParameterType paramType;
  final VariableValueType? valueType;

  Parameter(this.name, this.paramType, this.valueType, super.position);

  factory Parameter.fromJson(Map<String, dynamic> json) {
    return Parameter(
      json['name'],
      switch (json['paramType']) {
        'this' => ParameterType.THIS,
        'super' => ParameterType.SUPER,
        'type' => ParameterType.TYPE,
        _ => throw UnimplementedError(),
      },
      VariableValueType.fromName(json['valueType']),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [name, paramType, valueType, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "name": name,
      "paramType": paramType.name,
      "valueType": valueType?.typeName,
      "position": position?.toJson(),
    };
  }
}

enum EncapsulationType { public, private }

class ClassDefinitionStatement extends Statement {
  final EncapsulationType encapsulationType;
  final String name;
  final String? parentName;
  final List<VariableDeclarationStatement> properties;
  final List<ConstructorDefinitionStatement> constructors;
  final List<FunctionDefinitionStatement> methods;

  ClassDefinitionStatement(
    this.encapsulationType,
    this.name,
    this.parentName,
    this.properties,
    this.constructors,
    this.methods,
    super.position,
  );

  factory ClassDefinitionStatement.fromJson(Map<String, dynamic> json) {
    return ClassDefinitionStatement(
      switch (json['encapsulationType']) {
        "public" => EncapsulationType.public,
        "private" => EncapsulationType.private,
        _ => throw UnimplementedError(),
      },
      json['name'],
      json['parentName'],
      List.from(json['properties'])
          .map((e) => VariableDeclarationStatement.fromJson(e))
          .toList(),
      List.from(json['constructors'])
          .map((e) => ConstructorDefinitionStatement.fromJson(e))
          .toList(),
      List.from(json['methods'])
          .map((e) => FunctionDefinitionStatement.fromJson(e))
          .toList(),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [
        encapsulationType,
        name,
        parentName,
        properties,
        constructors,
        methods,
        position,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "encapsulationType": encapsulationType.name,
      "name": name,
      "parentName": parentName,
      "properties": properties.map((e) => e.toJson()).toList(),
      "constructors": constructors.map((e) => e.toJson()).toList(),
      "methods": methods.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

class ConstructorDefinitionStatement extends Statement {
  final String className;
  final String? constructorName;
  final List<Parameter> parameters;
  final List<Expression>? thisConstructorParameters;
  final List<Statement> body;

  ConstructorDefinitionStatement(
    this.className,
    this.constructorName,
    this.parameters,
    this.thisConstructorParameters,
    this.body,
    super.position,
  );

  factory ConstructorDefinitionStatement.fromJson(Map<String, dynamic> json) {
    return ConstructorDefinitionStatement(
      json['className'],
      json['constructorName'],
      List.from(json['parameters']).map((e) => Parameter.fromJson(e)).toList(),
      List.from(json['thisConstructorParameters'])
          .map((e) => Expression.fromJson(e))
          .toList(),
      List.from(json['body']).map((e) => Statement.fromJson(e)).toList(),
      Position.fromJson(json['position']),
    );
  }

  @override
  List<Object?> get props => [
        className,
        constructorName,
        parameters,
        thisConstructorParameters,
        body,
        position,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "className": className,
      "constructorName": constructorName,
      "parameters": parameters.map((e) => e.toJson()).toList(),
      "thisConstructorParameters":
          thisConstructorParameters?.map((e) => e.toJson()).toList(),
      "body": body.map((e) => e.toJson()).toList(),
      "position": position?.toJson(),
    };
  }
}

class ObjectPropertyAssignmentStatement extends Statement {
  final String objectName;
  final String propertyName;
  final Expression value;

  ObjectPropertyAssignmentStatement(
    this.objectName,
    this.propertyName,
    this.value,
    super.position,
  );

  ObjectPropertyAssignmentStatement.fromJson(Map<String, dynamic> json)
      : objectName = json['objectName'],
        propertyName = json['propertyName'],
        value = Expression.fromJson(json['value']),
        super(Position.fromJson(json['position']));

  @override
  List<Object?> get props => [objectName, propertyName, value, position];

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": runtimeType.toString(),
      "objectName": objectName,
      "propertyName": propertyName,
      "value": value.toJson(),
      "position": position?.toJson(),
    };
  }
}

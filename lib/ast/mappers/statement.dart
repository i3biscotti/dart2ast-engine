import 'package:dart2ast_engine/dart2ast.dart';

extension StatementConverterExtension on StatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      VarDeclarationStatementContext st => st.toAst(considerPosition),
      FinalDeclarationStatementContext st => st.toAst(considerPosition),
      ConstDeclarationStatementContext st => st.toAst(considerPosition),
      AssignmentStatementContext st => st.toAst(considerPosition),
      ExpressionDefinitionStatementContext st => st.toAst(considerPosition),
      IfDefinitionStatementContext st => st.toAst(considerPosition),
      WhileDefinitionStatementContext st => st.toAst(considerPosition),
      ForDefinitionStatementContext st => st.toAst(considerPosition),
      FunctionDefinitionStatementContext st => st.toAst(considerPosition),
      ReturnStatementContext st => st.toAst(considerPosition),
      ClassDefinitionStatementContext st => st.toAst(considerPosition),
      ObjectPropertyAssignmentStatementContext st => st.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

VariableValueType? _Antlr4ToAstValueType(TypeContext? type) => switch (type) {
      IntTypeContext _ => VariableValueType.INT,
      DoubleTypeContext _ => VariableValueType.DOUBLE,
      BoolTypeContext _ => VariableValueType.BOOLEAN,
      StringTypeContext _ => VariableValueType.STRING,
      CustomTypeContext type => VariableValueType(type.name!.text!),
      null => null,
      _ => throw UnimplementedError()
    };

extension VarDeclarationStatementConverterExtension
    on VarDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    late final VariableType varType;
    final varDeclaration = this.varDeclaration();
    if (varDeclaration?.VAR() != null) {
      varType = VariableType.variable;
    } else if (varDeclaration?.type() != null) {
      varType = VariableType.type;
    } else {
      throw UnimplementedError();
    }

    final name = varDeclaration!.ID()!.text!;
    final value = varDeclaration.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(varDeclaration.type());

    return VariableDeclarationStatement(
      varType,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension FinalDeclarationStatementConverterExtension
    on FinalDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.immutable,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ConstDeclarationStatementConverterExtension
    on ConstDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()!.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.constant,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension AssignmentStatementConverterExtension on AssignmentStatementContext {
  AssignmentStatement toAst(bool considerPosition) {
    final assigment = this.assignment();
    final name = assigment!.ID()!.text!;
    final value = assigment.expression()!.toAst(considerPosition);

    return AssignmentStatement(
      name,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ExpressionDefinitionStatementConverterExtension
    on ExpressionDefinitionStatementContext {
  ExpressionDefinitionStatement toAst(bool considerPosition) {
    final value = this.expression()!.toAst(considerPosition);

    return ExpressionDefinitionStatement(
      value,
      toPosition(considerPosition),
    );
  }
}

extension ReturnStatementConverterExtension on ReturnStatementContext {
  ReturnStatement toAst(bool considerPosition) {
    final value = this.expression()!.toAst(considerPosition);

    return ReturnStatement(
      value,
      toPosition(considerPosition),
    );
  }
}

//task 3
extension IfStatementConverterExtension on IfDefinitionStatementContext {
  IfDefinitionStatement toAst(bool considerPosition) {
    final ifDefinition = this.ifDefinition();
    final ifBlock = ifDefinition!.ifBlock()!.toAst(considerPosition);
    final elseIfBlocks = ifDefinition
        .elseIfBlocks()
        .map((e) => e.toAst(considerPosition))
        .toList();
    final elseBlock = ifDefinition.elseBlock()?.toAst(considerPosition);

    return IfDefinitionStatement(
      ifBlock,
      elseIfBlocks,
      elseBlock,
      toPosition(considerPosition),
    );
  }
}

extension IfBlockConverterExtension on IfBlockContext {
  IfBlock toAst(bool considerPosition) {
    final condition = this.expression()?.toAst(considerPosition);
    final statements = this
        .block()!
        .statements()
        .map((e) => e.toAst(considerPosition))
        .toList();
    final blockType = BlockType.ifBlock;

    return IfBlock(
      condition,
      statements,
      blockType,
      toPosition(considerPosition),
    );
  }
}

extension ElseIfBlockConverterExtension on ElseIfBlockContext {
  IfBlock toAst(bool considerPosition) {
    final condition = this.expression()?.toAst(considerPosition);
    final statements = this
        .block()!
        .statements()
        .map((e) => e.toAst(considerPosition))
        .toList();
    final blockType = BlockType.elseIfBlock;

    return IfBlock(
      condition,
      statements,
      blockType,
      toPosition(considerPosition),
    );
  }
}

extension ElseBlockConverterExtension on ElseBlockContext {
  IfBlock toAst(bool considerPosition) {
    final condition = null;
    final statements = this
        .block()!
        .statements()
        .map((e) => e.toAst(considerPosition))
        .toList();
    final blockType = BlockType.elseBlock;

    return IfBlock(
      condition,
      statements,
      blockType,
      toPosition(considerPosition),
    );
  }
}

extension WhileStatementConverterExtension on WhileDefinitionStatementContext {
  WhileDefinitionStatement toAst(bool considerPosition) {
    final whileDefinition = this.whileDefinition();
    final condition = whileDefinition!.expression()?.toAst(considerPosition);
    final statements = whileDefinition
        .block()!
        .statements()
        .map((e) => e.toAst(considerPosition))
        .toList();

    return WhileDefinitionStatement(
      condition,
      statements,
      toPosition(considerPosition),
    );
  }
}

//task 5

extension ForInitOrIncrementStatementConverterExtension on ForInitOrIncrementStatementContext {
  ForInitOrIncrementStatement toAst(bool considerPosition) {
    return switch (this) {
       VarDeclarationForStatementContext st => st.toAst(considerPosition),
       AssignmentForStatementContext st => st.toAst(considerPosition),
       ExpressionForStatementContext st => st.toAst(considerPosition), 
       _ => throw UnimplementedError()
    };
  }
}

extension VarDeclarationForStatementConverterExtension on VarDeclarationForStatementContext {
  VarDeclarationForStatement toAst(bool considerPosition) {
    late final VariableType varType;
    final varDeclaration = this.varDeclaration();
    if (varDeclaration?.VAR() != null) {
      varType = VariableType.variable;
    } else if (varDeclaration?.type() != null) {
      varType = VariableType.type;
    } else {
      throw UnimplementedError();
    }
    final name = varDeclaration!.ID()!.text!;
    final valueType = _Antlr4ToAstValueType(varDeclaration.type());
    final value = varDeclaration.expression()!.toAst(considerPosition);

    return VarDeclarationForStatement(
      varType,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension AssignmentForStatementConverterExtension on AssignmentForStatementContext {
  AssignmentForStatement toAst(bool considerPosition) {
    final assigment = this.assignment();
    final name = assigment!.ID()!.text!;
    final value = assigment.expression()!.toAst(considerPosition);

    return AssignmentForStatement(
      name,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ExpressionForStatementConverterExtension on ExpressionForStatementContext {
  ExpressionForStatement toAst(bool considerPosition) {
    final value = this.expression()!.toAst(considerPosition);

    return ExpressionForStatement(
      value,
      toPosition(considerPosition),
    );
  }
}

extension ItemDefinitionConverterExtension on ItemDefinitionContext {
   ItemDefinition toAst(bool considerPosition) {
    late final VariableType varType;
    if (this.VAR() != null) {
      varType = VariableType.variable;
    } else if (this.type() != null) {
      varType = VariableType.type;
    } else {
      throw UnimplementedError();
    }

    final name = this.name?.text!;
    final valueType = _Antlr4ToAstValueType(this.type());

    return ItemDefinition(
      varType,
      name!,
      valueType,
      toPosition(considerPosition),
    );
  }
}


extension ForDefinitionStatementConverterExtension on ForDefinitionStatementContext {
   ForDefinitionStatement toAst(bool considerPosition) {
    final forDefinition = this.forDefinition();
    final forCondition = forDefinition!.forCondition()!.toAst(considerPosition);
    final statements = forDefinition.block()!.statements().map((e) => e.toAst(considerPosition)).toList();
(considerPosition);

    return ForDefinitionStatement(
      forCondition,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension ForConditionConverterExtension on ForConditionContext {
   ForCondition toAst(bool considerPosition) {
      return switch (this) {
       StandardForConditionContext st => st.toAst(considerPosition),
       ForEachConditionContext st => st.toAst(considerPosition),
       _ => throw UnimplementedError()
    };
   }
}

extension StandardForConditionConverterExtension on StandardForConditionContext {
  StandardForCondition toAst(bool considerPosition) {
    final initStatement = this.initStatement!.toAst(considerPosition);
    final controlExpression = this.expression()!.toAst(considerPosition);
    final incrementStatement = this.incrementStatament!.toAst(considerPosition);

    return StandardForCondition(
      initStatement,
      controlExpression,
      incrementStatement,
      toPosition(considerPosition),
    );
  }
}

extension ForEachConditionConverterExtension on ForEachConditionContext {
   ForEachCondition toAst(bool considerPosition) {
     final itemDefinition = this.itemDefinition()!.toAst(considerPosition);
     final expression = this.expression()!.toAst(considerPosition);

     return ForEachCondition(
      itemDefinition,
      expression,
      toPosition(considerPosition),
     );
   }
}

extension FunctionDefinitionStatementConverterExtension
    on FunctionDefinitionStatementContext {
  FunctionDefinitionStatement toAst(bool considerPosition) {
    final fn = this.functionDefinition();

    final type = switch (fn?.returnType) {
      IntTypeContext _ => VariableValueType.INT,
      DoubleTypeContext _ => VariableValueType.DOUBLE,
      BoolTypeContext _ => VariableValueType.BOOLEAN,
      StringTypeContext _ => VariableValueType.STRING,
      VoidTypeContext _ => VariableValueType.VOID,
      CustomTypeContext t => VariableValueType(t.name!.text!),
      _ => throw UnimplementedError()
    };

    final name = fn?.name?.text!;
    final parameters =
        (fn?.parameters() ?? []).map((e) => e.toAst(considerPosition)).toList();

    final statements = (fn?.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    return FunctionDefinitionStatement(
      name!,
      parameters,
      type,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension ParameterConverterExtension on ParameterContext {
  Parameter toAst(bool considerPosition) {
    VariableValueType? valueType = null;
    late final ParameterType paramType;

    if (this.type() != null) {
      paramType = ParameterType.TYPE;

      valueType = switch (this.type()) {
        IntTypeContext _ => VariableValueType.INT,
        DoubleTypeContext _ => VariableValueType.DOUBLE,
        BoolTypeContext _ => VariableValueType.BOOLEAN,
        StringTypeContext _ => VariableValueType.STRING,
        CustomTypeContext t => VariableValueType(t.name!.text!),
        _ => throw UnimplementedError()
      };
    } else if (this.THIS() != null) {
      paramType = ParameterType.THIS;
    } else {
      throw UnimplementedError();
    }

    final name = this.ID()!.text!;

    return Parameter(
      name,
      paramType,
      valueType,
      toPosition(considerPosition),
    );
  }
}

extension ClassDefinitionStatementConverterExtension
    on ClassDefinitionStatementContext {
  ClassDefinitionStatement toAst(bool considerPosition) {
    final cls = this.classDefinition();

    var className = cls?.name?.text;
    late final EncapsulationType encapsulationType;

    if (className!.startsWith('_')) {
      encapsulationType = EncapsulationType.private;
      className = className.substring(1);
    } else {
      encapsulationType = EncapsulationType.public;
    }

    final parentClassName = cls?.parentName?.text;
    final statements = (cls?.classStatements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    final properties =
        statements.whereType<VariableDeclarationStatement>().toList();
    final methods =
        statements.whereType<FunctionDefinitionStatement>().toList();
    final constructors =
        statements.whereType<ConstructorDefinitionStatement>().toList();

    return ClassDefinitionStatement(
      encapsulationType,
      className,
      parentClassName,
      properties,
      constructors,
      methods,
      toPosition(considerPosition),
    );
  }
}

extension ClassStatementConverterExtension on ClassStatementContext {
  Statement toAst(bool considerPosition) {
    return switch (this) {
      ClassVarDeclarationStatementContext st => st.toAst(considerPosition),
      ClassImmutableVarDeclarationStatementContext st =>
        st.toAst(considerPosition),
      MainClassConstructorDeclarationStatementContext st =>
        st.toAst(considerPosition),
      NamedClassConstructorDeclarationStatementContext st =>
        st.toAst(considerPosition),
      ClassMethodDeclarationStatementContext st => st.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension ClassVarDeclarationStatementConverterExtension
    on ClassVarDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()?.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.type,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ClassImmutableVarDeclarationStatementConverterExtension
    on ClassImmutableVarDeclarationStatementContext {
  VariableDeclarationStatement toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final value = this.expression()?.toAst(considerPosition);
    final valueType = _Antlr4ToAstValueType(this.type());

    return VariableDeclarationStatement(
      VariableType.immutable,
      name,
      valueType,
      value,
      toPosition(considerPosition),
    );
  }
}

extension ClassConstructorDeclarationStatementConverterExtension
    on MainClassConstructorDeclarationStatementContext {
  ConstructorDefinitionStatement toAst(bool considerPosition) {
    final className = this.className!.text!;

    final parameters =
        this.parameters().map((e) => e.toAst(considerPosition)).toList();

    final statements = (this.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    return ConstructorDefinitionStatement(
      className,
      null,
      parameters,
      null,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension NamedConstructorDeclarationStatementConverterExtension
    on NamedClassConstructorDeclarationStatementContext {
  ConstructorDefinitionStatement toAst(bool considerPosition) {
    final className = this.className!.text!;
    final constructorName = this.costructorName!.text!;

    final parameters =
        this.parameters().map((e) => e.toAst(considerPosition)).toList();

    final statements = (this.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    List<Expression>? thisConmstructorParams = null;

    if (thisConstructorCall() != null) {
      final thisConstuctor = this.thisConstructorCall()!;

      thisConmstructorParams = thisConstuctor
          .expressions()
          .map((e) => e.toAst(considerPosition))
          .toList();
    }

    return ConstructorDefinitionStatement(
      className,
      constructorName,
      parameters,
      thisConmstructorParams,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension ClassMethodDeclarationStatementConverterExtension
    on ClassMethodDeclarationStatementContext {
  FunctionDefinitionStatement toAst(bool considerPosition) {
    final fn = this.functionDefinition();

    final type = switch (fn?.returnType) {
      IntTypeContext _ => VariableValueType.INT,
      DoubleTypeContext _ => VariableValueType.DOUBLE,
      BoolTypeContext _ => VariableValueType.BOOLEAN,
      StringTypeContext _ => VariableValueType.STRING,
      VoidTypeContext _ => VariableValueType.VOID,
      CustomTypeContext t => VariableValueType(t.name!.text!),
      _ => throw UnimplementedError()
    };

    final name = fn?.name?.text!;
    final parameters =
        (fn?.parameters() ?? []).map((e) => e.toAst(considerPosition)).toList();

    final statements = (fn?.block()?.statements() ?? [])
        .map((e) => e.toAst(considerPosition))
        .toList();

    return FunctionDefinitionStatement(
      name!,
      parameters,
      type,
      statements,
      toPosition(considerPosition),
    );
  }
}

extension ObjectPropertyAssignmentStatementConverterExtension
    on ObjectPropertyAssignmentStatementContext {
  ObjectPropertyAssignmentStatement toAst(bool considerPosition) {
    final objectName = this.objectName!.text!;
    final propertyName = this.propertyName!.text!;
    final value = this.expression()!.toAst(considerPosition);

    return ObjectPropertyAssignmentStatement(
      objectName,
      propertyName,
      value,
      toPosition(considerPosition),
    );
  }
}

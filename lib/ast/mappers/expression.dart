import 'package:dart2ast_engine/dart2ast.dart';

extension ExpressionConverterExtension on ExpressionContext {
  Expression toAst(bool considerPosition) {
    return switch (this) {
      IntLiteralExpressionContext _ =>
        IntLit(text, toPosition(considerPosition)),
      DoubleLiteralExpressionContext _ =>
        DecLit(text, toPosition(considerPosition)),
      BoolLiteralExpressionContext _ =>
        BoolLit(text, toPosition(considerPosition)),
      StringLiteralExpressionContext _ =>
        StringLit(text, toPosition(considerPosition)),
      ListLiteralExpressionContext e => e.toAst(considerPosition),
      BinaryMathExpressionContext e => e.toAst(considerPosition),
      BinaryLogicExpressionContext e => e.toAst(considerPosition),
      UnaryMathExpressionContext e => e.toAst(considerPosition),
      UnaryLogicNegationExpressionContext e => e.toAst(considerPosition),
      PreIncrementExpressionContext e => e.toAst(considerPosition),
      PostIncrementExpressionContext e => e.toAst(considerPosition),
      PreDecrementExpressionContext e => e.toAst(considerPosition),
      PostDecrementExpressionContext e => e.toAst(considerPosition),
      ParenthesysExpressionContext e => e.toAst(considerPosition),
      VarReferenceExpressionContext e => e.toAst(considerPosition),
      FunctionCallExpressionContext e => e.toAst(considerPosition),
      ObjectMethodCallExpressionContext e => e.toAst(considerPosition),
      ObjectPropertyReferenceExpressionContext e => e.toAst(considerPosition),
      _ => throw UnimplementedError()
    };
  }
}

extension ListLiteralExpressionConverterExtension
    on ListLiteralExpressionContext {
  ListLiteralExpression toAst(bool considerPosition) {
    final listExpression =
        this.expressions().map((e) => e.toAst(considerPosition)).toList();

    return ListLiteralExpression(
      listExpression,
      toPosition(considerPosition),
    );
  }
}

extension BinaryMathExpressionConverterExtension
    on BinaryMathExpressionContext {
  BinaryMathExpression toAst(bool considerPosition) {
    final left = this.left!.toAst(considerPosition);
    final right = this.right!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '+' => MathOperand.plus,
      '-' => MathOperand.minus,
      '*' => MathOperand.times,
      '/' => MathOperand.division,
      _ => throw UnimplementedError()
    };

    return BinaryMathExpression(
      left,
      right,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension BinaryLogicExpressionConverterExtension
    on BinaryLogicExpressionContext {
  BinaryLogicExpression toAst(bool considerPosition) {
    final left = this.left!.toAst(considerPosition);
    final right = this.right!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '&&' => LogicOperand.and,
      '||' => LogicOperand.or,
      '==' => LogicOperand.equal,
      '!=' => LogicOperand.notEqual,
      '!' => LogicOperand.not,
      '<' => LogicOperand.lessThan,
      '>' => LogicOperand.greaterThan,
      '<=' => LogicOperand.lessThanOrEqual,
      '>=' => LogicOperand.greaterThanOrEqual,
      _ => throw UnimplementedError()
    };

    return BinaryLogicExpression(
      left,
      right,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension UnaryMathExpressionConverterExtension on UnaryMathExpressionContext {
  UnaryMathExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '-' => MathOperand.minus,
      '+' => MathOperand.plus,
      _ => throw UnimplementedError()
    };

    return UnaryMathExpression(
      value,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension UnaryLogicExpressionConverterExtension
    on UnaryLogicNegationExpressionContext {
  UnaryLogicExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    var operand = switch (this.operand?.text) {
      '!' => LogicOperand.not,
      _ => throw UnimplementedError()
    };

    return UnaryLogicExpression(
      value,
      operand,
      toPosition(considerPosition),
    );
  }
}

extension PreIncrementExpressionConverterExtension
    on PreIncrementExpressionContext {
  PreIncrementExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return PreIncrementExpression(
      name,
      toPosition(considerPosition),
    );
  }
}

extension PostIncrementExpressionConverterExtension
    on PostIncrementExpressionContext {
  PostIncrementExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return PostIncrementExpression(
      name,
      toPosition(considerPosition),
    );
  }
}

extension PreDecrementExpressionConverterExtension
    on PreDecrementExpressionContext {
  PreDecrementExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return PreDecrementExpression(
      name,
      toPosition(considerPosition),
    );
  }
}

extension PostDecrementExpressionConverterExtension
    on PostDecrementExpressionContext {
  PostDecrementExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return PostDecrementExpression(
      name,
      toPosition(considerPosition),
    );
  }
}

extension ParenthesysExpressionConverterExtension
    on ParenthesysExpressionContext {
  ParenthesysExpression toAst(bool considerPosition) {
    final value = this.value!.toAst(considerPosition);

    return ParenthesysExpression(
      value,
      toPosition(considerPosition),
    );
  }
}

extension VarReferenceExpressionConverterExtension
    on VarReferenceExpressionContext {
  VarReferenceExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;

    return VarReferenceExpression(
      name,
      toPosition(considerPosition),
    );
  }
}

extension FunctionCallExpressionConverterExtension
    on FunctionCallExpressionContext {
  FunctionCallExpression toAst(bool considerPosition) {
    final name = this.ID()!.text!;
    final parameters =
        this.expressions().map((e) => e.toAst(considerPosition)).toList();

    return FunctionCallExpression(
      name,
      parameters.toList(),
      toPosition(considerPosition),
    );
  }
}

extension ObjectMethodCallExpressionConverterExtension
    on ObjectMethodCallExpressionContext {
  ObjectMethodCallExpression toAst(bool considerPosition) {
    final objectName = this.objectName!.text!;
    final methodName = this.methodName!.text!;

    final parameters =
        this.expressions().map((e) => e.toAst(considerPosition)).toList();

    return ObjectMethodCallExpression(
      objectName,
      methodName,
      parameters.toList(),
      toPosition(considerPosition),
    );
  }
}

extension ObjectPropertyReferenceExpressionConverterExtension
    on ObjectPropertyReferenceExpressionContext {
  ObjectPropertyReferenceExpression toAst(bool considerPosition) {
    final objectName = this.objectName!.text!;
    final methodName = this.methodName!.text!;

    return ObjectPropertyReferenceExpression(
      objectName,
      methodName,
      toPosition(considerPosition),
    );
  }
}

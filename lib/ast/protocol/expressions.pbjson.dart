//
//  Generated code. Do not modify.
//  source: expressions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use mathOperandDescriptor instead')
const MathOperand$json = {
  '1': 'MathOperand',
  '2': [
    {'1': 'PLUS', '2': 0},
    {'1': 'MINUS', '2': 1},
    {'1': 'TIMES', '2': 2},
    {'1': 'DIVISION', '2': 3},
  ],
};

/// Descriptor for `MathOperand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mathOperandDescriptor = $convert.base64Decode(
    'CgtNYXRoT3BlcmFuZBIICgRQTFVTEAASCQoFTUlOVVMQARIJCgVUSU1FUxACEgwKCERJVklTSU'
    '9OEAM=');

@$core.Deprecated('Use logicOperandDescriptor instead')
const LogicOperand$json = {
  '1': 'LogicOperand',
  '2': [
    {'1': 'AND', '2': 0},
    {'1': 'OR', '2': 1},
    {'1': 'NOT', '2': 2},
  ],
};

/// Descriptor for `LogicOperand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List logicOperandDescriptor = $convert.base64Decode(
    'CgxMb2dpY09wZXJhbmQSBwoDQU5EEAASBgoCT1IQARIHCgNOT1QQAg==');

@$core.Deprecated('Use comparisonOperandDescriptor instead')
const ComparisonOperand$json = {
  '1': 'ComparisonOperand',
  '2': [
    {'1': 'EQUAL', '2': 0},
    {'1': 'LESS_THAN', '2': 1},
    {'1': 'LESS_THAN_OR_EQUAL', '2': 2},
    {'1': 'GREATER_THAN', '2': 3},
    {'1': 'GREATER_THAN_OR_EQUAL', '2': 4},
    {'1': 'NOT_EQUAL', '2': 5},
  ],
};

/// Descriptor for `ComparisonOperand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List comparisonOperandDescriptor = $convert.base64Decode(
    'ChFDb21wYXJpc29uT3BlcmFuZBIJCgVFUVVBTBAAEg0KCUxFU1NfVEhBThABEhYKEkxFU1NfVE'
    'hBTl9PUl9FUVVBTBACEhAKDEdSRUFURVJfVEhBThADEhkKFUdSRUFURVJfVEhBTl9PUl9FUVVB'
    'TBAEEg0KCU5PVF9FUVVBTBAF');

@$core.Deprecated('Use expressionDescriptor instead')
const Expression$json = {
  '1': 'Expression',
  '2': [
    {'1': 'intLit', '3': 2, '4': 1, '5': 11, '6': '.protocol.IntLit', '9': 0, '10': 'intLit'},
    {'1': 'decLit', '3': 3, '4': 1, '5': 11, '6': '.protocol.DecLit', '9': 0, '10': 'decLit'},
    {'1': 'stringLit', '3': 4, '4': 1, '5': 11, '6': '.protocol.StringLit', '9': 0, '10': 'stringLit'},
    {'1': 'boolLit', '3': 5, '4': 1, '5': 11, '6': '.protocol.BoolLit', '9': 0, '10': 'boolLit'},
    {'1': 'listLiteralExpression', '3': 6, '4': 1, '5': 11, '6': '.protocol.ListLiteralExpression', '9': 0, '10': 'listLiteralExpression'},
    {'1': 'binaryMathExpression', '3': 7, '4': 1, '5': 11, '6': '.protocol.BinaryMathExpression', '9': 0, '10': 'binaryMathExpression'},
    {'1': 'binaryLogicExpression', '3': 8, '4': 1, '5': 11, '6': '.protocol.BinaryLogicExpression', '9': 0, '10': 'binaryLogicExpression'},
    {'1': 'unaryMathExpression', '3': 9, '4': 1, '5': 11, '6': '.protocol.UnaryMathExpression', '9': 0, '10': 'unaryMathExpression'},
    {'1': 'unaryLogicExpression', '3': 10, '4': 1, '5': 11, '6': '.protocol.UnaryLogicExpression', '9': 0, '10': 'unaryLogicExpression'},
    {'1': 'preIncrementExpression', '3': 11, '4': 1, '5': 11, '6': '.protocol.PreIncrementExpression', '9': 0, '10': 'preIncrementExpression'},
    {'1': 'postIncrementExpression', '3': 12, '4': 1, '5': 11, '6': '.protocol.PostIncrementExpression', '9': 0, '10': 'postIncrementExpression'},
    {'1': 'preDecrementExpression', '3': 13, '4': 1, '5': 11, '6': '.protocol.PreDecrementExpression', '9': 0, '10': 'preDecrementExpression'},
    {'1': 'postDecrementExpression', '3': 14, '4': 1, '5': 11, '6': '.protocol.PostDecrementExpression', '9': 0, '10': 'postDecrementExpression'},
    {'1': 'inputExpression', '3': 15, '4': 1, '5': 11, '6': '.protocol.InputExpression', '9': 0, '10': 'inputExpression'},
    {'1': 'outputExpression', '3': 16, '4': 1, '5': 11, '6': '.protocol.OutputExpression', '9': 0, '10': 'outputExpression'},
    {'1': 'varReferenceExpression', '3': 17, '4': 1, '5': 11, '6': '.protocol.VarReferenceExpression', '9': 0, '10': 'varReferenceExpression'},
    {'1': 'parenthesisExpression', '3': 18, '4': 1, '5': 11, '6': '.protocol.ParenthesisExpression', '9': 0, '10': 'parenthesisExpression'},
    {'1': 'functionCallExpression', '3': 19, '4': 1, '5': 11, '6': '.protocol.FunctionCallExpression', '9': 0, '10': 'functionCallExpression'},
    {'1': 'objectPropertyReferenceExpression', '3': 20, '4': 1, '5': 11, '6': '.protocol.ObjectPropertyReferenceExpression', '9': 0, '10': 'objectPropertyReferenceExpression'},
    {'1': 'objectMethodCallExpression', '3': 21, '4': 1, '5': 11, '6': '.protocol.ObjectMethodCallExpression', '9': 0, '10': 'objectMethodCallExpression'},
    {'1': 'binaryComparisonExpression', '3': 22, '4': 1, '5': 11, '6': '.protocol.BinaryComparisonExpression', '9': 0, '10': 'binaryComparisonExpression'},
  ],
  '8': [
    {'1': 'expr'},
  ],
};

/// Descriptor for `Expression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionDescriptor = $convert.base64Decode(
    'CgpFeHByZXNzaW9uEioKBmludExpdBgCIAEoCzIQLnByb3RvY29sLkludExpdEgAUgZpbnRMaX'
    'QSKgoGZGVjTGl0GAMgASgLMhAucHJvdG9jb2wuRGVjTGl0SABSBmRlY0xpdBIzCglzdHJpbmdM'
    'aXQYBCABKAsyEy5wcm90b2NvbC5TdHJpbmdMaXRIAFIJc3RyaW5nTGl0Ei0KB2Jvb2xMaXQYBS'
    'ABKAsyES5wcm90b2NvbC5Cb29sTGl0SABSB2Jvb2xMaXQSVwoVbGlzdExpdGVyYWxFeHByZXNz'
    'aW9uGAYgASgLMh8ucHJvdG9jb2wuTGlzdExpdGVyYWxFeHByZXNzaW9uSABSFWxpc3RMaXRlcm'
    'FsRXhwcmVzc2lvbhJUChRiaW5hcnlNYXRoRXhwcmVzc2lvbhgHIAEoCzIeLnByb3RvY29sLkJp'
    'bmFyeU1hdGhFeHByZXNzaW9uSABSFGJpbmFyeU1hdGhFeHByZXNzaW9uElcKFWJpbmFyeUxvZ2'
    'ljRXhwcmVzc2lvbhgIIAEoCzIfLnByb3RvY29sLkJpbmFyeUxvZ2ljRXhwcmVzc2lvbkgAUhVi'
    'aW5hcnlMb2dpY0V4cHJlc3Npb24SUQoTdW5hcnlNYXRoRXhwcmVzc2lvbhgJIAEoCzIdLnByb3'
    'RvY29sLlVuYXJ5TWF0aEV4cHJlc3Npb25IAFITdW5hcnlNYXRoRXhwcmVzc2lvbhJUChR1bmFy'
    'eUxvZ2ljRXhwcmVzc2lvbhgKIAEoCzIeLnByb3RvY29sLlVuYXJ5TG9naWNFeHByZXNzaW9uSA'
    'BSFHVuYXJ5TG9naWNFeHByZXNzaW9uEloKFnByZUluY3JlbWVudEV4cHJlc3Npb24YCyABKAsy'
    'IC5wcm90b2NvbC5QcmVJbmNyZW1lbnRFeHByZXNzaW9uSABSFnByZUluY3JlbWVudEV4cHJlc3'
    'Npb24SXQoXcG9zdEluY3JlbWVudEV4cHJlc3Npb24YDCABKAsyIS5wcm90b2NvbC5Qb3N0SW5j'
    'cmVtZW50RXhwcmVzc2lvbkgAUhdwb3N0SW5jcmVtZW50RXhwcmVzc2lvbhJaChZwcmVEZWNyZW'
    '1lbnRFeHByZXNzaW9uGA0gASgLMiAucHJvdG9jb2wuUHJlRGVjcmVtZW50RXhwcmVzc2lvbkgA'
    'UhZwcmVEZWNyZW1lbnRFeHByZXNzaW9uEl0KF3Bvc3REZWNyZW1lbnRFeHByZXNzaW9uGA4gAS'
    'gLMiEucHJvdG9jb2wuUG9zdERlY3JlbWVudEV4cHJlc3Npb25IAFIXcG9zdERlY3JlbWVudEV4'
    'cHJlc3Npb24SRQoPaW5wdXRFeHByZXNzaW9uGA8gASgLMhkucHJvdG9jb2wuSW5wdXRFeHByZX'
    'NzaW9uSABSD2lucHV0RXhwcmVzc2lvbhJIChBvdXRwdXRFeHByZXNzaW9uGBAgASgLMhoucHJv'
    'dG9jb2wuT3V0cHV0RXhwcmVzc2lvbkgAUhBvdXRwdXRFeHByZXNzaW9uEloKFnZhclJlZmVyZW'
    '5jZUV4cHJlc3Npb24YESABKAsyIC5wcm90b2NvbC5WYXJSZWZlcmVuY2VFeHByZXNzaW9uSABS'
    'FnZhclJlZmVyZW5jZUV4cHJlc3Npb24SVwoVcGFyZW50aGVzaXNFeHByZXNzaW9uGBIgASgLMh'
    '8ucHJvdG9jb2wuUGFyZW50aGVzaXNFeHByZXNzaW9uSABSFXBhcmVudGhlc2lzRXhwcmVzc2lv'
    'bhJaChZmdW5jdGlvbkNhbGxFeHByZXNzaW9uGBMgASgLMiAucHJvdG9jb2wuRnVuY3Rpb25DYW'
    'xsRXhwcmVzc2lvbkgAUhZmdW5jdGlvbkNhbGxFeHByZXNzaW9uEnsKIW9iamVjdFByb3BlcnR5'
    'UmVmZXJlbmNlRXhwcmVzc2lvbhgUIAEoCzIrLnByb3RvY29sLk9iamVjdFByb3BlcnR5UmVmZX'
    'JlbmNlRXhwcmVzc2lvbkgAUiFvYmplY3RQcm9wZXJ0eVJlZmVyZW5jZUV4cHJlc3Npb24SZgoa'
    'b2JqZWN0TWV0aG9kQ2FsbEV4cHJlc3Npb24YFSABKAsyJC5wcm90b2NvbC5PYmplY3RNZXRob2'
    'RDYWxsRXhwcmVzc2lvbkgAUhpvYmplY3RNZXRob2RDYWxsRXhwcmVzc2lvbhJmChpiaW5hcnlD'
    'b21wYXJpc29uRXhwcmVzc2lvbhgWIAEoCzIkLnByb3RvY29sLkJpbmFyeUNvbXBhcmlzb25FeH'
    'ByZXNzaW9uSABSGmJpbmFyeUNvbXBhcmlzb25FeHByZXNzaW9uQgYKBGV4cHI=');

@$core.Deprecated('Use intLitDescriptor instead')
const IntLit$json = {
  '1': 'IntLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `IntLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intLitDescriptor = $convert.base64Decode(
    'CgZJbnRMaXQSFAoFdmFsdWUYASABKAlSBXZhbHVlEjMKCHBvc2l0aW9uGAIgASgLMhIucHJvdG'
    '9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQFCCwoJX3Bvc2l0aW9u');

@$core.Deprecated('Use decLitDescriptor instead')
const DecLit$json = {
  '1': 'DecLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `DecLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decLitDescriptor = $convert.base64Decode(
    'CgZEZWNMaXQSFAoFdmFsdWUYASABKAlSBXZhbHVlEjMKCHBvc2l0aW9uGAIgASgLMhIucHJvdG'
    '9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQFCCwoJX3Bvc2l0aW9u');

@$core.Deprecated('Use stringLitDescriptor instead')
const StringLit$json = {
  '1': 'StringLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `StringLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringLitDescriptor = $convert.base64Decode(
    'CglTdHJpbmdMaXQSFAoFdmFsdWUYASABKAlSBXZhbHVlEjMKCHBvc2l0aW9uGAIgASgLMhIucH'
    'JvdG9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQFCCwoJX3Bvc2l0aW9u');

@$core.Deprecated('Use boolLitDescriptor instead')
const BoolLit$json = {
  '1': 'BoolLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `BoolLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolLitDescriptor = $convert.base64Decode(
    'CgdCb29sTGl0EhQKBXZhbHVlGAEgASgJUgV2YWx1ZRIzCghwb3NpdGlvbhgCIAEoCzISLnByb3'
    'RvY29sLlBvc2l0aW9uSABSCHBvc2l0aW9uiAEBQgsKCV9wb3NpdGlvbg==');

@$core.Deprecated('Use listLiteralExpressionDescriptor instead')
const ListLiteralExpression$json = {
  '1': 'ListLiteralExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `ListLiteralExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLiteralExpressionDescriptor = $convert.base64Decode(
    'ChVMaXN0TGl0ZXJhbEV4cHJlc3Npb24SKgoFdmFsdWUYASADKAsyFC5wcm90b2NvbC5FeHByZX'
    'NzaW9uUgV2YWx1ZRIzCghwb3NpdGlvbhgCIAEoCzISLnByb3RvY29sLlBvc2l0aW9uSABSCHBv'
    'c2l0aW9uiAEBQgsKCV9wb3NpdGlvbg==');

@$core.Deprecated('Use binaryExpressionDescriptor instead')
const BinaryExpression$json = {
  '1': 'BinaryExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'right'},
  ],
};

/// Descriptor for `BinaryExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryExpressionDescriptor = $convert.base64Decode(
    'ChBCaW5hcnlFeHByZXNzaW9uEigKBGxlZnQYASABKAsyFC5wcm90b2NvbC5FeHByZXNzaW9uUg'
    'RsZWZ0EioKBXJpZ2h0GAIgASgLMhQucHJvdG9jb2wuRXhwcmVzc2lvblIFcmlnaHQ=');

@$core.Deprecated('Use binaryMathExpressionDescriptor instead')
const BinaryMathExpression$json = {
  '1': 'BinaryMathExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'right'},
    {'1': 'operand', '3': 3, '4': 1, '5': 14, '6': '.protocol.MathOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `BinaryMathExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryMathExpressionDescriptor = $convert.base64Decode(
    'ChRCaW5hcnlNYXRoRXhwcmVzc2lvbhIoCgRsZWZ0GAEgASgLMhQucHJvdG9jb2wuRXhwcmVzc2'
    'lvblIEbGVmdBIqCgVyaWdodBgCIAEoCzIULnByb3RvY29sLkV4cHJlc3Npb25SBXJpZ2h0Ei8K'
    'B29wZXJhbmQYAyABKA4yFS5wcm90b2NvbC5NYXRoT3BlcmFuZFIHb3BlcmFuZBIzCghwb3NpdG'
    'lvbhgEIAEoCzISLnByb3RvY29sLlBvc2l0aW9uSABSCHBvc2l0aW9uiAEBQgsKCV9wb3NpdGlv'
    'bg==');

@$core.Deprecated('Use binaryLogicExpressionDescriptor instead')
const BinaryLogicExpression$json = {
  '1': 'BinaryLogicExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'right'},
    {'1': 'operand', '3': 3, '4': 1, '5': 14, '6': '.protocol.LogicOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `BinaryLogicExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryLogicExpressionDescriptor = $convert.base64Decode(
    'ChVCaW5hcnlMb2dpY0V4cHJlc3Npb24SKAoEbGVmdBgBIAEoCzIULnByb3RvY29sLkV4cHJlc3'
    'Npb25SBGxlZnQSKgoFcmlnaHQYAiABKAsyFC5wcm90b2NvbC5FeHByZXNzaW9uUgVyaWdodBIw'
    'CgdvcGVyYW5kGAMgASgOMhYucHJvdG9jb2wuTG9naWNPcGVyYW5kUgdvcGVyYW5kEjMKCHBvc2'
    'l0aW9uGAQgASgLMhIucHJvdG9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQFCCwoJX3Bvc2l0'
    'aW9u');

@$core.Deprecated('Use binaryComparisonExpressionDescriptor instead')
const BinaryComparisonExpression$json = {
  '1': 'BinaryComparisonExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'right'},
    {'1': 'operand', '3': 3, '4': 1, '5': 14, '6': '.protocol.ComparisonOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `BinaryComparisonExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryComparisonExpressionDescriptor = $convert.base64Decode(
    'ChpCaW5hcnlDb21wYXJpc29uRXhwcmVzc2lvbhIoCgRsZWZ0GAEgASgLMhQucHJvdG9jb2wuRX'
    'hwcmVzc2lvblIEbGVmdBIqCgVyaWdodBgCIAEoCzIULnByb3RvY29sLkV4cHJlc3Npb25SBXJp'
    'Z2h0EjUKB29wZXJhbmQYAyABKA4yGy5wcm90b2NvbC5Db21wYXJpc29uT3BlcmFuZFIHb3Blcm'
    'FuZBIzCghwb3NpdGlvbhgEIAEoCzISLnByb3RvY29sLlBvc2l0aW9uSABSCHBvc2l0aW9uiAEB'
    'QgsKCV9wb3NpdGlvbg==');

@$core.Deprecated('Use unaryMathExpressionDescriptor instead')
const UnaryMathExpression$json = {
  '1': 'UnaryMathExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'operand', '3': 2, '4': 1, '5': 14, '6': '.protocol.MathOperand', '10': 'operand'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `UnaryMathExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unaryMathExpressionDescriptor = $convert.base64Decode(
    'ChNVbmFyeU1hdGhFeHByZXNzaW9uEioKBXZhbHVlGAEgASgLMhQucHJvdG9jb2wuRXhwcmVzc2'
    'lvblIFdmFsdWUSLwoHb3BlcmFuZBgCIAEoDjIVLnByb3RvY29sLk1hdGhPcGVyYW5kUgdvcGVy'
    'YW5kEjMKCHBvc2l0aW9uGAMgASgLMhIucHJvdG9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQ'
    'FCCwoJX3Bvc2l0aW9u');

@$core.Deprecated('Use unaryLogicExpressionDescriptor instead')
const UnaryLogicExpression$json = {
  '1': 'UnaryLogicExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'operand', '3': 2, '4': 1, '5': 14, '6': '.protocol.LogicOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `UnaryLogicExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unaryLogicExpressionDescriptor = $convert.base64Decode(
    'ChRVbmFyeUxvZ2ljRXhwcmVzc2lvbhIqCgV2YWx1ZRgBIAEoCzIULnByb3RvY29sLkV4cHJlc3'
    'Npb25SBXZhbHVlEjAKB29wZXJhbmQYAiABKA4yFi5wcm90b2NvbC5Mb2dpY09wZXJhbmRSB29w'
    'ZXJhbmQSMwoIcG9zaXRpb24YBCABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlvbo'
    'gBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use preIncrementExpressionDescriptor instead')
const PreIncrementExpression$json = {
  '1': 'PreIncrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `PreIncrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preIncrementExpressionDescriptor = $convert.base64Decode(
    'ChZQcmVJbmNyZW1lbnRFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSMwoIcG9zaXRpb2'
    '4YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlvbogBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use postIncrementExpressionDescriptor instead')
const PostIncrementExpression$json = {
  '1': 'PostIncrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `PostIncrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postIncrementExpressionDescriptor = $convert.base64Decode(
    'ChdQb3N0SW5jcmVtZW50RXhwcmVzc2lvbhISCgRuYW1lGAEgASgJUgRuYW1lEjMKCHBvc2l0aW'
    '9uGAIgASgLMhIucHJvdG9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQFCCwoJX3Bvc2l0aW9u');

@$core.Deprecated('Use preDecrementExpressionDescriptor instead')
const PreDecrementExpression$json = {
  '1': 'PreDecrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `PreDecrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preDecrementExpressionDescriptor = $convert.base64Decode(
    'ChZQcmVEZWNyZW1lbnRFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSMwoIcG9zaXRpb2'
    '4YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlvbogBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use postDecrementExpressionDescriptor instead')
const PostDecrementExpression$json = {
  '1': 'PostDecrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `PostDecrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDecrementExpressionDescriptor = $convert.base64Decode(
    'ChdQb3N0RGVjcmVtZW50RXhwcmVzc2lvbhISCgRuYW1lGAEgASgJUgRuYW1lEjMKCHBvc2l0aW'
    '9uGAIgASgLMhIucHJvdG9jb2wuUG9zaXRpb25IAFIIcG9zaXRpb26IAQFCCwoJX3Bvc2l0aW9u');

@$core.Deprecated('Use inputExpressionDescriptor instead')
const InputExpression$json = {
  '1': 'InputExpression',
  '2': [
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `InputExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputExpressionDescriptor = $convert.base64Decode(
    'Cg9JbnB1dEV4cHJlc3Npb24SMwoIcG9zaXRpb24YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbk'
    'gAUghwb3NpdGlvbogBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use outputExpressionDescriptor instead')
const OutputExpression$json = {
  '1': 'OutputExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `OutputExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputExpressionDescriptor = $convert.base64Decode(
    'ChBPdXRwdXRFeHByZXNzaW9uEioKBXZhbHVlGAEgASgLMhQucHJvdG9jb2wuRXhwcmVzc2lvbl'
    'IFdmFsdWUSMwoIcG9zaXRpb24YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlv'
    'bogBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use varReferenceExpressionDescriptor instead')
const VarReferenceExpression$json = {
  '1': 'VarReferenceExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `VarReferenceExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List varReferenceExpressionDescriptor = $convert.base64Decode(
    'ChZWYXJSZWZlcmVuY2VFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSMwoIcG9zaXRpb2'
    '4YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlvbogBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use parenthesisExpressionDescriptor instead')
const ParenthesisExpression$json = {
  '1': 'ParenthesisExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `ParenthesisExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parenthesisExpressionDescriptor = $convert.base64Decode(
    'ChVQYXJlbnRoZXNpc0V4cHJlc3Npb24SKgoFdmFsdWUYASABKAsyFC5wcm90b2NvbC5FeHByZX'
    'NzaW9uUgV2YWx1ZRIzCghwb3NpdGlvbhgCIAEoCzISLnByb3RvY29sLlBvc2l0aW9uSABSCHBv'
    'c2l0aW9uiAEBQgsKCV9wb3NpdGlvbg==');

@$core.Deprecated('Use functionCallExpressionDescriptor instead')
const FunctionCallExpression$json = {
  '1': 'FunctionCallExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parameters', '3': 2, '4': 3, '5': 11, '6': '.protocol.Expression', '10': 'parameters'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `FunctionCallExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionCallExpressionDescriptor = $convert.base64Decode(
    'ChZGdW5jdGlvbkNhbGxFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSNAoKcGFyYW1ldG'
    'VycxgCIAMoCzIULnByb3RvY29sLkV4cHJlc3Npb25SCnBhcmFtZXRlcnMSMwoIcG9zaXRpb24Y'
    'AyABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlvbogBAUILCglfcG9zaXRpb24=');

@$core.Deprecated('Use objectPropertyReferenceExpressionDescriptor instead')
const ObjectPropertyReferenceExpression$json = {
  '1': 'ObjectPropertyReferenceExpression',
  '2': [
    {'1': 'objectName', '3': 1, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `ObjectPropertyReferenceExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectPropertyReferenceExpressionDescriptor = $convert.base64Decode(
    'CiFPYmplY3RQcm9wZXJ0eVJlZmVyZW5jZUV4cHJlc3Npb24SHgoKb2JqZWN0TmFtZRgBIAEoCV'
    'IKb2JqZWN0TmFtZRIiCgxwcm9wZXJ0eU5hbWUYAiABKAlSDHByb3BlcnR5TmFtZRIzCghwb3Np'
    'dGlvbhgDIAEoCzISLnByb3RvY29sLlBvc2l0aW9uSABSCHBvc2l0aW9uiAEBQgsKCV9wb3NpdG'
    'lvbg==');

@$core.Deprecated('Use objectMethodCallExpressionDescriptor instead')
const ObjectMethodCallExpression$json = {
  '1': 'ObjectMethodCallExpression',
  '2': [
    {'1': 'objectName', '3': 1, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'methodName', '3': 2, '4': 1, '5': 9, '10': 'methodName'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.protocol.Expression', '10': 'parameters'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position', '17': true},
  ],
  '8': [
    {'1': '_position'},
  ],
};

/// Descriptor for `ObjectMethodCallExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMethodCallExpressionDescriptor = $convert.base64Decode(
    'ChpPYmplY3RNZXRob2RDYWxsRXhwcmVzc2lvbhIeCgpvYmplY3ROYW1lGAEgASgJUgpvYmplY3'
    'ROYW1lEh4KCm1ldGhvZE5hbWUYAiABKAlSCm1ldGhvZE5hbWUSNAoKcGFyYW1ldGVycxgDIAMo'
    'CzIULnByb3RvY29sLkV4cHJlc3Npb25SCnBhcmFtZXRlcnMSMwoIcG9zaXRpb24YBCABKAsyEi'
    '5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3NpdGlvbogBAUILCglfcG9zaXRpb24=');


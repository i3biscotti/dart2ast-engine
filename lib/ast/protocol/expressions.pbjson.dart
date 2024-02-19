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
    {'1': 'EQUAL', '2': 3},
    {'1': 'LESS_THAN', '2': 4},
    {'1': 'LESS_THAN_OR_EQUAL', '2': 5},
    {'1': 'GREATER_THAN', '2': 6},
    {'1': 'GREATER_THAN_OR_EQUAL', '2': 7},
    {'1': 'NOT_EQUAL', '2': 8},
  ],
};

/// Descriptor for `LogicOperand`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List logicOperandDescriptor = $convert.base64Decode(
    'CgxMb2dpY09wZXJhbmQSBwoDQU5EEAASBgoCT1IQARIHCgNOT1QQAhIJCgVFUVVBTBADEg0KCU'
    'xFU1NfVEhBThAEEhYKEkxFU1NfVEhBTl9PUl9FUVVBTBAFEhAKDEdSRUFURVJfVEhBThAGEhkK'
    'FUdSRUFURVJfVEhBTl9PUl9FUVVBTBAHEg0KCU5PVF9FUVVBTBAI');

@$core.Deprecated('Use expressionDescriptor instead')
const Expression$json = {
  '1': 'Expression',
  '2': [
    {'1': 'intLit', '3': 2, '4': 1, '5': 11, '6': '.IntLit', '9': 0, '10': 'intLit'},
    {'1': 'decLit', '3': 3, '4': 1, '5': 11, '6': '.DecLit', '9': 0, '10': 'decLit'},
    {'1': 'stringLit', '3': 4, '4': 1, '5': 11, '6': '.StringLit', '9': 0, '10': 'stringLit'},
    {'1': 'boolLit', '3': 5, '4': 1, '5': 11, '6': '.BoolLit', '9': 0, '10': 'boolLit'},
    {'1': 'listLiteralExpression', '3': 6, '4': 1, '5': 11, '6': '.ListLiteralExpression', '9': 0, '10': 'listLiteralExpression'},
    {'1': 'binaryMathExpression', '3': 7, '4': 1, '5': 11, '6': '.BinaryMathExpression', '9': 0, '10': 'binaryMathExpression'},
    {'1': 'binaryLogicExpression', '3': 8, '4': 1, '5': 11, '6': '.BinaryLogicExpression', '9': 0, '10': 'binaryLogicExpression'},
    {'1': 'unaryMathExpression', '3': 9, '4': 1, '5': 11, '6': '.UnaryMathExpression', '9': 0, '10': 'unaryMathExpression'},
    {'1': 'unaryLogicExpression', '3': 10, '4': 1, '5': 11, '6': '.UnaryLogicExpression', '9': 0, '10': 'unaryLogicExpression'},
    {'1': 'preIncrementExpression', '3': 11, '4': 1, '5': 11, '6': '.PreIncrementExpression', '9': 0, '10': 'preIncrementExpression'},
    {'1': 'postIncrementExpression', '3': 12, '4': 1, '5': 11, '6': '.PostIncrementExpression', '9': 0, '10': 'postIncrementExpression'},
    {'1': 'preDecrementExpression', '3': 13, '4': 1, '5': 11, '6': '.PreDecrementExpression', '9': 0, '10': 'preDecrementExpression'},
    {'1': 'postDecrementExpression', '3': 14, '4': 1, '5': 11, '6': '.PostDecrementExpression', '9': 0, '10': 'postDecrementExpression'},
    {'1': 'inputExpression', '3': 15, '4': 1, '5': 11, '6': '.InputExpression', '9': 0, '10': 'inputExpression'},
    {'1': 'outputExpression', '3': 16, '4': 1, '5': 11, '6': '.OutputExpression', '9': 0, '10': 'outputExpression'},
    {'1': 'varReferenceExpression', '3': 17, '4': 1, '5': 11, '6': '.VarReferenceExpression', '9': 0, '10': 'varReferenceExpression'},
    {'1': 'parenthesysExpression', '3': 18, '4': 1, '5': 11, '6': '.ParenthesisExpression', '9': 0, '10': 'parenthesysExpression'},
    {'1': 'functionCallExpression', '3': 19, '4': 1, '5': 11, '6': '.FunctionCallExpression', '9': 0, '10': 'functionCallExpression'},
    {'1': 'objectPropertyReferenceExpression', '3': 20, '4': 1, '5': 11, '6': '.ObjectPropertyReferenceExpression', '9': 0, '10': 'objectPropertyReferenceExpression'},
    {'1': 'objectMethodCallExpression', '3': 21, '4': 1, '5': 11, '6': '.ObjectMethodCallExpression', '9': 0, '10': 'objectMethodCallExpression'},
  ],
  '8': [
    {'1': 'expr'},
  ],
};

/// Descriptor for `Expression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionDescriptor = $convert.base64Decode(
    'CgpFeHByZXNzaW9uEiEKBmludExpdBgCIAEoCzIHLkludExpdEgAUgZpbnRMaXQSIQoGZGVjTG'
    'l0GAMgASgLMgcuRGVjTGl0SABSBmRlY0xpdBIqCglzdHJpbmdMaXQYBCABKAsyCi5TdHJpbmdM'
    'aXRIAFIJc3RyaW5nTGl0EiQKB2Jvb2xMaXQYBSABKAsyCC5Cb29sTGl0SABSB2Jvb2xMaXQSTg'
    'oVbGlzdExpdGVyYWxFeHByZXNzaW9uGAYgASgLMhYuTGlzdExpdGVyYWxFeHByZXNzaW9uSABS'
    'FWxpc3RMaXRlcmFsRXhwcmVzc2lvbhJLChRiaW5hcnlNYXRoRXhwcmVzc2lvbhgHIAEoCzIVLk'
    'JpbmFyeU1hdGhFeHByZXNzaW9uSABSFGJpbmFyeU1hdGhFeHByZXNzaW9uEk4KFWJpbmFyeUxv'
    'Z2ljRXhwcmVzc2lvbhgIIAEoCzIWLkJpbmFyeUxvZ2ljRXhwcmVzc2lvbkgAUhViaW5hcnlMb2'
    'dpY0V4cHJlc3Npb24SSAoTdW5hcnlNYXRoRXhwcmVzc2lvbhgJIAEoCzIULlVuYXJ5TWF0aEV4'
    'cHJlc3Npb25IAFITdW5hcnlNYXRoRXhwcmVzc2lvbhJLChR1bmFyeUxvZ2ljRXhwcmVzc2lvbh'
    'gKIAEoCzIVLlVuYXJ5TG9naWNFeHByZXNzaW9uSABSFHVuYXJ5TG9naWNFeHByZXNzaW9uElEK'
    'FnByZUluY3JlbWVudEV4cHJlc3Npb24YCyABKAsyFy5QcmVJbmNyZW1lbnRFeHByZXNzaW9uSA'
    'BSFnByZUluY3JlbWVudEV4cHJlc3Npb24SVAoXcG9zdEluY3JlbWVudEV4cHJlc3Npb24YDCAB'
    'KAsyGC5Qb3N0SW5jcmVtZW50RXhwcmVzc2lvbkgAUhdwb3N0SW5jcmVtZW50RXhwcmVzc2lvbh'
    'JRChZwcmVEZWNyZW1lbnRFeHByZXNzaW9uGA0gASgLMhcuUHJlRGVjcmVtZW50RXhwcmVzc2lv'
    'bkgAUhZwcmVEZWNyZW1lbnRFeHByZXNzaW9uElQKF3Bvc3REZWNyZW1lbnRFeHByZXNzaW9uGA'
    '4gASgLMhguUG9zdERlY3JlbWVudEV4cHJlc3Npb25IAFIXcG9zdERlY3JlbWVudEV4cHJlc3Np'
    'b24SPAoPaW5wdXRFeHByZXNzaW9uGA8gASgLMhAuSW5wdXRFeHByZXNzaW9uSABSD2lucHV0RX'
    'hwcmVzc2lvbhI/ChBvdXRwdXRFeHByZXNzaW9uGBAgASgLMhEuT3V0cHV0RXhwcmVzc2lvbkgA'
    'UhBvdXRwdXRFeHByZXNzaW9uElEKFnZhclJlZmVyZW5jZUV4cHJlc3Npb24YESABKAsyFy5WYX'
    'JSZWZlcmVuY2VFeHByZXNzaW9uSABSFnZhclJlZmVyZW5jZUV4cHJlc3Npb24STgoVcGFyZW50'
    'aGVzeXNFeHByZXNzaW9uGBIgASgLMhYuUGFyZW50aGVzaXNFeHByZXNzaW9uSABSFXBhcmVudG'
    'hlc3lzRXhwcmVzc2lvbhJRChZmdW5jdGlvbkNhbGxFeHByZXNzaW9uGBMgASgLMhcuRnVuY3Rp'
    'b25DYWxsRXhwcmVzc2lvbkgAUhZmdW5jdGlvbkNhbGxFeHByZXNzaW9uEnIKIW9iamVjdFByb3'
    'BlcnR5UmVmZXJlbmNlRXhwcmVzc2lvbhgUIAEoCzIiLk9iamVjdFByb3BlcnR5UmVmZXJlbmNl'
    'RXhwcmVzc2lvbkgAUiFvYmplY3RQcm9wZXJ0eVJlZmVyZW5jZUV4cHJlc3Npb24SXQoab2JqZW'
    'N0TWV0aG9kQ2FsbEV4cHJlc3Npb24YFSABKAsyGy5PYmplY3RNZXRob2RDYWxsRXhwcmVzc2lv'
    'bkgAUhpvYmplY3RNZXRob2RDYWxsRXhwcmVzc2lvbkIGCgRleHBy');

@$core.Deprecated('Use intLitDescriptor instead')
const IntLit$json = {
  '1': 'IntLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `IntLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intLitDescriptor = $convert.base64Decode(
    'CgZJbnRMaXQSFAoFdmFsdWUYASABKAlSBXZhbHVlEiUKCHBvc2l0aW9uGAIgASgLMgkuUG9zaX'
    'Rpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use decLitDescriptor instead')
const DecLit$json = {
  '1': 'DecLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `DecLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decLitDescriptor = $convert.base64Decode(
    'CgZEZWNMaXQSFAoFdmFsdWUYASABKAlSBXZhbHVlEiUKCHBvc2l0aW9uGAIgASgLMgkuUG9zaX'
    'Rpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use stringLitDescriptor instead')
const StringLit$json = {
  '1': 'StringLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `StringLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringLitDescriptor = $convert.base64Decode(
    'CglTdHJpbmdMaXQSFAoFdmFsdWUYASABKAlSBXZhbHVlEiUKCHBvc2l0aW9uGAIgASgLMgkuUG'
    '9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use boolLitDescriptor instead')
const BoolLit$json = {
  '1': 'BoolLit',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `BoolLit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolLitDescriptor = $convert.base64Decode(
    'CgdCb29sTGl0EhQKBXZhbHVlGAEgASgJUgV2YWx1ZRIlCghwb3NpdGlvbhgCIAEoCzIJLlBvc2'
    'l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use listLiteralExpressionDescriptor instead')
const ListLiteralExpression$json = {
  '1': 'ListLiteralExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ListLiteralExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listLiteralExpressionDescriptor = $convert.base64Decode(
    'ChVMaXN0TGl0ZXJhbEV4cHJlc3Npb24SKgoFdmFsdWUYASADKAsyFC5nb29nbGUucHJvdG9idW'
    'YuQW55UgV2YWx1ZRIlCghwb3NpdGlvbhgCIAEoCzIJLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use binaryExpressionDescriptor instead')
const BinaryExpression$json = {
  '1': 'BinaryExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'right'},
  ],
};

/// Descriptor for `BinaryExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryExpressionDescriptor = $convert.base64Decode(
    'ChBCaW5hcnlFeHByZXNzaW9uEh8KBGxlZnQYASABKAsyCy5FeHByZXNzaW9uUgRsZWZ0EiEKBX'
    'JpZ2h0GAIgASgLMgsuRXhwcmVzc2lvblIFcmlnaHQ=');

@$core.Deprecated('Use binaryMathExpressionDescriptor instead')
const BinaryMathExpression$json = {
  '1': 'BinaryMathExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'right'},
    {'1': 'operand', '3': 3, '4': 1, '5': 14, '6': '.MathOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `BinaryMathExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryMathExpressionDescriptor = $convert.base64Decode(
    'ChRCaW5hcnlNYXRoRXhwcmVzc2lvbhIfCgRsZWZ0GAEgASgLMgsuRXhwcmVzc2lvblIEbGVmdB'
    'IhCgVyaWdodBgCIAEoCzILLkV4cHJlc3Npb25SBXJpZ2h0EiYKB29wZXJhbmQYAyABKA4yDC5N'
    'YXRoT3BlcmFuZFIHb3BlcmFuZBIlCghwb3NpdGlvbhgEIAEoCzIJLlBvc2l0aW9uUghwb3NpdG'
    'lvbg==');

@$core.Deprecated('Use binaryLogicExpressionDescriptor instead')
const BinaryLogicExpression$json = {
  '1': 'BinaryLogicExpression',
  '2': [
    {'1': 'left', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'left'},
    {'1': 'right', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'right'},
    {'1': 'operand', '3': 3, '4': 1, '5': 14, '6': '.LogicOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `BinaryLogicExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryLogicExpressionDescriptor = $convert.base64Decode(
    'ChVCaW5hcnlMb2dpY0V4cHJlc3Npb24SHwoEbGVmdBgBIAEoCzILLkV4cHJlc3Npb25SBGxlZn'
    'QSIQoFcmlnaHQYAiABKAsyCy5FeHByZXNzaW9uUgVyaWdodBInCgdvcGVyYW5kGAMgASgOMg0u'
    'TG9naWNPcGVyYW5kUgdvcGVyYW5kEiUKCHBvc2l0aW9uGAQgASgLMgkuUG9zaXRpb25SCHBvc2'
    'l0aW9u');

@$core.Deprecated('Use unaryMathExpressionDescriptor instead')
const UnaryMathExpression$json = {
  '1': 'UnaryMathExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'operand', '3': 2, '4': 1, '5': 14, '6': '.MathOperand', '10': 'operand'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `UnaryMathExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unaryMathExpressionDescriptor = $convert.base64Decode(
    'ChNVbmFyeU1hdGhFeHByZXNzaW9uEiEKBXZhbHVlGAEgASgLMgsuRXhwcmVzc2lvblIFdmFsdW'
    'USJgoHb3BlcmFuZBgCIAEoDjIMLk1hdGhPcGVyYW5kUgdvcGVyYW5kEiUKCHBvc2l0aW9uGAMg'
    'ASgLMgkuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use unaryLogicExpressionDescriptor instead')
const UnaryLogicExpression$json = {
  '1': 'UnaryLogicExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'operand', '3': 2, '4': 1, '5': 14, '6': '.LogicOperand', '10': 'operand'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `UnaryLogicExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unaryLogicExpressionDescriptor = $convert.base64Decode(
    'ChRVbmFyeUxvZ2ljRXhwcmVzc2lvbhIhCgV2YWx1ZRgBIAEoCzILLkV4cHJlc3Npb25SBXZhbH'
    'VlEicKB29wZXJhbmQYAiABKA4yDS5Mb2dpY09wZXJhbmRSB29wZXJhbmQSJQoIcG9zaXRpb24Y'
    'BCABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use preIncrementExpressionDescriptor instead')
const PreIncrementExpression$json = {
  '1': 'PreIncrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `PreIncrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preIncrementExpressionDescriptor = $convert.base64Decode(
    'ChZQcmVJbmNyZW1lbnRFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoIcG9zaXRpb2'
    '4YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use postIncrementExpressionDescriptor instead')
const PostIncrementExpression$json = {
  '1': 'PostIncrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `PostIncrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postIncrementExpressionDescriptor = $convert.base64Decode(
    'ChdQb3N0SW5jcmVtZW50RXhwcmVzc2lvbhISCgRuYW1lGAEgASgJUgRuYW1lEiUKCHBvc2l0aW'
    '9uGAIgASgLMgkuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use preDecrementExpressionDescriptor instead')
const PreDecrementExpression$json = {
  '1': 'PreDecrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `PreDecrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preDecrementExpressionDescriptor = $convert.base64Decode(
    'ChZQcmVEZWNyZW1lbnRFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoIcG9zaXRpb2'
    '4YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use postDecrementExpressionDescriptor instead')
const PostDecrementExpression$json = {
  '1': 'PostDecrementExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `PostDecrementExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDecrementExpressionDescriptor = $convert.base64Decode(
    'ChdQb3N0RGVjcmVtZW50RXhwcmVzc2lvbhISCgRuYW1lGAEgASgJUgRuYW1lEiUKCHBvc2l0aW'
    '9uGAIgASgLMgkuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use inputExpressionDescriptor instead')
const InputExpression$json = {
  '1': 'InputExpression',
  '2': [
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `InputExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputExpressionDescriptor = $convert.base64Decode(
    'Cg9JbnB1dEV4cHJlc3Npb24SJQoIcG9zaXRpb24YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb2'
    '4=');

@$core.Deprecated('Use outputExpressionDescriptor instead')
const OutputExpression$json = {
  '1': 'OutputExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `OutputExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputExpressionDescriptor = $convert.base64Decode(
    'ChBPdXRwdXRFeHByZXNzaW9uEiEKBXZhbHVlGAEgASgLMgsuRXhwcmVzc2lvblIFdmFsdWUSJQ'
    'oIcG9zaXRpb24YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use varReferenceExpressionDescriptor instead')
const VarReferenceExpression$json = {
  '1': 'VarReferenceExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `VarReferenceExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List varReferenceExpressionDescriptor = $convert.base64Decode(
    'ChZWYXJSZWZlcmVuY2VFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSJQoIcG9zaXRpb2'
    '4YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use parenthesisExpressionDescriptor instead')
const ParenthesisExpression$json = {
  '1': 'ParenthesisExpression',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ParenthesisExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parenthesisExpressionDescriptor = $convert.base64Decode(
    'ChVQYXJlbnRoZXNpc0V4cHJlc3Npb24SIQoFdmFsdWUYASABKAsyCy5FeHByZXNzaW9uUgV2YW'
    'x1ZRIlCghwb3NpdGlvbhgCIAEoCzIJLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use functionCallExpressionDescriptor instead')
const FunctionCallExpression$json = {
  '1': 'FunctionCallExpression',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parameters', '3': 2, '4': 3, '5': 11, '6': '.Expression', '10': 'parameters'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `FunctionCallExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionCallExpressionDescriptor = $convert.base64Decode(
    'ChZGdW5jdGlvbkNhbGxFeHByZXNzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSKwoKcGFyYW1ldG'
    'VycxgCIAMoCzILLkV4cHJlc3Npb25SCnBhcmFtZXRlcnMSJQoIcG9zaXRpb24YAyABKAsyCS5Q'
    'b3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use objectPropertyReferenceExpressionDescriptor instead')
const ObjectPropertyReferenceExpression$json = {
  '1': 'ObjectPropertyReferenceExpression',
  '2': [
    {'1': 'objectName', '3': 1, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ObjectPropertyReferenceExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectPropertyReferenceExpressionDescriptor = $convert.base64Decode(
    'CiFPYmplY3RQcm9wZXJ0eVJlZmVyZW5jZUV4cHJlc3Npb24SHgoKb2JqZWN0TmFtZRgBIAEoCV'
    'IKb2JqZWN0TmFtZRIiCgxwcm9wZXJ0eU5hbWUYAiABKAlSDHByb3BlcnR5TmFtZRIlCghwb3Np'
    'dGlvbhgDIAEoCzIJLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use objectMethodCallExpressionDescriptor instead')
const ObjectMethodCallExpression$json = {
  '1': 'ObjectMethodCallExpression',
  '2': [
    {'1': 'objectName', '3': 1, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'methodName', '3': 2, '4': 1, '5': 9, '10': 'methodName'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.Expression', '10': 'parameters'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ObjectMethodCallExpression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMethodCallExpressionDescriptor = $convert.base64Decode(
    'ChpPYmplY3RNZXRob2RDYWxsRXhwcmVzc2lvbhIeCgpvYmplY3ROYW1lGAEgASgJUgpvYmplY3'
    'ROYW1lEh4KCm1ldGhvZE5hbWUYAiABKAlSCm1ldGhvZE5hbWUSKwoKcGFyYW1ldGVycxgDIAMo'
    'CzILLkV4cHJlc3Npb25SCnBhcmFtZXRlcnMSJQoIcG9zaXRpb24YBCABKAsyCS5Qb3NpdGlvbl'
    'IIcG9zaXRpb24=');


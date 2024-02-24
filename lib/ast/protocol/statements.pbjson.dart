//
//  Generated code. Do not modify.
//  source: statements.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use variableTypeDescriptor instead')
const VariableType$json = {
  '1': 'VariableType',
  '2': [
    {'1': 'TYPE', '2': 0},
    {'1': 'VARIABLE', '2': 1},
    {'1': 'IMMUTABLE', '2': 2},
    {'1': 'CONSTANT', '2': 3},
  ],
};

/// Descriptor for `VariableType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List variableTypeDescriptor = $convert.base64Decode(
    'CgxWYXJpYWJsZVR5cGUSCAoEVFlQRRAAEgwKCFZBUklBQkxFEAESDQoJSU1NVVRBQkxFEAISDA'
    'oIQ09OU1RBTlQQAw==');

@$core.Deprecated('Use encapsulationTypeDescriptor instead')
const EncapsulationType$json = {
  '1': 'EncapsulationType',
  '2': [
    {'1': 'PUBLIC', '2': 0},
    {'1': 'PRIVATE', '2': 1},
  ],
};

/// Descriptor for `EncapsulationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List encapsulationTypeDescriptor = $convert.base64Decode(
    'ChFFbmNhcHN1bGF0aW9uVHlwZRIKCgZQVUJMSUMQABILCgdQUklWQVRFEAE=');

@$core.Deprecated('Use parameterTypeDescriptor instead')
const ParameterType$json = {
  '1': 'ParameterType',
  '2': [
    {'1': 'TYPED', '2': 0},
    {'1': 'THIS', '2': 1},
    {'1': 'SUPER', '2': 2},
  ],
};

/// Descriptor for `ParameterType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List parameterTypeDescriptor = $convert.base64Decode(
    'Cg1QYXJhbWV0ZXJUeXBlEgkKBVRZUEVEEAASCAoEVEhJUxABEgkKBVNVUEVSEAI=');

@$core.Deprecated('Use blockTypeDescriptor instead')
const BlockType$json = {
  '1': 'BlockType',
  '2': [
    {'1': 'IF_BLOCK', '2': 0},
    {'1': 'ELSE_IF_BLOCK', '2': 1},
    {'1': 'ELSE_BLOCK', '2': 2},
  ],
};

/// Descriptor for `BlockType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blockTypeDescriptor = $convert.base64Decode(
    'CglCbG9ja1R5cGUSDAoISUZfQkxPQ0sQABIRCg1FTFNFX0lGX0JMT0NLEAESDgoKRUxTRV9CTE'
    '9DSxAC');

@$core.Deprecated('Use variableValueTypeDescriptor instead')
const VariableValueType$json = {
  '1': 'VariableValueType',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `VariableValueType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableValueTypeDescriptor = $convert.base64Decode(
    'ChFWYXJpYWJsZVZhbHVlVHlwZRISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use statementDescriptor instead')
const Statement$json = {
  '1': 'Statement',
  '2': [
    {'1': 'assignmentStatement', '3': 1, '4': 1, '5': 11, '6': '.protocol.AssignmentStatement', '9': 0, '10': 'assignmentStatement'},
    {'1': 'classDefinitionStatement', '3': 2, '4': 1, '5': 11, '6': '.protocol.ClassDefinitionStatement', '9': 0, '10': 'classDefinitionStatement'},
    {'1': 'expressionDefinitionStatement', '3': 3, '4': 1, '5': 11, '6': '.protocol.ExpressionDefinitionStatement', '9': 0, '10': 'expressionDefinitionStatement'},
    {'1': 'ifDefinitionStatement', '3': 4, '4': 1, '5': 11, '6': '.protocol.IfDefinitionStatement', '9': 0, '10': 'ifDefinitionStatement'},
    {'1': 'objectPropertyAssignmentStatement', '3': 5, '4': 1, '5': 11, '6': '.protocol.ObjectPropertyAssignmentStatement', '9': 0, '10': 'objectPropertyAssignmentStatement'},
    {'1': 'returnStatement', '3': 6, '4': 1, '5': 11, '6': '.protocol.ReturnStatement', '9': 0, '10': 'returnStatement'},
    {'1': 'varDeclarationStatement', '3': 7, '4': 1, '5': 11, '6': '.protocol.VariableDeclarationStatement', '9': 0, '10': 'varDeclarationStatement'},
    {'1': 'whileDefinitionStatement', '3': 8, '4': 1, '5': 11, '6': '.protocol.WhileDefinitionStatement', '9': 0, '10': 'whileDefinitionStatement'},
    {'1': 'forDefinitionStatement', '3': 9, '4': 1, '5': 11, '6': '.protocol.ForDefinitionStatement', '9': 0, '10': 'forDefinitionStatement'},
  ],
  '8': [
    {'1': 'stmt'},
  ],
};

/// Descriptor for `Statement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statementDescriptor = $convert.base64Decode(
    'CglTdGF0ZW1lbnQSUQoTYXNzaWdubWVudFN0YXRlbWVudBgBIAEoCzIdLnByb3RvY29sLkFzc2'
    'lnbm1lbnRTdGF0ZW1lbnRIAFITYXNzaWdubWVudFN0YXRlbWVudBJgChhjbGFzc0RlZmluaXRp'
    'b25TdGF0ZW1lbnQYAiABKAsyIi5wcm90b2NvbC5DbGFzc0RlZmluaXRpb25TdGF0ZW1lbnRIAF'
    'IYY2xhc3NEZWZpbml0aW9uU3RhdGVtZW50Em8KHWV4cHJlc3Npb25EZWZpbml0aW9uU3RhdGVt'
    'ZW50GAMgASgLMicucHJvdG9jb2wuRXhwcmVzc2lvbkRlZmluaXRpb25TdGF0ZW1lbnRIAFIdZX'
    'hwcmVzc2lvbkRlZmluaXRpb25TdGF0ZW1lbnQSVwoVaWZEZWZpbml0aW9uU3RhdGVtZW50GAQg'
    'ASgLMh8ucHJvdG9jb2wuSWZEZWZpbml0aW9uU3RhdGVtZW50SABSFWlmRGVmaW5pdGlvblN0YX'
    'RlbWVudBJ7CiFvYmplY3RQcm9wZXJ0eUFzc2lnbm1lbnRTdGF0ZW1lbnQYBSABKAsyKy5wcm90'
    'b2NvbC5PYmplY3RQcm9wZXJ0eUFzc2lnbm1lbnRTdGF0ZW1lbnRIAFIhb2JqZWN0UHJvcGVydH'
    'lBc3NpZ25tZW50U3RhdGVtZW50EkUKD3JldHVyblN0YXRlbWVudBgGIAEoCzIZLnByb3RvY29s'
    'LlJldHVyblN0YXRlbWVudEgAUg9yZXR1cm5TdGF0ZW1lbnQSYgoXdmFyRGVjbGFyYXRpb25TdG'
    'F0ZW1lbnQYByABKAsyJi5wcm90b2NvbC5WYXJpYWJsZURlY2xhcmF0aW9uU3RhdGVtZW50SABS'
    'F3ZhckRlY2xhcmF0aW9uU3RhdGVtZW50EmAKGHdoaWxlRGVmaW5pdGlvblN0YXRlbWVudBgIIA'
    'EoCzIiLnByb3RvY29sLldoaWxlRGVmaW5pdGlvblN0YXRlbWVudEgAUhh3aGlsZURlZmluaXRp'
    'b25TdGF0ZW1lbnQSWgoWZm9yRGVmaW5pdGlvblN0YXRlbWVudBgJIAEoCzIgLnByb3RvY29sLk'
    'ZvckRlZmluaXRpb25TdGF0ZW1lbnRIAFIWZm9yRGVmaW5pdGlvblN0YXRlbWVudEIGCgRzdG10');

@$core.Deprecated('Use assignmentStatementDescriptor instead')
const AssignmentStatement$json = {
  '1': 'AssignmentStatement',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `AssignmentStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignmentStatementDescriptor = $convert.base64Decode(
    'ChNBc3NpZ25tZW50U3RhdGVtZW50EhIKBG5hbWUYASABKAlSBG5hbWUSKgoFdmFsdWUYAiABKA'
    'syFC5wcm90b2NvbC5FeHByZXNzaW9uUgV2YWx1ZRIuCghwb3NpdGlvbhgDIAEoCzISLnByb3Rv'
    'Y29sLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use classDefinitionStatementDescriptor instead')
const ClassDefinitionStatement$json = {
  '1': 'ClassDefinitionStatement',
  '2': [
    {'1': 'encapsulation', '3': 1, '4': 1, '5': 14, '6': '.protocol.EncapsulationType', '10': 'encapsulation'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parentName', '3': 3, '4': 1, '5': 9, '10': 'parentName'},
    {'1': 'properties', '3': 4, '4': 3, '5': 11, '6': '.protocol.VariableDeclarationStatement', '10': 'properties'},
    {'1': 'constructors', '3': 5, '4': 3, '5': 11, '6': '.protocol.ConstructorDefinitionStatement', '10': 'constructors'},
    {'1': 'methods', '3': 6, '4': 3, '5': 11, '6': '.protocol.FunctionDefinitionStatement', '10': 'methods'},
    {'1': 'parentClassType', '3': 7, '4': 1, '5': 11, '6': '.protocol.VariableValueType', '10': 'parentClassType'},
    {'1': 'position', '3': 8, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ClassDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classDefinitionStatementDescriptor = $convert.base64Decode(
    'ChhDbGFzc0RlZmluaXRpb25TdGF0ZW1lbnQSQQoNZW5jYXBzdWxhdGlvbhgBIAEoDjIbLnByb3'
    'RvY29sLkVuY2Fwc3VsYXRpb25UeXBlUg1lbmNhcHN1bGF0aW9uEhIKBG5hbWUYAiABKAlSBG5h'
    'bWUSHgoKcGFyZW50TmFtZRgDIAEoCVIKcGFyZW50TmFtZRJGCgpwcm9wZXJ0aWVzGAQgAygLMi'
    'YucHJvdG9jb2wuVmFyaWFibGVEZWNsYXJhdGlvblN0YXRlbWVudFIKcHJvcGVydGllcxJMCgxj'
    'b25zdHJ1Y3RvcnMYBSADKAsyKC5wcm90b2NvbC5Db25zdHJ1Y3RvckRlZmluaXRpb25TdGF0ZW'
    '1lbnRSDGNvbnN0cnVjdG9ycxI/CgdtZXRob2RzGAYgAygLMiUucHJvdG9jb2wuRnVuY3Rpb25E'
    'ZWZpbml0aW9uU3RhdGVtZW50UgdtZXRob2RzEkUKD3BhcmVudENsYXNzVHlwZRgHIAEoCzIbLn'
    'Byb3RvY29sLlZhcmlhYmxlVmFsdWVUeXBlUg9wYXJlbnRDbGFzc1R5cGUSLgoIcG9zaXRpb24Y'
    'CCABKAsyEi5wcm90b2NvbC5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use functionDefinitionStatementDescriptor instead')
const FunctionDefinitionStatement$json = {
  '1': 'FunctionDefinitionStatement',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parameters', '3': 2, '4': 3, '5': 11, '6': '.protocol.Parameter', '10': 'parameters'},
    {'1': 'returnType', '3': 3, '4': 1, '5': 11, '6': '.protocol.VariableValueType', '10': 'returnType'},
    {'1': 'statements', '3': 4, '4': 3, '5': 11, '6': '.protocol.Statement', '10': 'statements'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `FunctionDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionDefinitionStatementDescriptor = $convert.base64Decode(
    'ChtGdW5jdGlvbkRlZmluaXRpb25TdGF0ZW1lbnQSEgoEbmFtZRgBIAEoCVIEbmFtZRIzCgpwYX'
    'JhbWV0ZXJzGAIgAygLMhMucHJvdG9jb2wuUGFyYW1ldGVyUgpwYXJhbWV0ZXJzEjsKCnJldHVy'
    'blR5cGUYAyABKAsyGy5wcm90b2NvbC5WYXJpYWJsZVZhbHVlVHlwZVIKcmV0dXJuVHlwZRIzCg'
    'pzdGF0ZW1lbnRzGAQgAygLMhMucHJvdG9jb2wuU3RhdGVtZW50UgpzdGF0ZW1lbnRzEi4KCHBv'
    'c2l0aW9uGAUgASgLMhIucHJvdG9jb2wuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use constructorDefinitionStatementDescriptor instead')
const ConstructorDefinitionStatement$json = {
  '1': 'ConstructorDefinitionStatement',
  '2': [
    {'1': 'className', '3': 1, '4': 1, '5': 9, '10': 'className'},
    {'1': 'constructorName', '3': 2, '4': 1, '5': 9, '10': 'constructorName'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.protocol.Parameter', '10': 'parameters'},
    {'1': 'body', '3': 4, '4': 3, '5': 11, '6': '.protocol.Statement', '10': 'body'},
    {'1': 'thisConstructor', '3': 5, '4': 1, '5': 11, '6': '.protocol.ThisConstructorDefinition', '10': 'thisConstructor'},
    {'1': 'position', '3': 6, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ConstructorDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constructorDefinitionStatementDescriptor = $convert.base64Decode(
    'Ch5Db25zdHJ1Y3RvckRlZmluaXRpb25TdGF0ZW1lbnQSHAoJY2xhc3NOYW1lGAEgASgJUgljbG'
    'Fzc05hbWUSKAoPY29uc3RydWN0b3JOYW1lGAIgASgJUg9jb25zdHJ1Y3Rvck5hbWUSMwoKcGFy'
    'YW1ldGVycxgDIAMoCzITLnByb3RvY29sLlBhcmFtZXRlclIKcGFyYW1ldGVycxInCgRib2R5GA'
    'QgAygLMhMucHJvdG9jb2wuU3RhdGVtZW50UgRib2R5Ek0KD3RoaXNDb25zdHJ1Y3RvchgFIAEo'
    'CzIjLnByb3RvY29sLlRoaXNDb25zdHJ1Y3RvckRlZmluaXRpb25SD3RoaXNDb25zdHJ1Y3Rvch'
    'IuCghwb3NpdGlvbhgGIAEoCzISLnByb3RvY29sLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use thisConstructorDefinitionDescriptor instead')
const ThisConstructorDefinition$json = {
  '1': 'ThisConstructorDefinition',
  '2': [
    {'1': 'parameters', '3': 1, '4': 3, '5': 11, '6': '.protocol.Expression', '10': 'parameters'},
  ],
};

/// Descriptor for `ThisConstructorDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thisConstructorDefinitionDescriptor = $convert.base64Decode(
    'ChlUaGlzQ29uc3RydWN0b3JEZWZpbml0aW9uEjQKCnBhcmFtZXRlcnMYASADKAsyFC5wcm90b2'
    'NvbC5FeHByZXNzaW9uUgpwYXJhbWV0ZXJz');

@$core.Deprecated('Use parameterDescriptor instead')
const Parameter$json = {
  '1': 'Parameter',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.protocol.ParameterType', '10': 'type'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.protocol.VariableValueType', '10': 'valueType'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `Parameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parameterDescriptor = $convert.base64Decode(
    'CglQYXJhbWV0ZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIrCgR0eXBlGAIgASgOMhcucHJvdG9jb2'
    'wuUGFyYW1ldGVyVHlwZVIEdHlwZRI5Cgl2YWx1ZVR5cGUYAyABKAsyGy5wcm90b2NvbC5WYXJp'
    'YWJsZVZhbHVlVHlwZVIJdmFsdWVUeXBlEi4KCHBvc2l0aW9uGAQgASgLMhIucHJvdG9jb2wuUG'
    '9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use expressionDefinitionStatementDescriptor instead')
const ExpressionDefinitionStatement$json = {
  '1': 'ExpressionDefinitionStatement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ExpressionDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionDefinitionStatementDescriptor = $convert.base64Decode(
    'Ch1FeHByZXNzaW9uRGVmaW5pdGlvblN0YXRlbWVudBIqCgV2YWx1ZRgBIAEoCzIULnByb3RvY2'
    '9sLkV4cHJlc3Npb25SBXZhbHVlEi4KCHBvc2l0aW9uGAIgASgLMhIucHJvdG9jb2wuUG9zaXRp'
    'b25SCHBvc2l0aW9u');

@$core.Deprecated('Use ifDefinitionStatementDescriptor instead')
const IfDefinitionStatement$json = {
  '1': 'IfDefinitionStatement',
  '2': [
    {'1': 'ifBlock', '3': 1, '4': 1, '5': 11, '6': '.protocol.IfBlock', '10': 'ifBlock'},
    {'1': 'elseIfBlocks', '3': 2, '4': 3, '5': 11, '6': '.protocol.IfBlock', '10': 'elseIfBlocks'},
    {'1': 'elseBlock', '3': 3, '4': 1, '5': 11, '6': '.protocol.IfBlock', '10': 'elseBlock'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `IfDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ifDefinitionStatementDescriptor = $convert.base64Decode(
    'ChVJZkRlZmluaXRpb25TdGF0ZW1lbnQSKwoHaWZCbG9jaxgBIAEoCzIRLnByb3RvY29sLklmQm'
    'xvY2tSB2lmQmxvY2sSNQoMZWxzZUlmQmxvY2tzGAIgAygLMhEucHJvdG9jb2wuSWZCbG9ja1IM'
    'ZWxzZUlmQmxvY2tzEi8KCWVsc2VCbG9jaxgDIAEoCzIRLnByb3RvY29sLklmQmxvY2tSCWVsc2'
    'VCbG9jaxIuCghwb3NpdGlvbhgEIAEoCzISLnByb3RvY29sLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use ifBlockDescriptor instead')
const IfBlock$json = {
  '1': 'IfBlock',
  '2': [
    {'1': 'condition', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'condition'},
    {'1': 'statements', '3': 2, '4': 3, '5': 11, '6': '.protocol.Statement', '10': 'statements'},
    {'1': 'blockType', '3': 3, '4': 1, '5': 14, '6': '.protocol.BlockType', '10': 'blockType'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `IfBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ifBlockDescriptor = $convert.base64Decode(
    'CgdJZkJsb2NrEjIKCWNvbmRpdGlvbhgBIAEoCzIULnByb3RvY29sLkV4cHJlc3Npb25SCWNvbm'
    'RpdGlvbhIzCgpzdGF0ZW1lbnRzGAIgAygLMhMucHJvdG9jb2wuU3RhdGVtZW50UgpzdGF0ZW1l'
    'bnRzEjEKCWJsb2NrVHlwZRgDIAEoDjITLnByb3RvY29sLkJsb2NrVHlwZVIJYmxvY2tUeXBlEi'
    '4KCHBvc2l0aW9uGAQgASgLMhIucHJvdG9jb2wuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use whileDefinitionStatementDescriptor instead')
const WhileDefinitionStatement$json = {
  '1': 'WhileDefinitionStatement',
  '2': [
    {'1': 'condition', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'condition'},
    {'1': 'statements', '3': 2, '4': 3, '5': 11, '6': '.protocol.Statement', '10': 'statements'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `WhileDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whileDefinitionStatementDescriptor = $convert.base64Decode(
    'ChhXaGlsZURlZmluaXRpb25TdGF0ZW1lbnQSMgoJY29uZGl0aW9uGAEgASgLMhQucHJvdG9jb2'
    'wuRXhwcmVzc2lvblIJY29uZGl0aW9uEjMKCnN0YXRlbWVudHMYAiADKAsyEy5wcm90b2NvbC5T'
    'dGF0ZW1lbnRSCnN0YXRlbWVudHMSLgoIcG9zaXRpb24YAyABKAsyEi5wcm90b2NvbC5Qb3NpdG'
    'lvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forInitOrIncrementStatementDescriptor instead')
const ForInitOrIncrementStatement$json = {
  '1': 'ForInitOrIncrementStatement',
  '2': [
    {'1': 'varDeclarationForStatement', '3': 1, '4': 1, '5': 11, '6': '.protocol.VarDeclarationForStatement', '9': 0, '10': 'varDeclarationForStatement'},
    {'1': 'assignmentForStatement', '3': 2, '4': 1, '5': 11, '6': '.protocol.AssignmentForStatement', '9': 0, '10': 'assignmentForStatement'},
    {'1': 'expressionForStatement', '3': 3, '4': 1, '5': 11, '6': '.protocol.ExpressionForStatement', '9': 0, '10': 'expressionForStatement'},
  ],
  '8': [
    {'1': 'init_or_increment'},
  ],
};

/// Descriptor for `ForInitOrIncrementStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forInitOrIncrementStatementDescriptor = $convert.base64Decode(
    'ChtGb3JJbml0T3JJbmNyZW1lbnRTdGF0ZW1lbnQSZgoadmFyRGVjbGFyYXRpb25Gb3JTdGF0ZW'
    '1lbnQYASABKAsyJC5wcm90b2NvbC5WYXJEZWNsYXJhdGlvbkZvclN0YXRlbWVudEgAUhp2YXJE'
    'ZWNsYXJhdGlvbkZvclN0YXRlbWVudBJaChZhc3NpZ25tZW50Rm9yU3RhdGVtZW50GAIgASgLMi'
    'AucHJvdG9jb2wuQXNzaWdubWVudEZvclN0YXRlbWVudEgAUhZhc3NpZ25tZW50Rm9yU3RhdGVt'
    'ZW50EloKFmV4cHJlc3Npb25Gb3JTdGF0ZW1lbnQYAyABKAsyIC5wcm90b2NvbC5FeHByZXNzaW'
    '9uRm9yU3RhdGVtZW50SABSFmV4cHJlc3Npb25Gb3JTdGF0ZW1lbnRCEwoRaW5pdF9vcl9pbmNy'
    'ZW1lbnQ=');

@$core.Deprecated('Use varDeclarationForStatementDescriptor instead')
const VarDeclarationForStatement$json = {
  '1': 'VarDeclarationForStatement',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.protocol.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.protocol.VariableValueType', '10': 'valueType'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `VarDeclarationForStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List varDeclarationForStatementDescriptor = $convert.base64Decode(
    'ChpWYXJEZWNsYXJhdGlvbkZvclN0YXRlbWVudBIwCgd2YXJUeXBlGAEgASgOMhYucHJvdG9jb2'
    'wuVmFyaWFibGVUeXBlUgd2YXJUeXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSOQoJdmFsdWVUeXBl'
    'GAMgASgLMhsucHJvdG9jb2wuVmFyaWFibGVWYWx1ZVR5cGVSCXZhbHVlVHlwZRIqCgV2YWx1ZR'
    'gEIAEoCzIULnByb3RvY29sLkV4cHJlc3Npb25SBXZhbHVlEi4KCHBvc2l0aW9uGAUgASgLMhIu'
    'cHJvdG9jb2wuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use assignmentForStatementDescriptor instead')
const AssignmentForStatement$json = {
  '1': 'AssignmentForStatement',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `AssignmentForStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignmentForStatementDescriptor = $convert.base64Decode(
    'ChZBc3NpZ25tZW50Rm9yU3RhdGVtZW50EhIKBG5hbWUYASABKAlSBG5hbWUSKgoFdmFsdWUYAi'
    'ABKAsyFC5wcm90b2NvbC5FeHByZXNzaW9uUgV2YWx1ZRIuCghwb3NpdGlvbhgDIAEoCzISLnBy'
    'b3RvY29sLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use expressionForStatementDescriptor instead')
const ExpressionForStatement$json = {
  '1': 'ExpressionForStatement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ExpressionForStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionForStatementDescriptor = $convert.base64Decode(
    'ChZFeHByZXNzaW9uRm9yU3RhdGVtZW50EioKBXZhbHVlGAEgASgLMhQucHJvdG9jb2wuRXhwcm'
    'Vzc2lvblIFdmFsdWUSLgoIcG9zaXRpb24YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvblIIcG9z'
    'aXRpb24=');

@$core.Deprecated('Use forDefinitionStatementDescriptor instead')
const ForDefinitionStatement$json = {
  '1': 'ForDefinitionStatement',
  '2': [
    {'1': 'forCondition', '3': 1, '4': 1, '5': 11, '6': '.protocol.ForCondition', '10': 'forCondition'},
    {'1': 'statements', '3': 2, '4': 3, '5': 11, '6': '.protocol.Statement', '10': 'statements'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ForDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forDefinitionStatementDescriptor = $convert.base64Decode(
    'ChZGb3JEZWZpbml0aW9uU3RhdGVtZW50EjoKDGZvckNvbmRpdGlvbhgBIAEoCzIWLnByb3RvY2'
    '9sLkZvckNvbmRpdGlvblIMZm9yQ29uZGl0aW9uEjMKCnN0YXRlbWVudHMYAiADKAsyEy5wcm90'
    'b2NvbC5TdGF0ZW1lbnRSCnN0YXRlbWVudHMSLgoIcG9zaXRpb24YAyABKAsyEi5wcm90b2NvbC'
    '5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forConditionDescriptor instead')
const ForCondition$json = {
  '1': 'ForCondition',
  '2': [
    {'1': 'standardForCondition', '3': 1, '4': 1, '5': 11, '6': '.protocol.StandardForCondition', '9': 0, '10': 'standardForCondition'},
    {'1': 'forEachCondition', '3': 2, '4': 1, '5': 11, '6': '.protocol.ForEachCondition', '9': 0, '10': 'forEachCondition'},
  ],
  '8': [
    {'1': 'condition'},
  ],
};

/// Descriptor for `ForCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forConditionDescriptor = $convert.base64Decode(
    'CgxGb3JDb25kaXRpb24SVAoUc3RhbmRhcmRGb3JDb25kaXRpb24YASABKAsyHi5wcm90b2NvbC'
    '5TdGFuZGFyZEZvckNvbmRpdGlvbkgAUhRzdGFuZGFyZEZvckNvbmRpdGlvbhJIChBmb3JFYWNo'
    'Q29uZGl0aW9uGAIgASgLMhoucHJvdG9jb2wuRm9yRWFjaENvbmRpdGlvbkgAUhBmb3JFYWNoQ2'
    '9uZGl0aW9uQgsKCWNvbmRpdGlvbg==');

@$core.Deprecated('Use standardForConditionDescriptor instead')
const StandardForCondition$json = {
  '1': 'StandardForCondition',
  '2': [
    {'1': 'initStatement', '3': 1, '4': 1, '5': 11, '6': '.protocol.ForInitOrIncrementStatement', '10': 'initStatement'},
    {'1': 'controlExpression', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'controlExpression'},
    {'1': 'incrementStatement', '3': 3, '4': 1, '5': 11, '6': '.protocol.ForInitOrIncrementStatement', '10': 'incrementStatement'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `StandardForCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List standardForConditionDescriptor = $convert.base64Decode(
    'ChRTdGFuZGFyZEZvckNvbmRpdGlvbhJLCg1pbml0U3RhdGVtZW50GAEgASgLMiUucHJvdG9jb2'
    'wuRm9ySW5pdE9ySW5jcmVtZW50U3RhdGVtZW50Ug1pbml0U3RhdGVtZW50EkIKEWNvbnRyb2xF'
    'eHByZXNzaW9uGAIgASgLMhQucHJvdG9jb2wuRXhwcmVzc2lvblIRY29udHJvbEV4cHJlc3Npb2'
    '4SVQoSaW5jcmVtZW50U3RhdGVtZW50GAMgASgLMiUucHJvdG9jb2wuRm9ySW5pdE9ySW5jcmVt'
    'ZW50U3RhdGVtZW50UhJpbmNyZW1lbnRTdGF0ZW1lbnQSLgoIcG9zaXRpb24YBCABKAsyEi5wcm'
    '90b2NvbC5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forEachConditionDescriptor instead')
const ForEachCondition$json = {
  '1': 'ForEachCondition',
  '2': [
    {'1': 'itemDefinition', '3': 1, '4': 1, '5': 11, '6': '.protocol.ItemDefinition', '10': 'itemDefinition'},
    {'1': 'expression', '3': 2, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'expression'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ForEachCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forEachConditionDescriptor = $convert.base64Decode(
    'ChBGb3JFYWNoQ29uZGl0aW9uEkAKDml0ZW1EZWZpbml0aW9uGAEgASgLMhgucHJvdG9jb2wuSX'
    'RlbURlZmluaXRpb25SDml0ZW1EZWZpbml0aW9uEjQKCmV4cHJlc3Npb24YAiABKAsyFC5wcm90'
    'b2NvbC5FeHByZXNzaW9uUgpleHByZXNzaW9uEi4KCHBvc2l0aW9uGAMgASgLMhIucHJvdG9jb2'
    'wuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use itemDefinitionDescriptor instead')
const ItemDefinition$json = {
  '1': 'ItemDefinition',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.protocol.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.protocol.VariableValueType', '10': 'valueType'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ItemDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDefinitionDescriptor = $convert.base64Decode(
    'Cg5JdGVtRGVmaW5pdGlvbhIwCgd2YXJUeXBlGAEgASgOMhYucHJvdG9jb2wuVmFyaWFibGVUeX'
    'BlUgd2YXJUeXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSOQoJdmFsdWVUeXBlGAMgASgLMhsucHJv'
    'dG9jb2wuVmFyaWFibGVWYWx1ZVR5cGVSCXZhbHVlVHlwZRIuCghwb3NpdGlvbhgEIAEoCzISLn'
    'Byb3RvY29sLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use objectPropertyAssignmentStatementDescriptor instead')
const ObjectPropertyAssignmentStatement$json = {
  '1': 'ObjectPropertyAssignmentStatement',
  '2': [
    {'1': 'objectName', '3': 1, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ObjectPropertyAssignmentStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectPropertyAssignmentStatementDescriptor = $convert.base64Decode(
    'CiFPYmplY3RQcm9wZXJ0eUFzc2lnbm1lbnRTdGF0ZW1lbnQSHgoKb2JqZWN0TmFtZRgBIAEoCV'
    'IKb2JqZWN0TmFtZRIiCgxwcm9wZXJ0eU5hbWUYAiABKAlSDHByb3BlcnR5TmFtZRIqCgV2YWx1'
    'ZRgDIAEoCzIULnByb3RvY29sLkV4cHJlc3Npb25SBXZhbHVlEi4KCHBvc2l0aW9uGAQgASgLMh'
    'IucHJvdG9jb2wuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use returnStatementDescriptor instead')
const ReturnStatement$json = {
  '1': 'ReturnStatement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ReturnStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnStatementDescriptor = $convert.base64Decode(
    'Cg9SZXR1cm5TdGF0ZW1lbnQSKgoFdmFsdWUYASABKAsyFC5wcm90b2NvbC5FeHByZXNzaW9uUg'
    'V2YWx1ZRIuCghwb3NpdGlvbhgCIAEoCzISLnByb3RvY29sLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use variableDeclarationStatementDescriptor instead')
const VariableDeclarationStatement$json = {
  '1': 'VariableDeclarationStatement',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.protocol.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.protocol.VariableValueType', '10': 'valueType'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.protocol.Expression', '10': 'value'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `VariableDeclarationStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableDeclarationStatementDescriptor = $convert.base64Decode(
    'ChxWYXJpYWJsZURlY2xhcmF0aW9uU3RhdGVtZW50EjAKB3ZhclR5cGUYASABKA4yFi5wcm90b2'
    'NvbC5WYXJpYWJsZVR5cGVSB3ZhclR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRI5Cgl2YWx1ZVR5'
    'cGUYAyABKAsyGy5wcm90b2NvbC5WYXJpYWJsZVZhbHVlVHlwZVIJdmFsdWVUeXBlEioKBXZhbH'
    'VlGAQgASgLMhQucHJvdG9jb2wuRXhwcmVzc2lvblIFdmFsdWUSLgoIcG9zaXRpb24YBSABKAsy'
    'Ei5wcm90b2NvbC5Qb3NpdGlvblIIcG9zaXRpb24=');


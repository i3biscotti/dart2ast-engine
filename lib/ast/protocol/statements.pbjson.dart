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
    {'1': 'VARIABLE', '2': 0},
    {'1': 'IMMUTABLE', '2': 1},
    {'1': 'CONSTANT', '2': 2},
  ],
};

/// Descriptor for `VariableType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List variableTypeDescriptor = $convert.base64Decode(
    'CgxWYXJpYWJsZVR5cGUSDAoIVkFSSUFCTEUQABINCglJTU1VVEFCTEUQARIMCghDT05TVEFOVB'
    'AC');

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
    {'1': 'TYPE', '2': 0},
    {'1': 'THIS', '2': 1},
    {'1': 'SUPER', '2': 2},
  ],
};

/// Descriptor for `ParameterType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List parameterTypeDescriptor = $convert.base64Decode(
    'Cg1QYXJhbWV0ZXJUeXBlEggKBFRZUEUQABIICgRUSElTEAESCQoFU1VQRVIQAg==');

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
    {'1': 'assignmentStatement', '3': 1, '4': 1, '5': 11, '6': '.AssignmentStatement', '9': 0, '10': 'assignmentStatement'},
    {'1': 'classDefinitionStatement', '3': 2, '4': 1, '5': 11, '6': '.ClassDefinitionStatement', '9': 0, '10': 'classDefinitionStatement'},
    {'1': 'expressionDefinitionStatement', '3': 3, '4': 1, '5': 11, '6': '.ExpressionDefinitionStatement', '9': 0, '10': 'expressionDefinitionStatement'},
    {'1': 'ifDefinitionStatement', '3': 4, '4': 1, '5': 11, '6': '.IfDefinitionStatement', '9': 0, '10': 'ifDefinitionStatement'},
    {'1': 'objectPropertyAssignmentStatement', '3': 5, '4': 1, '5': 11, '6': '.ObjectPropertyAssignmentStatement', '9': 0, '10': 'objectPropertyAssignmentStatement'},
    {'1': 'returnStatement', '3': 6, '4': 1, '5': 11, '6': '.ReturnStatement', '9': 0, '10': 'returnStatement'},
    {'1': 'varDeclarationStatement', '3': 7, '4': 1, '5': 11, '6': '.VariableDeclarationStatement', '9': 0, '10': 'varDeclarationStatement'},
    {'1': 'whileDefinitionStatement', '3': 8, '4': 1, '5': 11, '6': '.WhileDefinitionStatement', '9': 0, '10': 'whileDefinitionStatement'},
    {'1': 'forDefinitionStatement', '3': 9, '4': 1, '5': 11, '6': '.ForDefinitionStatement', '9': 0, '10': 'forDefinitionStatement'},
  ],
  '8': [
    {'1': 'stmt'},
  ],
};

/// Descriptor for `Statement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statementDescriptor = $convert.base64Decode(
    'CglTdGF0ZW1lbnQSSAoTYXNzaWdubWVudFN0YXRlbWVudBgBIAEoCzIULkFzc2lnbm1lbnRTdG'
    'F0ZW1lbnRIAFITYXNzaWdubWVudFN0YXRlbWVudBJXChhjbGFzc0RlZmluaXRpb25TdGF0ZW1l'
    'bnQYAiABKAsyGS5DbGFzc0RlZmluaXRpb25TdGF0ZW1lbnRIAFIYY2xhc3NEZWZpbml0aW9uU3'
    'RhdGVtZW50EmYKHWV4cHJlc3Npb25EZWZpbml0aW9uU3RhdGVtZW50GAMgASgLMh4uRXhwcmVz'
    'c2lvbkRlZmluaXRpb25TdGF0ZW1lbnRIAFIdZXhwcmVzc2lvbkRlZmluaXRpb25TdGF0ZW1lbn'
    'QSTgoVaWZEZWZpbml0aW9uU3RhdGVtZW50GAQgASgLMhYuSWZEZWZpbml0aW9uU3RhdGVtZW50'
    'SABSFWlmRGVmaW5pdGlvblN0YXRlbWVudBJyCiFvYmplY3RQcm9wZXJ0eUFzc2lnbm1lbnRTdG'
    'F0ZW1lbnQYBSABKAsyIi5PYmplY3RQcm9wZXJ0eUFzc2lnbm1lbnRTdGF0ZW1lbnRIAFIhb2Jq'
    'ZWN0UHJvcGVydHlBc3NpZ25tZW50U3RhdGVtZW50EjwKD3JldHVyblN0YXRlbWVudBgGIAEoCz'
    'IQLlJldHVyblN0YXRlbWVudEgAUg9yZXR1cm5TdGF0ZW1lbnQSWQoXdmFyRGVjbGFyYXRpb25T'
    'dGF0ZW1lbnQYByABKAsyHS5WYXJpYWJsZURlY2xhcmF0aW9uU3RhdGVtZW50SABSF3ZhckRlY2'
    'xhcmF0aW9uU3RhdGVtZW50ElcKGHdoaWxlRGVmaW5pdGlvblN0YXRlbWVudBgIIAEoCzIZLldo'
    'aWxlRGVmaW5pdGlvblN0YXRlbWVudEgAUhh3aGlsZURlZmluaXRpb25TdGF0ZW1lbnQSUQoWZm'
    '9yRGVmaW5pdGlvblN0YXRlbWVudBgJIAEoCzIXLkZvckRlZmluaXRpb25TdGF0ZW1lbnRIAFIW'
    'Zm9yRGVmaW5pdGlvblN0YXRlbWVudEIGCgRzdG10');

@$core.Deprecated('Use assignmentStatementDescriptor instead')
const AssignmentStatement$json = {
  '1': 'AssignmentStatement',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `AssignmentStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignmentStatementDescriptor = $convert.base64Decode(
    'ChNBc3NpZ25tZW50U3RhdGVtZW50EhIKBG5hbWUYASABKAlSBG5hbWUSIQoFdmFsdWUYAiABKA'
    'syCy5FeHByZXNzaW9uUgV2YWx1ZRIlCghwb3NpdGlvbhgDIAEoCzIJLlBvc2l0aW9uUghwb3Np'
    'dGlvbg==');

@$core.Deprecated('Use classDefinitionStatementDescriptor instead')
const ClassDefinitionStatement$json = {
  '1': 'ClassDefinitionStatement',
  '2': [
    {'1': 'encapsulation', '3': 1, '4': 1, '5': 14, '6': '.EncapsulationType', '10': 'encapsulation'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parentName', '3': 3, '4': 1, '5': 9, '10': 'parentName'},
    {'1': 'properties', '3': 4, '4': 3, '5': 11, '6': '.PropertyDeclaration', '10': 'properties'},
    {'1': 'constructors', '3': 5, '4': 3, '5': 11, '6': '.ConstructorDefinitionStatement', '10': 'constructors'},
    {'1': 'methods', '3': 6, '4': 3, '5': 11, '6': '.FunctionDefinitionStatement', '10': 'methods'},
    {'1': 'parentClassType', '3': 7, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'parentClassType'},
    {'1': 'position', '3': 8, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ClassDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classDefinitionStatementDescriptor = $convert.base64Decode(
    'ChhDbGFzc0RlZmluaXRpb25TdGF0ZW1lbnQSOAoNZW5jYXBzdWxhdGlvbhgBIAEoDjISLkVuY2'
    'Fwc3VsYXRpb25UeXBlUg1lbmNhcHN1bGF0aW9uEhIKBG5hbWUYAiABKAlSBG5hbWUSHgoKcGFy'
    'ZW50TmFtZRgDIAEoCVIKcGFyZW50TmFtZRI0Cgpwcm9wZXJ0aWVzGAQgAygLMhQuUHJvcGVydH'
    'lEZWNsYXJhdGlvblIKcHJvcGVydGllcxJDCgxjb25zdHJ1Y3RvcnMYBSADKAsyHy5Db25zdHJ1'
    'Y3RvckRlZmluaXRpb25TdGF0ZW1lbnRSDGNvbnN0cnVjdG9ycxI2CgdtZXRob2RzGAYgAygLMh'
    'wuRnVuY3Rpb25EZWZpbml0aW9uU3RhdGVtZW50UgdtZXRob2RzEjwKD3BhcmVudENsYXNzVHlw'
    'ZRgHIAEoCzISLlZhcmlhYmxlVmFsdWVUeXBlUg9wYXJlbnRDbGFzc1R5cGUSJQoIcG9zaXRpb2'
    '4YCCABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use propertyDeclarationDescriptor instead')
const PropertyDeclaration$json = {
  '1': 'PropertyDeclaration',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'valueType'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
  ],
};

/// Descriptor for `PropertyDeclaration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyDeclarationDescriptor = $convert.base64Decode(
    'ChNQcm9wZXJ0eURlY2xhcmF0aW9uEicKB3ZhclR5cGUYASABKA4yDS5WYXJpYWJsZVR5cGVSB3'
    'ZhclR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIwCgl2YWx1ZVR5cGUYAyABKAsyEi5WYXJpYWJs'
    'ZVZhbHVlVHlwZVIJdmFsdWVUeXBlEiEKBXZhbHVlGAQgASgLMgsuRXhwcmVzc2lvblIFdmFsdW'
    'U=');

@$core.Deprecated('Use functionDefinitionStatementDescriptor instead')
const FunctionDefinitionStatement$json = {
  '1': 'FunctionDefinitionStatement',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parameters', '3': 2, '4': 3, '5': 11, '6': '.Parameter', '10': 'parameters'},
    {'1': 'returnType', '3': 3, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'returnType'},
    {'1': 'statements', '3': 4, '4': 3, '5': 11, '6': '.Statement', '10': 'statements'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `FunctionDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionDefinitionStatementDescriptor = $convert.base64Decode(
    'ChtGdW5jdGlvbkRlZmluaXRpb25TdGF0ZW1lbnQSEgoEbmFtZRgBIAEoCVIEbmFtZRIqCgpwYX'
    'JhbWV0ZXJzGAIgAygLMgouUGFyYW1ldGVyUgpwYXJhbWV0ZXJzEjIKCnJldHVyblR5cGUYAyAB'
    'KAsyEi5WYXJpYWJsZVZhbHVlVHlwZVIKcmV0dXJuVHlwZRIqCgpzdGF0ZW1lbnRzGAQgAygLMg'
    'ouU3RhdGVtZW50UgpzdGF0ZW1lbnRzEiUKCHBvc2l0aW9uGAUgASgLMgkuUG9zaXRpb25SCHBv'
    'c2l0aW9u');

@$core.Deprecated('Use constructorDefinitionStatementDescriptor instead')
const ConstructorDefinitionStatement$json = {
  '1': 'ConstructorDefinitionStatement',
  '2': [
    {'1': 'className', '3': 1, '4': 1, '5': 9, '10': 'className'},
    {'1': 'constructorName', '3': 2, '4': 1, '5': 9, '10': 'constructorName'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.Parameter', '10': 'parameters'},
    {'1': 'body', '3': 4, '4': 3, '5': 11, '6': '.Statement', '10': 'body'},
    {'1': 'thisConstructor', '3': 5, '4': 1, '5': 11, '6': '.ThisConstructorDefinition', '10': 'thisConstructor'},
    {'1': 'position', '3': 6, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ConstructorDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constructorDefinitionStatementDescriptor = $convert.base64Decode(
    'Ch5Db25zdHJ1Y3RvckRlZmluaXRpb25TdGF0ZW1lbnQSHAoJY2xhc3NOYW1lGAEgASgJUgljbG'
    'Fzc05hbWUSKAoPY29uc3RydWN0b3JOYW1lGAIgASgJUg9jb25zdHJ1Y3Rvck5hbWUSKgoKcGFy'
    'YW1ldGVycxgDIAMoCzIKLlBhcmFtZXRlclIKcGFyYW1ldGVycxIeCgRib2R5GAQgAygLMgouU3'
    'RhdGVtZW50UgRib2R5EkQKD3RoaXNDb25zdHJ1Y3RvchgFIAEoCzIaLlRoaXNDb25zdHJ1Y3Rv'
    'ckRlZmluaXRpb25SD3RoaXNDb25zdHJ1Y3RvchIlCghwb3NpdGlvbhgGIAEoCzIJLlBvc2l0aW'
    '9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use thisConstructorDefinitionDescriptor instead')
const ThisConstructorDefinition$json = {
  '1': 'ThisConstructorDefinition',
  '2': [
    {'1': 'parameters', '3': 1, '4': 3, '5': 11, '6': '.Expression', '10': 'parameters'},
  ],
};

/// Descriptor for `ThisConstructorDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thisConstructorDefinitionDescriptor = $convert.base64Decode(
    'ChlUaGlzQ29uc3RydWN0b3JEZWZpbml0aW9uEisKCnBhcmFtZXRlcnMYASADKAsyCy5FeHByZX'
    'NzaW9uUgpwYXJhbWV0ZXJz');

@$core.Deprecated('Use parameterDescriptor instead')
const Parameter$json = {
  '1': 'Parameter',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.ParameterType', '10': 'type'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'valueType'},
  ],
};

/// Descriptor for `Parameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parameterDescriptor = $convert.base64Decode(
    'CglQYXJhbWV0ZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIiCgR0eXBlGAIgASgOMg4uUGFyYW1ldG'
    'VyVHlwZVIEdHlwZRIwCgl2YWx1ZVR5cGUYAyABKAsyEi5WYXJpYWJsZVZhbHVlVHlwZVIJdmFs'
    'dWVUeXBl');

@$core.Deprecated('Use expressionDefinitionStatementDescriptor instead')
const ExpressionDefinitionStatement$json = {
  '1': 'ExpressionDefinitionStatement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ExpressionDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionDefinitionStatementDescriptor = $convert.base64Decode(
    'Ch1FeHByZXNzaW9uRGVmaW5pdGlvblN0YXRlbWVudBIhCgV2YWx1ZRgBIAEoCzILLkV4cHJlc3'
    'Npb25SBXZhbHVlEiUKCHBvc2l0aW9uGAIgASgLMgkuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use ifDefinitionStatementDescriptor instead')
const IfDefinitionStatement$json = {
  '1': 'IfDefinitionStatement',
  '2': [
    {'1': 'ifBlock', '3': 1, '4': 1, '5': 11, '6': '.IfBlock', '10': 'ifBlock'},
    {'1': 'elseIfBlocks', '3': 2, '4': 3, '5': 11, '6': '.IfBlock', '10': 'elseIfBlocks'},
    {'1': 'elseBlock', '3': 3, '4': 1, '5': 11, '6': '.IfBlock', '10': 'elseBlock'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `IfDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ifDefinitionStatementDescriptor = $convert.base64Decode(
    'ChVJZkRlZmluaXRpb25TdGF0ZW1lbnQSIgoHaWZCbG9jaxgBIAEoCzIILklmQmxvY2tSB2lmQm'
    'xvY2sSLAoMZWxzZUlmQmxvY2tzGAIgAygLMgguSWZCbG9ja1IMZWxzZUlmQmxvY2tzEiYKCWVs'
    'c2VCbG9jaxgDIAEoCzIILklmQmxvY2tSCWVsc2VCbG9jaxIlCghwb3NpdGlvbhgEIAEoCzIJLl'
    'Bvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use ifBlockDescriptor instead')
const IfBlock$json = {
  '1': 'IfBlock',
  '2': [
    {'1': 'condition', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'condition'},
    {'1': 'statements', '3': 2, '4': 3, '5': 11, '6': '.Statement', '10': 'statements'},
    {'1': 'blockType', '3': 3, '4': 1, '5': 14, '6': '.BlockType', '10': 'blockType'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `IfBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ifBlockDescriptor = $convert.base64Decode(
    'CgdJZkJsb2NrEikKCWNvbmRpdGlvbhgBIAEoCzILLkV4cHJlc3Npb25SCWNvbmRpdGlvbhIqCg'
    'pzdGF0ZW1lbnRzGAIgAygLMgouU3RhdGVtZW50UgpzdGF0ZW1lbnRzEigKCWJsb2NrVHlwZRgD'
    'IAEoDjIKLkJsb2NrVHlwZVIJYmxvY2tUeXBlEiUKCHBvc2l0aW9uGAQgASgLMgkuUG9zaXRpb2'
    '5SCHBvc2l0aW9u');

@$core.Deprecated('Use whileDefinitionStatementDescriptor instead')
const WhileDefinitionStatement$json = {
  '1': 'WhileDefinitionStatement',
  '2': [
    {'1': 'condition', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'condition'},
    {'1': 'statements', '3': 2, '4': 3, '5': 11, '6': '.Statement', '10': 'statements'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `WhileDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whileDefinitionStatementDescriptor = $convert.base64Decode(
    'ChhXaGlsZURlZmluaXRpb25TdGF0ZW1lbnQSKQoJY29uZGl0aW9uGAEgASgLMgsuRXhwcmVzc2'
    'lvblIJY29uZGl0aW9uEioKCnN0YXRlbWVudHMYAiADKAsyCi5TdGF0ZW1lbnRSCnN0YXRlbWVu'
    'dHMSJQoIcG9zaXRpb24YAyABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forInitOrIncrementStatementDescriptor instead')
const ForInitOrIncrementStatement$json = {
  '1': 'ForInitOrIncrementStatement',
  '2': [
    {'1': 'varDeclarationForStatement', '3': 1, '4': 1, '5': 11, '6': '.VarDeclarationForStatement', '9': 0, '10': 'varDeclarationForStatement'},
    {'1': 'assignmentForStatement', '3': 2, '4': 1, '5': 11, '6': '.AssignmentForStatement', '9': 0, '10': 'assignmentForStatement'},
    {'1': 'expressionForStatement', '3': 3, '4': 1, '5': 11, '6': '.ExpressionForStatement', '9': 0, '10': 'expressionForStatement'},
  ],
  '8': [
    {'1': 'init_or_increment'},
  ],
};

/// Descriptor for `ForInitOrIncrementStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forInitOrIncrementStatementDescriptor = $convert.base64Decode(
    'ChtGb3JJbml0T3JJbmNyZW1lbnRTdGF0ZW1lbnQSXQoadmFyRGVjbGFyYXRpb25Gb3JTdGF0ZW'
    '1lbnQYASABKAsyGy5WYXJEZWNsYXJhdGlvbkZvclN0YXRlbWVudEgAUhp2YXJEZWNsYXJhdGlv'
    'bkZvclN0YXRlbWVudBJRChZhc3NpZ25tZW50Rm9yU3RhdGVtZW50GAIgASgLMhcuQXNzaWdubW'
    'VudEZvclN0YXRlbWVudEgAUhZhc3NpZ25tZW50Rm9yU3RhdGVtZW50ElEKFmV4cHJlc3Npb25G'
    'b3JTdGF0ZW1lbnQYAyABKAsyFy5FeHByZXNzaW9uRm9yU3RhdGVtZW50SABSFmV4cHJlc3Npb2'
    '5Gb3JTdGF0ZW1lbnRCEwoRaW5pdF9vcl9pbmNyZW1lbnQ=');

@$core.Deprecated('Use varDeclarationForStatementDescriptor instead')
const VarDeclarationForStatement$json = {
  '1': 'VarDeclarationForStatement',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'valueType'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `VarDeclarationForStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List varDeclarationForStatementDescriptor = $convert.base64Decode(
    'ChpWYXJEZWNsYXJhdGlvbkZvclN0YXRlbWVudBInCgd2YXJUeXBlGAEgASgOMg0uVmFyaWFibG'
    'VUeXBlUgd2YXJUeXBlEhIKBG5hbWUYAiABKAlSBG5hbWUSMAoJdmFsdWVUeXBlGAMgASgLMhIu'
    'VmFyaWFibGVWYWx1ZVR5cGVSCXZhbHVlVHlwZRIhCgV2YWx1ZRgEIAEoCzILLkV4cHJlc3Npb2'
    '5SBXZhbHVlEiUKCHBvc2l0aW9uGAUgASgLMgkuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use assignmentForStatementDescriptor instead')
const AssignmentForStatement$json = {
  '1': 'AssignmentForStatement',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `AssignmentForStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignmentForStatementDescriptor = $convert.base64Decode(
    'ChZBc3NpZ25tZW50Rm9yU3RhdGVtZW50EhIKBG5hbWUYASABKAlSBG5hbWUSIQoFdmFsdWUYAi'
    'ABKAsyCy5FeHByZXNzaW9uUgV2YWx1ZRIlCghwb3NpdGlvbhgDIAEoCzIJLlBvc2l0aW9uUghw'
    'b3NpdGlvbg==');

@$core.Deprecated('Use expressionForStatementDescriptor instead')
const ExpressionForStatement$json = {
  '1': 'ExpressionForStatement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ExpressionForStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionForStatementDescriptor = $convert.base64Decode(
    'ChZFeHByZXNzaW9uRm9yU3RhdGVtZW50EiEKBXZhbHVlGAEgASgLMgsuRXhwcmVzc2lvblIFdm'
    'FsdWUSJQoIcG9zaXRpb24YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forDefinitionStatementDescriptor instead')
const ForDefinitionStatement$json = {
  '1': 'ForDefinitionStatement',
  '2': [
    {'1': 'forCondition', '3': 1, '4': 1, '5': 11, '6': '.ForCondition', '10': 'forCondition'},
    {'1': 'statements', '3': 2, '4': 3, '5': 11, '6': '.Statement', '10': 'statements'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ForDefinitionStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forDefinitionStatementDescriptor = $convert.base64Decode(
    'ChZGb3JEZWZpbml0aW9uU3RhdGVtZW50EjEKDGZvckNvbmRpdGlvbhgBIAEoCzINLkZvckNvbm'
    'RpdGlvblIMZm9yQ29uZGl0aW9uEioKCnN0YXRlbWVudHMYAiADKAsyCi5TdGF0ZW1lbnRSCnN0'
    'YXRlbWVudHMSJQoIcG9zaXRpb24YAyABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forConditionDescriptor instead')
const ForCondition$json = {
  '1': 'ForCondition',
  '2': [
    {'1': 'standardForCondition', '3': 1, '4': 1, '5': 11, '6': '.StandardForCondition', '9': 0, '10': 'standardForCondition'},
    {'1': 'forEachCondition', '3': 2, '4': 1, '5': 11, '6': '.ForEachCondition', '9': 0, '10': 'forEachCondition'},
  ],
  '8': [
    {'1': 'condition'},
  ],
};

/// Descriptor for `ForCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forConditionDescriptor = $convert.base64Decode(
    'CgxGb3JDb25kaXRpb24SSwoUc3RhbmRhcmRGb3JDb25kaXRpb24YASABKAsyFS5TdGFuZGFyZE'
    'ZvckNvbmRpdGlvbkgAUhRzdGFuZGFyZEZvckNvbmRpdGlvbhI/ChBmb3JFYWNoQ29uZGl0aW9u'
    'GAIgASgLMhEuRm9yRWFjaENvbmRpdGlvbkgAUhBmb3JFYWNoQ29uZGl0aW9uQgsKCWNvbmRpdG'
    'lvbg==');

@$core.Deprecated('Use standardForConditionDescriptor instead')
const StandardForCondition$json = {
  '1': 'StandardForCondition',
  '2': [
    {'1': 'initStatement', '3': 1, '4': 1, '5': 11, '6': '.ForInitOrIncrementStatement', '10': 'initStatement'},
    {'1': 'controlExpression', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'controlExpression'},
    {'1': 'incrementStatement', '3': 3, '4': 1, '5': 11, '6': '.ForInitOrIncrementStatement', '10': 'incrementStatement'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `StandardForCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List standardForConditionDescriptor = $convert.base64Decode(
    'ChRTdGFuZGFyZEZvckNvbmRpdGlvbhJCCg1pbml0U3RhdGVtZW50GAEgASgLMhwuRm9ySW5pdE'
    '9ySW5jcmVtZW50U3RhdGVtZW50Ug1pbml0U3RhdGVtZW50EjkKEWNvbnRyb2xFeHByZXNzaW9u'
    'GAIgASgLMgsuRXhwcmVzc2lvblIRY29udHJvbEV4cHJlc3Npb24STAoSaW5jcmVtZW50U3RhdG'
    'VtZW50GAMgASgLMhwuRm9ySW5pdE9ySW5jcmVtZW50U3RhdGVtZW50UhJpbmNyZW1lbnRTdGF0'
    'ZW1lbnQSJQoIcG9zaXRpb24YBCABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');

@$core.Deprecated('Use forEachConditionDescriptor instead')
const ForEachCondition$json = {
  '1': 'ForEachCondition',
  '2': [
    {'1': 'itemDefinition', '3': 1, '4': 1, '5': 11, '6': '.ItemDefinition', '10': 'itemDefinition'},
    {'1': 'expression', '3': 2, '4': 1, '5': 11, '6': '.Expression', '10': 'expression'},
    {'1': 'position', '3': 3, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ForEachCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forEachConditionDescriptor = $convert.base64Decode(
    'ChBGb3JFYWNoQ29uZGl0aW9uEjcKDml0ZW1EZWZpbml0aW9uGAEgASgLMg8uSXRlbURlZmluaX'
    'Rpb25SDml0ZW1EZWZpbml0aW9uEisKCmV4cHJlc3Npb24YAiABKAsyCy5FeHByZXNzaW9uUgpl'
    'eHByZXNzaW9uEiUKCHBvc2l0aW9uGAMgASgLMgkuUG9zaXRpb25SCHBvc2l0aW9u');

@$core.Deprecated('Use itemDefinitionDescriptor instead')
const ItemDefinition$json = {
  '1': 'ItemDefinition',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'valueType'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ItemDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDefinitionDescriptor = $convert.base64Decode(
    'Cg5JdGVtRGVmaW5pdGlvbhInCgd2YXJUeXBlGAEgASgOMg0uVmFyaWFibGVUeXBlUgd2YXJUeX'
    'BlEhIKBG5hbWUYAiABKAlSBG5hbWUSMAoJdmFsdWVUeXBlGAMgASgLMhIuVmFyaWFibGVWYWx1'
    'ZVR5cGVSCXZhbHVlVHlwZRIlCghwb3NpdGlvbhgEIAEoCzIJLlBvc2l0aW9uUghwb3NpdGlvbg'
    '==');

@$core.Deprecated('Use objectPropertyAssignmentStatementDescriptor instead')
const ObjectPropertyAssignmentStatement$json = {
  '1': 'ObjectPropertyAssignmentStatement',
  '2': [
    {'1': 'objectName', '3': 1, '4': 1, '5': 9, '10': 'objectName'},
    {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 4, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ObjectPropertyAssignmentStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectPropertyAssignmentStatementDescriptor = $convert.base64Decode(
    'CiFPYmplY3RQcm9wZXJ0eUFzc2lnbm1lbnRTdGF0ZW1lbnQSHgoKb2JqZWN0TmFtZRgBIAEoCV'
    'IKb2JqZWN0TmFtZRIiCgxwcm9wZXJ0eU5hbWUYAiABKAlSDHByb3BlcnR5TmFtZRIhCgV2YWx1'
    'ZRgDIAEoCzILLkV4cHJlc3Npb25SBXZhbHVlEiUKCHBvc2l0aW9uGAQgASgLMgkuUG9zaXRpb2'
    '5SCHBvc2l0aW9u');

@$core.Deprecated('Use returnStatementDescriptor instead')
const ReturnStatement$json = {
  '1': 'ReturnStatement',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ReturnStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List returnStatementDescriptor = $convert.base64Decode(
    'Cg9SZXR1cm5TdGF0ZW1lbnQSIQoFdmFsdWUYASABKAsyCy5FeHByZXNzaW9uUgV2YWx1ZRIlCg'
    'hwb3NpdGlvbhgCIAEoCzIJLlBvc2l0aW9uUghwb3NpdGlvbg==');

@$core.Deprecated('Use variableDeclarationStatementDescriptor instead')
const VariableDeclarationStatement$json = {
  '1': 'VariableDeclarationStatement',
  '2': [
    {'1': 'varType', '3': 1, '4': 1, '5': 14, '6': '.VariableType', '10': 'varType'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'valueType', '3': 3, '4': 1, '5': 11, '6': '.VariableValueType', '10': 'valueType'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.Expression', '10': 'value'},
    {'1': 'position', '3': 5, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `VariableDeclarationStatement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableDeclarationStatementDescriptor = $convert.base64Decode(
    'ChxWYXJpYWJsZURlY2xhcmF0aW9uU3RhdGVtZW50EicKB3ZhclR5cGUYASABKA4yDS5WYXJpYW'
    'JsZVR5cGVSB3ZhclR5cGUSEgoEbmFtZRgCIAEoCVIEbmFtZRIwCgl2YWx1ZVR5cGUYAyABKAsy'
    'Ei5WYXJpYWJsZVZhbHVlVHlwZVIJdmFsdWVUeXBlEiEKBXZhbHVlGAQgASgLMgsuRXhwcmVzc2'
    'lvblIFdmFsdWUSJQoIcG9zaXRpb24YBSABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');


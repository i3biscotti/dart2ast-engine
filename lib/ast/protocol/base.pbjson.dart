//
//  Generated code. Do not modify.
//  source: base.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use astObjectDescriptor instead')
const AstObject$json = {
  '1': 'AstObject',
  '2': [
    {'1': 'position', '3': 1, '4': 1, '5': 11, '6': '.Position', '9': 0, '10': 'position'},
    {'1': 'point', '3': 2, '4': 1, '5': 11, '6': '.Point', '9': 0, '10': 'point'},
    {'1': 'node', '3': 3, '4': 1, '5': 11, '6': '.Node', '9': 0, '10': 'node'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `AstObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List astObjectDescriptor = $convert.base64Decode(
    'CglBc3RPYmplY3QSJwoIcG9zaXRpb24YASABKAsyCS5Qb3NpdGlvbkgAUghwb3NpdGlvbhIeCg'
    'Vwb2ludBgCIAEoCzIGLlBvaW50SABSBXBvaW50EhsKBG5vZGUYAyABKAsyBS5Ob2RlSABSBG5v'
    'ZGVCBgoEdHlwZQ==');

@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = {
  '1': 'Node',
  '2': [
    {'1': 'expression', '3': 1, '4': 1, '5': 11, '6': '.Expression', '9': 0, '10': 'expression'},
    {'1': 'statement', '3': 2, '4': 1, '5': 11, '6': '.Statement', '9': 0, '10': 'statement'},
    {'1': 'programFile', '3': 3, '4': 1, '5': 11, '6': '.ProgramFile', '9': 0, '10': 'programFile'},
  ],
  '8': [
    {'1': 'subtype'},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode(
    'CgROb2RlEi0KCmV4cHJlc3Npb24YASABKAsyCy5FeHByZXNzaW9uSABSCmV4cHJlc3Npb24SKg'
    'oJc3RhdGVtZW50GAIgASgLMgouU3RhdGVtZW50SABSCXN0YXRlbWVudBIwCgtwcm9ncmFtRmls'
    'ZRgDIAEoCzIMLlByb2dyYW1GaWxlSABSC3Byb2dyYW1GaWxlQgkKB3N1YnR5cGU=');

@$core.Deprecated('Use programFileDescriptor instead')
const ProgramFile$json = {
  '1': 'ProgramFile',
  '2': [
    {'1': 'lines', '3': 1, '4': 3, '5': 11, '6': '.Statement', '10': 'lines'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Position', '10': 'position'},
  ],
};

/// Descriptor for `ProgramFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List programFileDescriptor = $convert.base64Decode(
    'CgtQcm9ncmFtRmlsZRIgCgVsaW5lcxgBIAMoCzIKLlN0YXRlbWVudFIFbGluZXMSJQoIcG9zaX'
    'Rpb24YAiABKAsyCS5Qb3NpdGlvblIIcG9zaXRpb24=');


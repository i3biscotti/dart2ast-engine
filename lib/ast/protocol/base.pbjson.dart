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
    {'1': 'position', '3': 1, '4': 1, '5': 11, '6': '.protocol.Position', '9': 0, '10': 'position'},
    {'1': 'point', '3': 2, '4': 1, '5': 11, '6': '.protocol.Point', '9': 0, '10': 'point'},
    {'1': 'node', '3': 3, '4': 1, '5': 11, '6': '.protocol.Node', '9': 0, '10': 'node'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `AstObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List astObjectDescriptor = $convert.base64Decode(
    'CglBc3RPYmplY3QSMAoIcG9zaXRpb24YASABKAsyEi5wcm90b2NvbC5Qb3NpdGlvbkgAUghwb3'
    'NpdGlvbhInCgVwb2ludBgCIAEoCzIPLnByb3RvY29sLlBvaW50SABSBXBvaW50EiQKBG5vZGUY'
    'AyABKAsyDi5wcm90b2NvbC5Ob2RlSABSBG5vZGVCBgoEdHlwZQ==');

@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = {
  '1': 'Node',
  '2': [
    {'1': 'expression', '3': 1, '4': 1, '5': 11, '6': '.protocol.Expression', '9': 0, '10': 'expression'},
    {'1': 'statement', '3': 2, '4': 1, '5': 11, '6': '.protocol.Statement', '9': 0, '10': 'statement'},
    {'1': 'programFile', '3': 3, '4': 1, '5': 11, '6': '.protocol.ProgramFile', '9': 0, '10': 'programFile'},
    {'1': 'ifBlock', '3': 4, '4': 1, '5': 11, '6': '.protocol.IfBlock', '9': 0, '10': 'ifBlock'},
    {'1': 'forCondition', '3': 5, '4': 1, '5': 11, '6': '.protocol.ForCondition', '9': 0, '10': 'forCondition'},
    {'1': 'itemDefinition', '3': 6, '4': 1, '5': 11, '6': '.protocol.ItemDefinition', '9': 0, '10': 'itemDefinition'},
    {'1': 'parameter', '3': 7, '4': 1, '5': 11, '6': '.protocol.Parameter', '9': 0, '10': 'parameter'},
  ],
  '8': [
    {'1': 'subtype'},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode(
    'CgROb2RlEjYKCmV4cHJlc3Npb24YASABKAsyFC5wcm90b2NvbC5FeHByZXNzaW9uSABSCmV4cH'
    'Jlc3Npb24SMwoJc3RhdGVtZW50GAIgASgLMhMucHJvdG9jb2wuU3RhdGVtZW50SABSCXN0YXRl'
    'bWVudBI5Cgtwcm9ncmFtRmlsZRgDIAEoCzIVLnByb3RvY29sLlByb2dyYW1GaWxlSABSC3Byb2'
    'dyYW1GaWxlEi0KB2lmQmxvY2sYBCABKAsyES5wcm90b2NvbC5JZkJsb2NrSABSB2lmQmxvY2sS'
    'PAoMZm9yQ29uZGl0aW9uGAUgASgLMhYucHJvdG9jb2wuRm9yQ29uZGl0aW9uSABSDGZvckNvbm'
    'RpdGlvbhJCCg5pdGVtRGVmaW5pdGlvbhgGIAEoCzIYLnByb3RvY29sLkl0ZW1EZWZpbml0aW9u'
    'SABSDml0ZW1EZWZpbml0aW9uEjMKCXBhcmFtZXRlchgHIAEoCzITLnByb3RvY29sLlBhcmFtZX'
    'RlckgAUglwYXJhbWV0ZXJCCQoHc3VidHlwZQ==');

@$core.Deprecated('Use programFileDescriptor instead')
const ProgramFile$json = {
  '1': 'ProgramFile',
  '2': [
    {'1': 'lines', '3': 1, '4': 3, '5': 11, '6': '.protocol.Statement', '10': 'lines'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.protocol.Position', '10': 'position'},
  ],
};

/// Descriptor for `ProgramFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List programFileDescriptor = $convert.base64Decode(
    'CgtQcm9ncmFtRmlsZRIpCgVsaW5lcxgBIAMoCzITLnByb3RvY29sLlN0YXRlbWVudFIFbGluZX'
    'MSLgoIcG9zaXRpb24YAiABKAsyEi5wcm90b2NvbC5Qb3NpdGlvblIIcG9zaXRpb24=');


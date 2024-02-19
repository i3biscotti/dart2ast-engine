//
//  Generated code. Do not modify.
//  source: response.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use astResponseDescriptor instead')
const AstResponse$json = {
  '1': 'AstResponse',
  '2': [
    {'1': 'program', '3': 1, '4': 1, '5': 11, '6': '.ProgramFile', '10': 'program'},
    {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.LanguageError', '10': 'errors'},
  ],
};

/// Descriptor for `AstResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List astResponseDescriptor = $convert.base64Decode(
    'CgtBc3RSZXNwb25zZRImCgdwcm9ncmFtGAEgASgLMgwuUHJvZ3JhbUZpbGVSB3Byb2dyYW0SJg'
    'oGZXJyb3JzGAIgAygLMg4uTGFuZ3VhZ2VFcnJvclIGZXJyb3Jz');

@$core.Deprecated('Use languageErrorDescriptor instead')
const LanguageError$json = {
  '1': 'LanguageError',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.Point', '10': 'position'},
  ],
};

/// Descriptor for `LanguageError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List languageErrorDescriptor = $convert.base64Decode(
    'Cg1MYW5ndWFnZUVycm9yEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USIgoIcG9zaXRpb24YAi'
    'ABKAsyBi5Qb2ludFIIcG9zaXRpb24=');

@$core.Deprecated('Use transpileResponseDescriptor instead')
const TranspileResponse$json = {
  '1': 'TranspileResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.LanguageError', '10': 'errors'},
  ],
};

/// Descriptor for `TranspileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transpileResponseDescriptor = $convert.base64Decode(
    'ChFUcmFuc3BpbGVSZXNwb25zZRISCgRjb2RlGAEgASgJUgRjb2RlEiYKBmVycm9ycxgCIAMoCz'
    'IOLkxhbmd1YWdlRXJyb3JSBmVycm9ycw==');


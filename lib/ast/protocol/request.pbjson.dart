//
//  Generated code. Do not modify.
//  source: request.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use astRequestDescriptor instead')
const AstRequest$json = {
  '1': 'AstRequest',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `AstRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List astRequestDescriptor = $convert.base64Decode(
    'CgpBc3RSZXF1ZXN0EhIKBGNvZGUYASABKAlSBGNvZGU=');

@$core.Deprecated('Use transpileRequestDescriptor instead')
const TranspileRequest$json = {
  '1': 'TranspileRequest',
  '2': [
    {'1': 'program', '3': 1, '4': 1, '5': 11, '6': '.ProgramFile', '10': 'program'},
  ],
};

/// Descriptor for `TranspileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transpileRequestDescriptor = $convert.base64Decode(
    'ChBUcmFuc3BpbGVSZXF1ZXN0EiYKB3Byb2dyYW0YASABKAsyDC5Qcm9ncmFtRmlsZVIHcHJvZ3'
    'JhbQ==');


//
//  Generated code. Do not modify.
//  source: position.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'start'},
    {'1': 'end', '3': 2, '4': 1, '5': 11, '6': '.Point', '10': 'end'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIcCgVzdGFydBgBIAEoCzIGLlBvaW50UgVzdGFydBIYCgNlbmQYAiABKAsyBi'
    '5Qb2ludFIDZW5k');

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'line', '3': 1, '4': 1, '5': 5, '10': 'line'},
    {'1': 'column', '3': 2, '4': 1, '5': 5, '10': 'column'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBISCgRsaW5lGAEgASgFUgRsaW5lEhYKBmNvbHVtbhgCIAEoBVIGY29sdW1u');


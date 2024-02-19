//
//  Generated code. Do not modify.
//  source: statements.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VariableType extends $pb.ProtobufEnum {
  static const VariableType VARIABLE = VariableType._(0, _omitEnumNames ? '' : 'VARIABLE');
  static const VariableType IMMUTABLE = VariableType._(1, _omitEnumNames ? '' : 'IMMUTABLE');
  static const VariableType CONSTANT = VariableType._(2, _omitEnumNames ? '' : 'CONSTANT');

  static const $core.List<VariableType> values = <VariableType> [
    VARIABLE,
    IMMUTABLE,
    CONSTANT,
  ];

  static final $core.Map<$core.int, VariableType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static VariableType? valueOf($core.int value) => _byValue[value];

  const VariableType._($core.int v, $core.String n) : super(v, n);
}

class EncapsulationType extends $pb.ProtobufEnum {
  static const EncapsulationType PUBLIC = EncapsulationType._(0, _omitEnumNames ? '' : 'PUBLIC');
  static const EncapsulationType PRIVATE = EncapsulationType._(1, _omitEnumNames ? '' : 'PRIVATE');

  static const $core.List<EncapsulationType> values = <EncapsulationType> [
    PUBLIC,
    PRIVATE,
  ];

  static final $core.Map<$core.int, EncapsulationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EncapsulationType? valueOf($core.int value) => _byValue[value];

  const EncapsulationType._($core.int v, $core.String n) : super(v, n);
}

class ParameterType extends $pb.ProtobufEnum {
  static const ParameterType TYPE = ParameterType._(0, _omitEnumNames ? '' : 'TYPE');
  static const ParameterType THIS = ParameterType._(1, _omitEnumNames ? '' : 'THIS');
  static const ParameterType SUPER = ParameterType._(2, _omitEnumNames ? '' : 'SUPER');

  static const $core.List<ParameterType> values = <ParameterType> [
    TYPE,
    THIS,
    SUPER,
  ];

  static final $core.Map<$core.int, ParameterType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ParameterType? valueOf($core.int value) => _byValue[value];

  const ParameterType._($core.int v, $core.String n) : super(v, n);
}

class BlockType extends $pb.ProtobufEnum {
  static const BlockType IF_BLOCK = BlockType._(0, _omitEnumNames ? '' : 'IF_BLOCK');
  static const BlockType ELSE_IF_BLOCK = BlockType._(1, _omitEnumNames ? '' : 'ELSE_IF_BLOCK');
  static const BlockType ELSE_BLOCK = BlockType._(2, _omitEnumNames ? '' : 'ELSE_BLOCK');

  static const $core.List<BlockType> values = <BlockType> [
    IF_BLOCK,
    ELSE_IF_BLOCK,
    ELSE_BLOCK,
  ];

  static final $core.Map<$core.int, BlockType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BlockType? valueOf($core.int value) => _byValue[value];

  const BlockType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

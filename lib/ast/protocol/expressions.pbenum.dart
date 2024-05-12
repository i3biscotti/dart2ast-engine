//
//  Generated code. Do not modify.
//  source: expressions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class MathOperand extends $pb.ProtobufEnum {
  static const MathOperand PLUS = MathOperand._(0, _omitEnumNames ? '' : 'PLUS');
  static const MathOperand MINUS = MathOperand._(1, _omitEnumNames ? '' : 'MINUS');
  static const MathOperand TIMES = MathOperand._(2, _omitEnumNames ? '' : 'TIMES');
  static const MathOperand DIVISION = MathOperand._(3, _omitEnumNames ? '' : 'DIVISION');

  static const $core.List<MathOperand> values = <MathOperand> [
    PLUS,
    MINUS,
    TIMES,
    DIVISION,
  ];

  static final $core.Map<$core.int, MathOperand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MathOperand? valueOf($core.int value) => _byValue[value];

  const MathOperand._($core.int v, $core.String n) : super(v, n);
}

class LogicOperand extends $pb.ProtobufEnum {
  static const LogicOperand AND = LogicOperand._(0, _omitEnumNames ? '' : 'AND');
  static const LogicOperand OR = LogicOperand._(1, _omitEnumNames ? '' : 'OR');
  static const LogicOperand NOT = LogicOperand._(2, _omitEnumNames ? '' : 'NOT');

  static const $core.List<LogicOperand> values = <LogicOperand> [
    AND,
    OR,
    NOT,
  ];

  static final $core.Map<$core.int, LogicOperand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogicOperand? valueOf($core.int value) => _byValue[value];

  const LogicOperand._($core.int v, $core.String n) : super(v, n);
}

class ComparisonOperand extends $pb.ProtobufEnum {
  static const ComparisonOperand EQUAL = ComparisonOperand._(0, _omitEnumNames ? '' : 'EQUAL');
  static const ComparisonOperand LESS_THAN = ComparisonOperand._(1, _omitEnumNames ? '' : 'LESS_THAN');
  static const ComparisonOperand LESS_THAN_OR_EQUAL = ComparisonOperand._(2, _omitEnumNames ? '' : 'LESS_THAN_OR_EQUAL');
  static const ComparisonOperand GREATER_THAN = ComparisonOperand._(3, _omitEnumNames ? '' : 'GREATER_THAN');
  static const ComparisonOperand GREATER_THAN_OR_EQUAL = ComparisonOperand._(4, _omitEnumNames ? '' : 'GREATER_THAN_OR_EQUAL');
  static const ComparisonOperand NOT_EQUAL = ComparisonOperand._(5, _omitEnumNames ? '' : 'NOT_EQUAL');

  static const $core.List<ComparisonOperand> values = <ComparisonOperand> [
    EQUAL,
    LESS_THAN,
    LESS_THAN_OR_EQUAL,
    GREATER_THAN,
    GREATER_THAN_OR_EQUAL,
    NOT_EQUAL,
  ];

  static final $core.Map<$core.int, ComparisonOperand> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ComparisonOperand? valueOf($core.int value) => _byValue[value];

  const ComparisonOperand._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

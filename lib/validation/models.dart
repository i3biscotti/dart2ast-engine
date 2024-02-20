//-----------------------------------------------
// Processing
//-----------------------------------------------
export 'models/ast_processing/scope_context.dart';
export 'models/ast_processing/class_sign.dart';
export 'models/ast_processing/function_sign.dart';
export 'models/ast_processing/variable_sign.dart';
export 'models/ast_processing/scope_object.dart';
export 'models/ast_processing/param_sign.dart';

//----------------------------------------------
// Models
//----------------------------------------------

// variables
export 'models/validation_errors/validation_error.dart';
export 'models/validation_errors/var_already_declared_error.dart';
export 'models/validation_errors/var_not_declared_error.dart';
export 'models/validation_errors/var_type_mismatch_error.dart';
export 'models/validation_errors/var_value_not_assigned.dart';
export 'models/validation_errors/var_immutable_error.dart';

// expressions
export 'models/validation_errors/expression_mismatch_error.dart';

// classes
export 'models/validation_errors/class_already_declared_error.dart';
export 'models/validation_errors/class_method_not_defined_error.dart';
export 'models/validation_errors/class_property_not_defined_error.dart';

// functions
export 'models/validation_errors/function_already_defined_error.dart';
export 'models/validation_errors/function_missing_return_error.dart';
export 'models/validation_errors/function_return_type_mismatch_error.dart';
export 'models/validation_errors/function_sign_mismatch_error.dart';
export 'models/validation_errors/function_not_defined_error.dart';
export 'models/validation_errors/function_return_not_allowed_error.dart';
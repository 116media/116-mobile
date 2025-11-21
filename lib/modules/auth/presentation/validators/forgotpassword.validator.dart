import '../../../../shared/presentation/validators/shared.validator.dart' show Validator;

/// Validation rules for forgot password form fields.
///
/// Provides reusable validation rules for email field in the forgot password flow.
/// All validators return validator functions compatible with Flutter's TextFormField.
class ForgotPasswordValidator {
  /// Validation rules for email field.
  ///
  /// Rules:
  /// - Required field
  /// - Must be valid email format
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: ForgotPasswordValidator.email("Email"),
  /// )
  /// ```
  static String? Function(String?) email(String fieldName) {
    return Validator.compose([Validator.required(fieldName), Validator.email(fieldName)]);
  }
}

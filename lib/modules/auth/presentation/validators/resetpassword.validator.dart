import '../../../../shared/presentation/validators/shared.validator.dart' show Validator;
import '../constants/auth.validation.constants.dart' show kPasswordMinLength;

/// Validation rules for reset password form fields.
///
/// Provides reusable validation rules for new password and confirm password fields.
/// All validators return validator functions compatible with Flutter's TextFormField.
class ResetPasswordValidator {
  /// Validation rules for new password field.
  ///
  /// Rules:
  /// - Required field
  /// - Minimum 6 characters
  /// - At least 1 uppercase letter
  /// - At least 1 lowercase letter
  /// - At least 1 digit (0-9)
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: ResetPasswordValidator.newPassword("New Password"),
  /// )
  /// ```
  static String? Function(String?) newPassword(String fieldName) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.min(fieldName, kPasswordMinLength),
      Validator.password(fieldName),
    ]);
  }

  /// Validation rules for confirm password field.
  ///
  /// Rules:
  /// - Required field
  /// - Must match new password field
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: ResetPasswordValidator.confirmPassword("Confirm Password", newPasswordController.text),
  /// )
  /// ```
  static String? Function(String?) confirmPassword(String fieldName, String? newPasswordValue) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.confirmPassword(fieldName, newPasswordValue),
    ]);
  }
}

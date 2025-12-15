import '../../../../modules/auth/presentation/constants/auth.validation.constants.dart'
    show kPasswordMinLength;
import '../../../../shared/presentation/validators/shared.validator.dart' show Validator;

/// Validation rules for change password form fields.
///
/// Provides reusable validation rules for old password, new password,
/// and confirm password fields. All validators return validator functions
/// compatible with Flutter's TextFormField.
class ChangePasswordValidator {
  /// Validation rules for old/current password field.
  ///
  /// Rules:
  /// - Required field
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: ChangePasswordValidator.oldPassword("Current Password"),
  /// )
  /// ```
  static String? Function(String?) oldPassword(String fieldName) {
    return Validator.required(fieldName);
  }

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
  ///   validator: ChangePasswordValidator.newPassword("New Password"),
  /// )
  /// ```
  static String? Function(String?) newPassword(String fieldName) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.min(fieldName, kPasswordMinLength),
      Validator.password(fieldName),
    ]);
  }

  /// Validation rules for confirm new password field.
  ///
  /// Rules:
  /// - Required field
  /// - Must match new password field
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: ChangePasswordValidator.confirmPassword("Confirm Password", newPasswordController.text),
  /// )
  /// ```
  static String? Function(String?) confirmPassword(String fieldName, String? newPasswordValue) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.confirmPassword(fieldName, newPasswordValue),
    ]);
  }
}

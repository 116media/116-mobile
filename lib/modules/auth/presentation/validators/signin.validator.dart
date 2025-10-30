import '../../../../shared/utils/validators/validator.util.dart';

/// Validation rules for sign-in form fields.
///
/// Provides reusable validation rules for credentials and password fields.
/// All validators return validator functions compatible with Flutter's TextFormField.
class SignInValidator {
  /// Validation rules for credentials field (email or username).
  ///
  /// Rules:
  /// - Required field
  /// - Between 3 and 20 characters
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: SignInValidator.credentials("Email or Username"),
  /// )
  /// ```
  static String? Function(String?) credentials(String fieldName) {
    return ValidatorUtil.compose([
      ValidatorUtil.required(fieldName),
      ValidatorUtil.minmax(fieldName, MinMaxLength(min: 3, max: 20)),
    ]);
  }

  /// Validation rules for password field.
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
  ///   validator: SignInValidator.password("Password"),
  /// )
  /// ```
  static String? Function(String?) password(String fieldName) {
    return ValidatorUtil.compose([
      ValidatorUtil.required(fieldName),
      (String? value) {
        if (value != null && value.isNotEmpty) {
          final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[\s\S]{6,}$');
          if (!passwordRegex.hasMatch(value)) {
            return '$fieldName must be at least 6 characters and contain 1 uppercase, 1 lowercase, 1 digit';
          }
        }
        return null;
      },
    ]);
  }
}

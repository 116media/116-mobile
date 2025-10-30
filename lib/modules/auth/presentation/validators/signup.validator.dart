import '../../../../shared/utils/validators/validator.util.dart';

/// Validation rules for sign-up form fields.
///
/// Provides reusable validation rules for email, username, and password fields.
/// All validators return validator functions compatible with Flutter's TextFormField.
class SignUpValidator {
  /// Validation rules for email field.
  ///
  /// Rules:
  /// - Required field
  /// - Must be valid email format
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: SignUpValidator.email("Email"),
  /// )
  /// ```
  static String? Function(String?) email(String fieldName) {
    return ValidatorUtil.compose([
      ValidatorUtil.required(fieldName),
      ValidatorUtil.email(fieldName),
    ]);
  }

  /// Validation rules for username field.
  ///
  /// Rules:
  /// - Required field
  /// - Between 3 and 20 characters
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: SignUpValidator.username("Username"),
  /// )
  /// ```
  static String? Function(String?) username(String fieldName) {
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
  ///   validator: SignUpValidator.password("Password"),
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

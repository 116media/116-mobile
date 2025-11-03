import '../../../../shared/validators/shared.validator.dart';
import '../constants/auth.validation.constants.dart';

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
    return Validator.compose([Validator.required(fieldName), Validator.email(fieldName)]);
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
    return Validator.compose([
      Validator.required(fieldName),
      Validator.minmax(fieldName, MinMaxLength(min: kUsernameMinLength, max: kUsernameMaxLength)),
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
    return Validator.compose([
      Validator.required(fieldName),
      Validator.min(fieldName, kPasswordMinLength),
      (String? value) {
        if (value != null && value.isNotEmpty) {
          final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[\s\S]+$');
          if (!passwordRegex.hasMatch(value)) {
            return '$fieldName must contain 1 uppercase, 1 lowercase, and 1 digit';
          }
        }
        return null;
      },
    ]);
  }
}

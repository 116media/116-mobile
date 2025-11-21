import '../../../../shared/presentation/validators/shared.validator.dart'
    show Validator, MinMaxLength;
import '../constants/auth.validation.constants.dart'
    show kPasswordMinLength, kUsernameMinLength, kUsernameMaxLength;

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
  ///   validator: SignInValidator.password("Password"),
  /// )
  /// ```
  static String? Function(String?) password(String fieldName) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.min(fieldName, kPasswordMinLength),
      Validator.password(fieldName),
    ]);
  }
}

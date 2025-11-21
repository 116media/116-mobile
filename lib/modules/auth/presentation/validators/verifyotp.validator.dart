import '../../../../shared/presentation/validators/shared.validator.dart'
    show Validator, MinMaxLength;
import '../constants/auth.validation.constants.dart' show kOtpLength;

/// Validation rules for OTP verification form fields.
///
/// Provides reusable validation rules for OTP field.
/// All validators return validator functions compatible with Flutter's TextFormField.
class VerifyOtpValidator {
  /// Validation rules for OTP field.
  ///
  /// Rules:
  /// - Required field
  /// - Must contain only numbers
  /// - Must be exactly 6 characters
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: VerifyOtpValidator.otp("OTP"),
  /// )
  /// ```
  static String? Function(String?) otp(String fieldName) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.numericOnly(fieldName),
      Validator.minmax(fieldName, const MinMaxLength(min: kOtpLength, max: kOtpLength)),
    ]);
  }
}

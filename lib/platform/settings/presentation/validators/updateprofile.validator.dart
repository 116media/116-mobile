import '../../../../modules/auth/presentation/constants/auth.validation.constants.dart'
    show kUsernameMinLength, kUsernameMaxLength;
import '../../../../shared/presentation/validators/shared.validator.dart'
    show Validator, MinMaxLength;

/// Validation rules for update profile form fields.
///
/// Provides reusable validation rules for username, and telephone fields.
/// All validators return validator functions compatible with Flutter's TextFormField.
class UpdateProfileValidator {
  /// Validation rules for username field.
  ///
  /// Rules:
  /// - Required field
  /// - Between 3 and 20 characters
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: UpdateProfileValidator.username("Username"),
  /// )
  /// ```
  static String? Function(String?) username(String fieldName) {
    return Validator.compose([
      Validator.required(fieldName),
      Validator.minmax(fieldName, MinMaxLength(min: kUsernameMinLength, max: kUsernameMaxLength)),
    ]);
  }

  /// Validation rules for the phone number field.
  ///
  /// Rules:
  /// - Optional field (empty value passes)
  /// - Uses [Validator.telephone] to validate national numbers with a provided [dialCodeValue]
  /// - Only digits allowed, max length enforced inside [Validator.telephone]
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: UpdateProfileValidator.phoneNumber("Phone", "+250"),
  /// )
  /// ```
  static String? Function(String?) phoneNumber(String fieldName, String? dialCodeValue) {
    return Validator.compose([Validator.telephone(fieldName, dialCodeValue)]);
  }
}

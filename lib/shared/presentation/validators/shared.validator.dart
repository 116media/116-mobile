/// Min/max length configuration for validation.
class MinMaxLength {
  final int? min;
  final int max;

  const MinMaxLength({this.min, required this.max});
}

/// Form validation result.
class ValidationResult {
  final bool isValid;
  final String? errorMessage;

  const ValidationResult({required this.isValid, this.errorMessage});

  factory ValidationResult.valid() => const ValidationResult(isValid: true);
  factory ValidationResult.invalid(String message) =>
      ValidationResult(isValid: false, errorMessage: message);
}

/// Form validation utility for reusable validation rules.
///
/// Provides common validation functions that can be composed
/// for form field validation with English error messages.
class Validator {
  /// Creates a required field validation function.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.required("Email")
  /// ```
  static String? Function(String?) required(String fieldName) {
    return (String? value) {
      if (value == null || value.trim().isEmpty) {
        return '$fieldName is required';
      }
      return null;
    };
  }

  /// Creates a minimum length validation function.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.min("Password", 6)
  /// ```
  static String? Function(String?) min(String fieldName, int minLength) {
    return (String? value) {
      if (value != null && value.length < minLength) {
        return '$fieldName must be at least $minLength characters';
      }
      return null;
    };
  }

  /// Creates a maximum length validation function.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.max("Username", 20)
  /// ```
  static String? Function(String?) max(String fieldName, int maxLength) {
    return (String? value) {
      if (value != null && value.length > maxLength) {
        return '$fieldName cannot exceed $maxLength characters';
      }
      return null;
    };
  }

  /// Creates a min/max length validation function.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.minmax("Password", MinMaxLength(min: 6, max: 20))
  /// ```
  static String? Function(String?) minmax(String fieldName, MinMaxLength length) {
    return (String? value) {
      if (value == null) return null;

      final isTooLong = value.length > length.max;
      final isTooShort = length.min != null && value.length < length.min!;

      if (isTooShort || isTooLong) {
        return '$fieldName must be between ${length.min} and ${length.max} characters';
      }
      return null;
    };
  }

  /// Creates an email validation function.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.email("Email")
  /// ```
  static String? Function(String?) email(String fieldName) {
    return (String? value) {
      if (value != null && value.isNotEmpty) {
        final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
        if (!emailRegex.hasMatch(value)) {
          return '$fieldName has an invalid format';
        }
      }
      return null;
    };
  }

  /// Creates a numeric-only validation function.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.numericOnly("Phone")
  /// ```
  static String? Function(String?) numericOnly(String fieldName) {
    return (String? value) {
      if (value != null && value.isNotEmpty) {
        final numericRegex = RegExp(r'^[0-9]+$');
        if (!numericRegex.hasMatch(value)) {
          return '$fieldName must contain only numbers';
        }
      }
      return null;
    };
  }

  /// Creates a password strength validation function.
  ///
  /// Rules:
  /// - At least 1 uppercase letter
  /// - At least 1 lowercase letter
  /// - At least 1 digit (0-9)
  /// - Minimum length enforced via separate min() validator
  ///
  /// Example:
  /// ```dart
  /// validator: Validator.compose([
  ///   Validator.required("Password"),
  ///   Validator.min("Password", 6),
  ///   Validator.password("Password"),
  /// ])
  /// ```
  static String? Function(String?) password(String fieldName) {
    return (String? value) {
      if (value != null && value.isNotEmpty) {
        final passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[\s\S]+$');
        if (!passwordRegex.hasMatch(value)) {
          return '$fieldName must contain 1 uppercase, 1 lowercase, and 1 digit';
        }
      }
      return null;
    };
  }

  /// Creates a password confirmation validation function.
  ///
  /// Validates that the confirmation password matches the original password.
  ///
  /// Example:
  /// ```dart
  /// validator: Validator.compose([
  ///   Validator.required("Confirm Password"),
  ///   Validator.confirmPassword("Confirm Password", passwordController.text),
  /// ])
  /// ```
  static String? Function(String?) confirmPassword(String fieldName, String? passwordValue) {
    return (String? value) {
      if (value != null && value.isNotEmpty && value != passwordValue) {
        return 'Passwords do not match';
      }
      return null;
    };
  }

  /// Composes multiple validation functions into one.
  ///
  /// Runs each validator in sequence and returns the first error found.
  ///
  /// Example:
  /// ```dart
  /// validator: ValidatorUtil.compose([
  ///   ValidatorUtil.required("Email"),
  ///   ValidatorUtil.email("Email"),
  /// ])
  /// ```
  static String? Function(String?) compose(List<String? Function(String?)> validators) {
    return (String? value) {
      for (final validator in validators) {
        final error = validator(value);
        if (error != null) return error;
      }
      return null;
    };
  }
}

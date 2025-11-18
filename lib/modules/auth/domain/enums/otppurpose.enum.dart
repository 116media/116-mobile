/// Defines the different purposes for which an OTP can be used.
///
/// Domain enum representing the purpose of OTP verification including
/// email verification, password reset, two-factor authentication, and
/// account recovery.
///
/// Each enum value has a PascalCase representation that matches the
/// C# backend enum format for API communication.
enum OtpPurpose {
  emailVerification("EmailVerification"),
  passwordReset("PasswordReset"),
  twoFactorAuthentication("TwoFactorAuthentication"),
  accountRecovery("AccountRecovery");

  final String value;
  const OtpPurpose(this.value);
}

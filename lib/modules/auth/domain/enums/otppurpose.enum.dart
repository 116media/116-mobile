/// Defines the different purposes for which an OTP can be used.
///
/// Domain enum representing the purpose of OTP verification including
/// email verification, password reset, two-factor authentication, and
/// account recovery.
enum OtpPurpose { emailVerification, passwordReset, twoFactorAuthentication, accountRecovery }

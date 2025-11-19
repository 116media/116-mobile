import '../../../../api/client/api_116.swagger.dart'
    show
        PublicForgotPasswordResponse,
        PublicLoginResponse,
        PublicResendOtpResponse,
        PublicResetPasswordResponse,
        PublicSignUpResponse,
        PublicVerifyOtpResponse;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../../presentation/models/resetpassword.credentials.model.dart'
    show ResetPasswordCredentialsModel;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Remote data source for authentication operations.
///
/// Defines the contract for making authentication-related API calls
/// to the remote backend server.
///
/// **Exception Handling:**
/// All methods may throw:
/// - [ServerException] if the server returns an error response
/// - [UnknownException] if network is unreachable or other unexpected errors occur
abstract class IAuthRemoteDataSource {
  /// Authenticates a user with their credentials.
  ///
  /// Calls the PublicLogin API endpoint with user credentials.
  ///
  /// **Returns:** [PublicLoginResponse] containing auth token and user data on success.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response (e.g., invalid credentials)
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicLoginResponse> signIn(SignInCredentialsModel credentials);

  /// Registers a new user account with the provided information.
  ///
  /// Calls the PublicSignUp API endpoint to create a new user account.
  ///
  /// **Returns:** [PublicSignUpResponse] containing auth token and user data on success.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response (e.g., email already exists)
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicSignUpResponse> signUp(SignUpCredentialsModel credentials);

  /// Verifies a user's email address using the provided OTP code.
  ///
  /// Calls the PublicVerifyOtp API endpoint to verify the OTP code for the given purpose.
  ///
  /// **Returns:** [PublicVerifyOtpResponse] indicating verification success or failure.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response (e.g., invalid or expired OTP)
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicVerifyOtpResponse> verifyOtp(VerifyOtpCredentialsModel credentials);

  /// Resends a new OTP verification code to the user's email.
  ///
  /// Calls the PublicResendOtp API endpoint to generate and send a new OTP code.
  ///
  /// **Returns:** [PublicResendOtpResponse] with success status.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicResendOtpResponse> resendOtp(ResendOtpCredentialsModel credentials);

  /// Initiates a password reset flow by sending an OTP to the user's email.
  ///
  /// Calls the PublicForgotPassword API endpoint to generate and send a password reset OTP.
  ///
  /// **Returns:** [PublicForgotPasswordResponse] with success status and email.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response (e.g., email not found)
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicForgotPasswordResponse> forgotPassword(ForgotPasswordCredentialsModel credentials);

  /// Resets user password using OTP code and new password.
  ///
  /// Calls the PublicResetPassword API endpoint to reset the password.
  ///
  /// **Returns:** [PublicResetPasswordResponse] with success status.
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response (e.g., invalid OTP)
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  Future<PublicResetPasswordResponse> resetPassword(ResetPasswordCredentialsModel credentials);
}

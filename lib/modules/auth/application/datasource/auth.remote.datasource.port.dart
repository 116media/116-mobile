import '../../../../api/client/api_116.swagger.dart'
    show PublicLoginResponse, PublicSignUpResponse, PublicVerifyOtpResponse;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Remote data source for authentication operations.
///
/// Defines the contract for making authentication-related API calls
/// to the remote backend server.
abstract class IAuthRemoteDataSource {
  /// Authenticates a user with their credentials.
  ///
  /// Returns [PublicLoginResponse] containing the access token and user data.
  Future<PublicLoginResponse> signIn(SignInCredentialsModel credentials);

  /// Registers a new user account.
  ///
  /// Returns [PublicSignUpResponse] with the created user information.
  Future<PublicSignUpResponse> signUp(SignUpCredentialsModel credentials);

  /// Verifies a user's account using OTP (One-Time Password).
  ///
  /// Returns [PublicVerifyOtpResponse] with verification status and updated user data.
  Future<PublicVerifyOtpResponse> verifyOtp(VerifyOtpCredentialsModel credentials);
}

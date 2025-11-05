import '../../../../../api/client/api_116.swagger.dart'
    show PublicLoginResponse, PublicSignUpResponse;
import '../../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;

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
}

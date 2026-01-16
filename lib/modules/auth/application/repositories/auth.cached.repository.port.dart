import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../../domain/entities/auth-response/auth.response.entity.dart' show AuthResponseEntity;
import '../../domain/entities/signout-response/signout.response.entity.dart'
    show SignOutResponseEntity;
import '../../domain/entities/verifyotp-response/verifyotp.response.entity.dart'
    show VerifyOtpResponseEntity;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Repository port (interface) for authentication operations that benefit from caching.
///
/// Contains operations that update user authentication state which should be cached locally.
abstract class IAuthCachedRepository {
  /// Authenticates a user using the [SignInCredentialsModel].
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signIn(SignInCredentialsModel credentials);

  /// Registers a new user account using the [SignUpCredentialsModel].
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signUp(SignUpCredentialsModel credentials);

  /// Verifies OTP code for email verification using the [VerifyOtpCredentialsModel].
  ///
  /// Returns [Right] with [VerifyOtpResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, VerifyOtpResponseEntity>> verifyOtp(VerifyOtpCredentialsModel credentials);

  /// Authenticates user with Google using OAuth.
  ///
  /// Orchestrates Google sign-in flow by getting profile from Google SDK
  /// and sending it to backend for authentication.
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signInWithGoogle();

  /// Authenticates user with Facebook using OAuth.
  ///
  /// Orchestrates Facebook sign-in flow by getting profile from Facebook SDK
  /// and sending it to backend for authentication.
  ///
  /// Returns [Right] with [AuthResponseEntity] on success,
  /// or [Left] with [Failure] on error.
  Future<Either<Failure, AuthResponseEntity>> signInWithFacebook();

  /// Signs out the current user by invalidating server session and clearing local data.
  ///
  /// Retrieves refresh token from secure storage, sends it to backend to invalidate
  /// the session, then removes authentication tokens and user profile data from local storage.
  ///
  /// Returns [Right] with [SignOutResponseEntity] on success,
  /// or [Left] with [Failure] if operation fails.
  Future<Either<Failure, SignOutResponseEntity>> signOut();
}

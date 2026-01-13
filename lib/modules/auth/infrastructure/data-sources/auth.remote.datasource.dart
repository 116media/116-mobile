import 'package:chopper/chopper.dart' show Response;

import '../../../../api/client/api_116.swagger.dart'
    show
        Api116,
        PublicForgotPasswordRequest,
        PublicForgotPasswordResponse,
        PublicLoginRequest,
        PublicLoginResponse,
        PublicResendOtpRequest,
        PublicResendOtpResponse,
        PublicResetPasswordRequest,
        PublicResetPasswordResponse,
        PublicSignUpResponse,
        PublicSignUpRequest,
        PublicSocialLoginRequest,
        PublicSocialLoginResponse,
        PublicVerifyOtpRequest,
        PublicVerifyOtpResponse,
        PublicSignOutRequest,
        PublicSignOutResponse;
import '../../../../shared/infrastructure/exceptions/remote/server.exception.dart'
    show ServerException;
import '../../../../shared/infrastructure/exceptions/remote/unknown.exception.dart'
    show UnknownException;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/auth.remote.datasource.port.dart' show IAuthRemoteDataSource;
import '../../domain/entities/social-profile/social.profile.entity.dart' show SocialProfileEntity;
import '../../domain/enums/authprovider.enum.dart' show AuthProvider;
import '../../presentation/models/forgotpassword.credentials.model.dart'
    show ForgotPasswordCredentialsModel;
import '../../presentation/models/resendotp.credentials.model.dart' show ResendOtpCredentialsModel;
import '../../presentation/models/resetpassword.credentials.model.dart'
    show ResetPasswordCredentialsModel;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Implementation of [AuthRemoteDataSource] for authentication operations via REST API.
///
/// Handles communication with the backend auth endpoints using the
/// generated [Api116] client. Converts HTTP error responses to typed exceptions
/// using [ProblemMapper]. Network errors (SocketException, timeouts, etc.) are
/// caught and converted to [UnknownException].
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final Api116 _apiClient;

  const AuthRemoteDataSource(this._apiClient);

  @override
  Future<PublicLoginResponse> signIn(SignInCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicLogin(
        body: PublicLoginRequest(credentials: model.credentials, password: model.password),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicSignUpResponse> signUp(SignUpCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicSignUp(
        body: PublicSignUpRequest(
          email: model.email,
          userName: model.userName,
          password: model.password,
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicVerifyOtpResponse> verifyOtp(VerifyOtpCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicVerifyOtp(
        body: PublicVerifyOtpRequest(
          code: model.otp,
          email: model.email,
          purpose: model.purpose.value,
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicResendOtpResponse> resendOtp(ResendOtpCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicResendOtp(
        body: PublicResendOtpRequest(email: model.email, purpose: model.purpose.value),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicForgotPasswordResponse> forgotPassword(ForgotPasswordCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicForgotPassword(
        body: PublicForgotPasswordRequest(email: model.email),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicResetPasswordResponse> resetPassword(ResetPasswordCredentialsModel model) async {
    try {
      final response = await _apiClient.PublicResetPassword(
        body: PublicResetPasswordRequest(
          code: model.code,
          email: model.email,
          newPassword: model.newPassword,
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicSocialLoginResponse> signInWithGoogle(SocialProfileEntity profile) async {
    try {
      final response = await _apiClient.PublicSocialLogin(
        body: PublicSocialLoginRequest(
          email: profile.email,
          avatarUrl: profile.photoUrl,
          provider: AuthProvider.google.value,
          userName: profile.displayName ?? profile.email.split('@')[0],
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  @override
  Future<PublicSocialLoginResponse> signInWithFacebook(SocialProfileEntity profile) async {
    try {
      final response = await _apiClient.PublicSocialLogin(
        body: PublicSocialLoginRequest(
          email: profile.email,
          avatarUrl: profile.photoUrl,
          provider: AuthProvider.facebook.value,
          userName: profile.displayName ?? profile.email.split('@')[0],
        ),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }

  /// Signs out the current user by calling the PublicSignOut API endpoint.
  ///
  /// Makes a request to the backend to invalidate the user's session.
  /// On successful response, returns [PublicSignOutResponse] with success status.
  ///
  /// **Parameters:**
  /// - `refreshToken` - The refresh token to invalidate on the server
  ///
  /// **Throws:**
  /// - [ServerException] if the server returns an error response (e.g., invalid token)
  /// - [UnknownException] if network is unreachable or other unexpected errors occur
  @override
  Future<PublicSignOutResponse> signOut(String refreshToken) async {
    try {
      final response = await _apiClient.PublicSignOut(
        body: PublicSignOutRequest(refreshToken: refreshToken),
      );

      if (response.isSuccessful) {
        return response.body!;
      } else {
        throw ProblemMapper.toException(response as Response);
      }
    } on ServerException {
      rethrow;
    } catch (_) {
      throw UnknownException();
    }
  }
}

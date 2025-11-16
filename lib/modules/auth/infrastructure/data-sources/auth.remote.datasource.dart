import 'package:chopper/chopper.dart' show Response;

import '../../../../api/client/api_116.swagger.dart'
    show
        Api116,
        PublicLoginRequest,
        PublicLoginResponse,
        PublicSignUpResponse,
        PublicSignUpRequest,
        PublicVerifyOtpRequest,
        PublicVerifyOtpResponse;
import '../../../../shared/infrastructure/mappers/problem.mapper.dart' show ProblemMapper;
import '../../application/data-sources/auth.remote.datasource.port.dart' show IAuthRemoteDataSource;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;
import '../../presentation/models/verifyotp.credentials.model.dart' show VerifyOtpCredentialsModel;

/// Implementation of [AuthRemoteDataSource] for authentication operations via REST API.
///
/// Handles communication with the backend auth endpoints using the
/// generated [Api116] client. Converts HTTP error responses to typed exceptions
/// using [ProblemMapper].
class AuthRemoteDataSourceImpl implements IAuthRemoteDataSource {
  final Api116 _apiClient;

  const AuthRemoteDataSourceImpl(this._apiClient);

  @override
  Future<PublicLoginResponse> signIn(SignInCredentialsModel model) async {
    final response = await _apiClient.PublicLogin(
      body: PublicLoginRequest(credentials: model.credentials, password: model.password),
    );

    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw ProblemMapper.toException(response as Response);
    }
  }

  @override
  Future<PublicSignUpResponse> signUp(SignUpCredentialsModel model) async {
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
  }

  @override
  Future<PublicVerifyOtpResponse> verifyOtp(VerifyOtpCredentialsModel model) async {
    final response = await _apiClient.PublicVerifyOtp(
      body: PublicVerifyOtpRequest(
        email: model.email,
        code: model.otp,
        purpose: model.purpose.name,
      ),
    );

    if (response.isSuccessful) {
      return response.body!;
    } else {
      throw ProblemMapper.toException(response as Response);
    }
  }
}

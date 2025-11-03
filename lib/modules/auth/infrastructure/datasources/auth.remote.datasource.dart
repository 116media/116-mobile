import 'package:chopper/chopper.dart';

import '../../../../api/client/api_116.swagger.dart'
    show Api116, PublicLoginRequest, PublicLoginResponse, PublicSignUpResponse, PublicSignUpRequest;
import '../../../../core/infrastructure/exceptions/problem.mapper.g.dart' show ProblemMapper;
import '../../application/datasource/remote/auth.remote.datasource.dart' show IAuthRemoteDataSource;
import '../../presentation/models/signin.credentials.model.dart' show SignInCredentialsModel;
import '../../presentation/models/signup.credentials.model.dart' show SignUpCredentialsModel;

/// Implementation of [AuthRemoteDataSource] for authentication operations via REST API.
///
/// Handles communication with the backend auth endpoints using the
/// generated [Api116] client. Converts HTTP error responses to typed exceptions
/// using [ProblemMapper].
class AuthRemoteDataSourceImpl implements IAuthRemoteDataSource {
  final Api116 _apiClient;

  const AuthRemoteDataSourceImpl(this._apiClient);

  @override
  Future<PublicLoginResponse> signIn(SignInCredentialsModel credentials) async {
    try {
      final response = await _apiClient.PublicLogin(
        body: PublicLoginRequest(
          credentials: credentials.credentials,
          password: credentials.password,
        ),
      );

      return response.body!;
    } on Response catch (response) {
      throw ProblemMapper.toException(response);
    }
  }

  @override
  Future<PublicSignUpResponse> signUp(SignUpCredentialsModel credentials) async {
    try {
      final response = await _apiClient.PublicSignUp(
        body: PublicSignUpRequest(
          email: credentials.email,
          userName: credentials.userName,
          password: credentials.password,
        ),
      );

      return response.body!;
    } on Response catch (response) {
      throw ProblemMapper.toException(response);
    }
  }
}

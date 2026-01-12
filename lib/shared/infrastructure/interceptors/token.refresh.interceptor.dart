import 'dart:async' show FutureOr;
import 'package:chopper/chopper.dart' show Chain, Interceptor, Response, applyHeader;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:http_status/http_status.dart' show HttpStatusCode;

import '../../../platform/session/application/repositories/session.token.repository.port.dart'
    show ISessionTokenRepository;
import '../mappers/problem.mapper.dart' show ProblemMapper;

/// Interceptor that refreshes expired access tokens automatically.
///
/// Triggers on `401 Unauthorized` responses with
/// `"AccessTokenExpiryException"`, refreshes the token using
/// [ISessionTokenCachedRepository], and retries the original request with
/// the new access token.
///
/// **Flow:**
/// 1. Request fails with 401 (expired access token)
/// 2. Refresh token is requested and stored
/// 3. Original request is retried with the new access token
///
/// **Token Rotation:**
/// After a successful refresh, the old refresh token becomes invalid.
///
/// **Failure Handling:**
/// If refresh fails, is invalid/expired, or a network error occurs,
/// the original 401 response is returned.
///
/// **Note:**
/// This interceptor should run AFTER [AuthInterceptor] so the initial
/// request includes the (possibly expired) access token.
class TokenRefreshInterceptor implements Interceptor {
  final GetIt sl;

  TokenRefreshInterceptor(this.sl);

  static const _retryHeader = 'x-token-refresh-retry';

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final sessionTokenRepository = sl<ISessionTokenRepository>();

    final request = chain.request;
    final response = await chain.proceed(request);

    if (!_shouldRefreshToken(response)) return response;
    if (request.headers[_retryHeader] == 'true') return response;

    try {
      final refreshResult = await sessionTokenRepository.refreshToken();

      if (!refreshResult.isRight()) return response;

      final tokenResult = refreshResult.getOrElse((_) => throw StateError('Unreachable'));

      final newAccessToken = tokenResult.tokenResponse.accessToken;
      if (newAccessToken.isEmpty) return response;

      final retryRequest = applyHeader(
        request,
        'Authorization',
        'Bearer $newAccessToken',
      ).copyWith(headers: {...request.headers, _retryHeader: 'true'});

      return chain.proceed(retryRequest);
    } catch (_) {
      return response;
    }
  }

  bool _shouldRefreshToken<BodyType>(Response<BodyType> response) {
    if (response.statusCode != HttpStatusCode.unauthorized) {
      return false;
    }

    try {
      final exception = ProblemMapper.toException(response);
      return exception.title == 'AccessTokenExpiryException';
    } catch (_) {
      return false;
    }
  }
}

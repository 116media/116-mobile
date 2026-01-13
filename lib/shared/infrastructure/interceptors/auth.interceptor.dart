import 'dart:async' show FutureOr;
import 'package:chopper/chopper.dart' show Chain, Interceptor, Response, applyHeader;

import '../../../platform/session/application/data-sources/session.token.secure.datasource.port.dart'
    show ISessionTokenSecureDataSource;

/// Interceptor that adds JWT bearer token to all API requests.
///
/// Retrieves the access token from secure storage via [ISessionTokenSecureDataSource.getAccessToken]
/// and adds it as an Authorization header with Bearer scheme. Uses hardware-backed
/// secure storage for token retrieval.
///
/// **Header:**
/// - `Authorization`: Bearer {accessToken}
class AuthInterceptor implements Interceptor {
  final ISessionTokenSecureDataSource _sessionTokenSecureDataSource;

  const AuthInterceptor(this._sessionTokenSecureDataSource);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;

    try {
      final accessToken = await _sessionTokenSecureDataSource.getAccessToken();

      if (accessToken != null && accessToken.isNotEmpty) {
        final updatedRequest = applyHeader(request, 'Authorization', 'Bearer $accessToken');
        return chain.proceed(updatedRequest);
      }

      return chain.proceed(request);
    } catch (_) {
      return chain.proceed(request);
    }
  }
}

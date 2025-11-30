import 'dart:async' show FutureOr;
import 'package:chopper/chopper.dart';

import '../../../modules/auth/application/data-sources/auth.local.datasource.port.dart'
    show IAuthLocalDataSource;

/// Interceptor that adds JWT bearer token to all API requests.
///
/// Retrieves the token from local storage via [IAuthLocalDataSource.getToken]
/// and adds it as an Authorization header with Bearer scheme.
class AuthInterceptor implements Interceptor {
  final IAuthLocalDataSource _localDataSource;

  AuthInterceptor(this._localDataSource);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;

    try {
      final token = await _localDataSource.getToken();

      if (token != null && token.isNotEmpty) {
        final updatedRequest = applyHeader(request, 'Authorization', 'Bearer $token');
        return chain.proceed(updatedRequest);
      }

      return chain.proceed(request);
    } catch (_) {
      // If token retrieval fails, continue without auth header
      return chain.proceed(request);
    }
  }
}

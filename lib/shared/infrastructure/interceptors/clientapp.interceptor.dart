import 'dart:async' show FutureOr;

import 'package:chopper/chopper.dart' show Chain, Interceptor, Response, applyHeader;

import '../../application/configs/env.config.dart' show EnvConfig;

/// Interceptor that adds Client-App header to all API requests.
///
/// Adds the `Client-App` header to identify which application is consuming
/// the API endpoints. The value is read from environment configuration (CLIENT_APP).
///
/// **Header:**
/// - `Client-App`: Application identifier (e.g., "MobileApp", "WebApp", "Dashboard")
class ClientAppInterceptor implements Interceptor {
  const ClientAppInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;
    final clientApp = EnvConfig.clientApp;
    final updatedRequest = applyHeader(request, 'Client-App', clientApp);

    return chain.proceed(updatedRequest);
  }
}

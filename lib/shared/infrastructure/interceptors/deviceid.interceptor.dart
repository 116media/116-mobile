import 'dart:async' show FutureOr;

import 'package:chopper/chopper.dart' show Chain, Interceptor, Response, applyHeader;

import '../../../platform/session/application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;

/// Interceptor that adds X-Device-Id header to all API requests.
///
/// Retrieves the device ID from secure storage via [IDeviceSecureDataSource.getDeviceId]
/// and adds it as an X-Device-Id header. The device ID is a UUID v4 generated
/// on first app launch and persists across sessions.
///
/// **Header:**
/// - `X-Device-Id`: UUID v4 string identifying this device
class DeviceIdInterceptor implements Interceptor {
  final IDeviceSecureDataSource _deviceSecureDataSource;

  const DeviceIdInterceptor(this._deviceSecureDataSource);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;

    try {
      final deviceId = await _deviceSecureDataSource.getDeviceId();

      if (deviceId != null && deviceId.isNotEmpty) {
        final updatedRequest = applyHeader(request, 'X-Device-Id', deviceId);
        return chain.proceed(updatedRequest);
      }

      return chain.proceed(request);
    } catch (_) {
      return chain.proceed(request);
    }
  }
}

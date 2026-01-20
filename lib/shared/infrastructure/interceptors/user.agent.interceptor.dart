import 'dart:async' show FutureOr;

import 'package:chopper/chopper.dart' show Chain, Interceptor, Response, applyHeader;

import '../../../platform/device-info/application/data-sources/device.info.datasource.port.dart'
    show IDeviceInfoDataSource;

/// Interceptor that adds User-Agent header to all API requests.
///
/// Retrieves device information via [IDeviceInfoDataSource.getDeviceInfo]
/// and adds the user agent string as a User-Agent header. The backend parses
/// this header using wangkanai.detection to determine device type and platform.
///
/// **Header:**
/// - `User-Agent`: {appName}/{appVersion} ({deviceModel}; {platform} {osVersion})
class UserAgentInterceptor implements Interceptor {
  final IDeviceInfoDataSource _deviceInfoDataSource;

  const UserAgentInterceptor(this._deviceInfoDataSource);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;

    try {
      final deviceInfo = await _deviceInfoDataSource.getDeviceInfo();
      final userAgent = deviceInfo.userAgent;

      if (userAgent.isNotEmpty) {
        final updatedRequest = applyHeader(request, 'User-Agent', userAgent);
        return chain.proceed(updatedRequest);
      }

      return chain.proceed(request);
    } catch (_) {
      return chain.proceed(request);
    }
  }
}

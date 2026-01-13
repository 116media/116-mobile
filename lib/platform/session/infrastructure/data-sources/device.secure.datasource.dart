import 'package:flutter_secure_storage/flutter_secure_storage.dart' show FlutterSecureStorage;

import '../../application/data-sources/device.secure.datasource.port.dart'
    show IDeviceSecureDataSource;
import '../constants/secure.storage.constants.dart' show kDeviceIdKey;

/// Implementation of [IDeviceSecureDataSource] using flutter_secure_storage.
///
/// Stores device identifier in platform-specific secure storage
///
/// **Storage Key:**
/// - `device_id` - UUID v4 string identifying this device
class DeviceSecureDataSource implements IDeviceSecureDataSource {
  final FlutterSecureStorage _secureStorage;

  const DeviceSecureDataSource(this._secureStorage);

  @override
  Future<void> setDeviceId(String deviceId) async {
    await _secureStorage.write(key: kDeviceIdKey, value: deviceId);
  }

  @override
  Future<String?> getDeviceId() async {
    return await _secureStorage.read(key: kDeviceIdKey);
  }

  @override
  Future<void> clearDeviceId() async {
    await _secureStorage.delete(key: kDeviceIdKey);
  }
}

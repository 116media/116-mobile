import '../../domain/entities/device-info/device.info.entity.dart' show DeviceInfoEntity;

/// Port for device information data source.
///
/// Defines the contract for retrieving device information including device type,
/// platform, and user agent string. Implementation should use platform-specific
/// APIs to gather device details.
abstract class IDeviceInfoDataSource {
  /// Gets comprehensive device information.
  ///
  /// Returns a [DeviceInfoEntity] containing device type, platform type,
  /// and user agent string. This information is used for API requests
  /// to help the backend identify the client device.
  Future<DeviceInfoEntity> getDeviceInfo();
}

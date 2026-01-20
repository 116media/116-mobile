import 'package:device_info_plus/device_info_plus.dart' show DeviceInfoPlugin;
import 'package:get_it/get_it.dart' show GetIt;
import 'package:package_info_plus/package_info_plus.dart' show PackageInfo;

import '../../application/data-sources/device.info.datasource.port.dart' show IDeviceInfoDataSource;
import '../data-sources/device.info.datasource.dart' show DeviceInfoDataSource;

/// Registers device info dependencies in the service locator.
///
/// Note: IpCountryLookup is registered in the main service locator
/// before this function is called, so it can be shared across features.
Future<void> registerDeviceInfoDependencies(GetIt sl) async {
  sl.registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());

  // PackageInfo requires async initialization
  final packageInfo = await PackageInfo.fromPlatform();
  sl.registerSingleton<PackageInfo>(packageInfo);

  // Data source
  sl.registerSingleton<IDeviceInfoDataSource>(
    DeviceInfoDataSource(sl<DeviceInfoPlugin>(), sl<PackageInfo>()),
  );
}

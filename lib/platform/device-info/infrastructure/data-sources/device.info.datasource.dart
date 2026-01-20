import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../application/data-sources/device.info.datasource.port.dart';
import '../../domain/entities/device-info/device.info.entity.dart';
import '../../domain/enums/device.type.enum.dart';
import '../../domain/enums/platform.type.enum.dart';
import '../constants/device.info.constants.dart';

/// Implementation of device information data source.
///
/// Provides device type detection and generates Mozilla-compliant user-agent strings
/// for iOS and Android platforms. The user-agent format follows the standard expected
/// by wangkanai.detection library for proper platform and device type parsing.
///
/// Supports detection of:
/// - **Device types**: mobile, tablet, watch, TV, car
/// - **Platforms**: iOS, iPadOS, Android
class DeviceInfoDataSource implements IDeviceInfoDataSource {
  final PackageInfo _packageInfo;
  final DeviceInfoPlugin _deviceInfo;

  const DeviceInfoDataSource(this._deviceInfo, this._packageInfo);

  @override
  Future<DeviceInfoEntity> getDeviceInfo() async {
    if (Platform.isIOS) return _ios();
    if (Platform.isAndroid) return _android();

    return const DeviceInfoEntity(
      deviceType: DeviceType.unknown,
      platformType: PlatformType.unknown,
      userAgent: 'Unknown',
    );
  }

  /// Builds device information for Android platform.
  ///
  /// Detects device type based on system features and model name, then generates
  /// a Mozilla-compliant user-agent string following the standard format expected
  /// by wangkanai.detection.
  Future<DeviceInfoEntity> _android() async {
    final info = await _deviceInfo.androidInfo;
    final deviceType = _androidDeviceType(info);

    return DeviceInfoEntity(
      deviceType: deviceType,
      platformType: PlatformType.android,
      userAgent: _androidUserAgent(info, deviceType),
    );
  }

  /// Ordered list of Android device type detection rules.
  ///
  /// Rules are evaluated in order:
  /// 1. Watch - via `android.hardware.type.watch` feature
  /// 2. TV - via `android.software.leanback` feature
  /// 3. Car - via `android.hardware.type.automotive` feature
  /// 4. Tablet - via model name containing "tablet" or "tab"
  /// 5. Mobile - fallback default
  static final List<_AndroidRule> _androidRules = [
    _AndroidRule.feature(kAndroidFeatureWatch, DeviceType.watch),
    _AndroidRule.feature(kAndroidFeatureLeanback, DeviceType.tv),
    _AndroidRule.feature(kAndroidFeatureAutomotive, DeviceType.car),
    _AndroidRule.tablet(DeviceType.tablet),
  ];

  /// Detects Android device type using rule-based matching.
  ///
  /// Evaluates rules in priority order and returns the first matching type.
  /// Falls back to [DeviceType.mobile] if no rules match.
  DeviceType _androidDeviceType(AndroidDeviceInfo info) {
    return _androidRules
        .firstWhere(
          (rule) => rule.matches(info),
          orElse: () => const _AndroidRule.fallback(DeviceType.mobile),
        )
        .type;
  }

  /// Builds Mozilla-compliant user-agent string for Android.
  ///
  /// The "Mobile" keyword is included for phones but **omitted for tablets**,
  /// which is the standard convention for wangkanai.detection to properly
  /// identify tablet devices.
  String _androidUserAgent(AndroidDeviceInfo info, DeviceType deviceType) {
    final mobile = deviceType == DeviceType.tablet ? '' : 'Mobile ';

    return 'Mozilla/5.0 (Linux; Android ${info.version.release}; ${info.model}) '
        'AppleWebKit/537.36 (KHTML, like Gecko) '
        '${_packageInfo.appName}/${_packageInfo.version} '
        '$mobile/537.36';
  }

  /// Builds device information for iOS platform.
  ///
  /// Detects device type based on machine identifier and model name, then generates
  /// a Mozilla-compliant user-agent string following the iOS standard format.
  /// Automatically determines platform type (iOS vs iPadOS) based on device type.
  Future<DeviceInfoEntity> _ios() async {
    final info = await _deviceInfo.iosInfo;
    final deviceType = _iosDeviceType(info);

    return DeviceInfoEntity(
      deviceType: deviceType,
      platformType: deviceType == DeviceType.tablet ? PlatformType.ipadOs : PlatformType.ios,
      userAgent: _iosUserAgent(info, deviceType),
    );
  }

  /// Ordered list of iOS device type detection rules.
  ///
  /// Rules are evaluated in order:
  /// 1. Watch - via machine identifier starting with "Watch"
  /// 2. Apple TV - via machine identifier starting with "AppleTV"
  /// 3. iPad - via machine identifier starting with "iPad"
  /// 4. iPhone - via machine identifier starting with "iPhone"
  /// 5. iPod - via machine identifier starting with "iPod"
  /// 6. Fallback model checks for "ipad", "iphone", "ipod" in model name
  /// 7. Unknown - if no rules match
  static final List<_IosRule> _iosRules = [
    ..._buildIosRules(
      [kIosDeviceWatch, kIosDeviceAppleTV, kIosDeviceIPad, kIosDeviceIPhone, kIosDeviceIPod],
      [DeviceType.watch, DeviceType.tv, DeviceType.tablet, DeviceType.mobile, DeviceType.mobile],
    ),
  ];

  static List<_IosRule> _buildIosRules(List<String> machines, List<DeviceType> types) {
    final rules = <_IosRule>[];

    for (var i = 0; i < machines.length; i++) {
      final type = types[i];
      final machine = machines[i];

      rules.add(_IosRule.machine(machine, type));
      rules.add(_IosRule.model(machine.toLowerCase(), type));
    }

    return rules;
  }

  /// Detects iOS device type using rule-based matching.
  ///
  /// Evaluates rules in priority order and returns the first matching type.
  /// Falls back to [DeviceType.unknown] if no rules match.
  DeviceType _iosDeviceType(IosDeviceInfo info) {
    return _iosRules
        .firstWhere(
          (rule) => rule.matches(info),
          orElse: () => const _IosRule.fallback(DeviceType.unknown),
        )
        .type;
  }

  /// Builds Mozilla-compliant user-agent string for iOS.
  ///
  /// The OS version uses underscores instead of dots (e.g., `18_2` instead of `18.2`)
  String _iosUserAgent(IosDeviceInfo info, DeviceType deviceType) {
    final systemVersion = info.systemVersion.replaceAll('.', '_');
    final deviceName = deviceType == DeviceType.tablet ? 'iPad' : 'iPhone';
    final cpu = deviceType == DeviceType.tablet ? 'CPU OS' : 'CPU iPhone OS';

    return 'Mozilla/5.0 ($deviceName; $cpu $systemVersion like Mac OS X) '
        'AppleWebKit/605.1.15 (KHTML, like Gecko) '
        '${_packageInfo.appName}/${_packageInfo.version} '
        'Mobile/15E148';
  }
}

/// Rule-based matcher for Android device type detection.
///
/// Encapsulates a matching predicate and the device type it represents.
/// Supports multiple matching strategies:
/// - **Feature-based**: Checks Android system features (e.g., watch, TV, automotive)
/// - **Model-based**: Checks device model name for keywords (e.g., "tablet")
/// - **Fallback**: Always returns false, used as default when no rules match
class _AndroidRule {
  final DeviceType type;
  final bool Function(AndroidDeviceInfo) matches;

  const _AndroidRule(this.matches, this.type);

  /// Creates a fallback rule that never matches.
  ///
  /// Used as the final fallback when no other rules match.
  const _AndroidRule.fallback(this.type) : matches = _never;

  /// Creates a rule that matches based on Android system feature.
  ///
  /// Example: `_AndroidRule.feature('android.hardware.type.watch', DeviceType.watch)`
  factory _AndroidRule.feature(String feature, DeviceType type) {
    return _AndroidRule((info) => info.systemFeatures.contains(feature), type);
  }

  /// Creates a rule that matches tablets based on model name.
  ///
  /// Checks if the model name contains "tablet" or "tab" (case-insensitive).
  factory _AndroidRule.tablet(DeviceType type) {
    return _AndroidRule((info) {
      final model = info.model.toLowerCase();
      return model.contains('tablet') || model.contains('tab');
    }, type);
  }

  static bool _never(_) => false;
}

/// Rule-based matcher for iOS device type detection.
///
/// Encapsulates a matching predicate and the device type it represents.
/// Supports multiple matching strategies:
/// - **Machine-based**: Checks machine identifier prefix (e.g., "iPhone", "iPad", "Watch")
/// - **Model-based**: Checks device model name for keywords (case-insensitive)
/// - **Fallback**: Always returns false, used as default when no rules match
class _IosRule {
  final DeviceType type;
  final bool Function(IosDeviceInfo) matches;

  const _IosRule(this.matches, this.type);

  /// Creates a fallback rule that never matches.
  ///
  /// Used as the final fallback when no other rules match.
  const _IosRule.fallback(this.type) : matches = _never;

  /// Creates a rule that matches based on machine identifier prefix.
  ///
  /// The machine identifier (e.g., "iPhone17,5", "iPad8,1") provides the most
  /// reliable device type detection on iOS.
  ///
  /// Example: `_IosRule.machine('iPhone', DeviceType.mobile)`
  factory _IosRule.machine(String prefix, DeviceType type) {
    return _IosRule((info) => info.utsname.machine.startsWith(prefix), type);
  }

  /// Creates a rule that matches based on model name keyword.
  ///
  /// Used as a fallback when machine identifier doesn't match expected patterns.
  ///
  /// Example: `_IosRule.model('ipad', DeviceType.tablet)`
  factory _IosRule.model(String keyword, DeviceType type) {
    return _IosRule((info) => info.model.toLowerCase().contains(keyword), type);
  }

  static bool _never(_) => false;
}

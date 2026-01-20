import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/device.type.enum.dart' show DeviceType;
import '../../enums/platform.type.enum.dart' show PlatformType;

part 'device.info.entity.freezed.dart';

/// Device information entity.
///
/// Contains device type, platform, user agent string.
/// This entity is used to identify the device and platform across the application.
@freezed
abstract class DeviceInfoEntity with _$DeviceInfoEntity {
  const factory DeviceInfoEntity({
    required DeviceType deviceType,
    required PlatformType platformType,
    required String userAgent,
  }) = _DeviceInfoEntity;
}

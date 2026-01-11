import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/domain/failures/failure.dart' show Failure;

/// Repository port for device operations.
///
/// Defines the contract for managing device-specific data including
/// device ID generation and storage.
abstract class IDeviceRepository {
  /// Initializes device ID if not already set.
  ///
  /// Checks if a device ID exists. If not, generates a new UUID v4
  /// and stores it securely. Returns the device ID (existing or newly created).
  ///
  /// **Returns:** [Right] with device ID string on success,
  /// or [Left] with [Failure] if initialization fails.
  Future<Either<Failure, String>> initializeDevice();
}

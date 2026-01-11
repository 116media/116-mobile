import 'package:fpdart/fpdart.dart' show Either;

import '../../../../shared/application/usecases/usecase.port.dart' show IUseCase;
import '../../../../shared/domain/failures/failure.dart' show Failure;
import '../repositories/device.repository.port.dart' show IDeviceRepository;

/// Use case for initializing device ID on app startup.
///
/// **Flow:**
/// 1. Check if device ID exists in secure storage
/// 2. If exists, return success (device already initialized)
/// 3. If not exists, generate new UUID v4
/// 4. Store UUID in secure storage
/// 5. Return success with device ID
class InitializeDeviceUseCase implements IUseCase<void, String> {
  final IDeviceRepository _deviceRepository;

  const InitializeDeviceUseCase(this._deviceRepository);

  @override
  Future<Either<Failure, String>> execute(void _) async {
    return await _deviceRepository.initializeDevice();
  }
}
